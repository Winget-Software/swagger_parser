import 'package:collection/collection.dart';
import 'package:swagger_parser/src/generator/model/programming_language.dart';
import 'package:swagger_parser/src/parser/model/normalized_identifier.dart';
import 'package:swagger_parser/src/parser/model/universal_collections.dart';
import 'package:swagger_parser/src/parser/swagger_parser_core.dart';
import 'package:swagger_parser/src/utils/base_utils.dart';
import 'package:swagger_parser/src/utils/type_utils.dart';

/// Provides template for generating dart DTO using freezed
String dartFreezedDtoTemplate(
  UniversalComponentClass dataClass, {
  required bool useMultipartFile,
  required bool includeIfNull,
  bool generateValidator = false,
  bool isV3 = false,
  bool useFlutterCompute = false,
  String? fallbackUnion,
}) {
  final className = dataClass.name.toPascal;
  final discriminator = dataClass.discriminator;
  final isUndiscriminatedUnion =
      dataClass.undiscriminatedUnionVariants?.isNotEmpty ?? false;
  final isUnion = discriminator != null || isUndiscriminatedUnion;
  final needsPresenceAwareSerialization = includeIfNull &&
      !isUnion &&
      _hasPresenceAwareFields(dataClass.parameters);
  final serializerClass =
      useFlutterCompute ? _generateFlutterComputeSerializer(className) : '';
  final asyncImport = useFlutterCompute ? "import 'dart:async';\n\n" : '';
  final freezedArgs = <String>[
    if (discriminator != null) "unionKey: '${discriminator.propertyName}'",
    if (discriminator != null &&
        fallbackUnion != null &&
        fallbackUnion.isNotEmpty)
      "fallbackUnion: '$fallbackUnion'",
    if (needsPresenceAwareSerialization) 'fromJson: false',
    if (needsPresenceAwareSerialization) 'toJson: false',
  ];

  return '''
$asyncImport${ioImport(dataClass.parameters, useMultipartFile: useMultipartFile)}import 'package:freezed_annotation/freezed_annotation.dart';
${isUndiscriminatedUnion ? "import 'package:json_annotation/json_annotation.dart';\n" : ''}${dartImports(imports: _filterUnionImportsForFreezed(dataClass))}
part '${dataClass.name.toSnake}.freezed.dart';
part '${dataClass.name.toSnake}.g.dart';

${descriptionComment(dataClass.description)}@Freezed(${freezedArgs.join(', ')})
${_classModifier(isUnion: isUnion, isV3: isV3)}class $className with _\$$className {
${needsPresenceAwareSerialization ? '  const $className._();\n\n' : ''}${_factories(dataClass, className, useMultipartFile, includeIfNull, fallbackUnion, isUnion: isUnion, includePresenceFlags: needsPresenceAwareSerialization)}
${_jsonFactories(className, dataClass.parameters, dataClass.undiscriminatedUnionVariants, needsPresenceAwareSerialization: needsPresenceAwareSerialization)}
${generateValidator ? dataClass.parameters.map(_validationString).nonNulls.join() : ''}}
${needsPresenceAwareSerialization ? '\n${_jsonHelperClassTemplate(className, dataClass.parameters, useMultipartFile, includeIfNull)}' : ''}${generateValidator ? _validateMethod(className, dataClass.parameters) : ''}$serializerClass''';
}

String _classModifier({required bool isUnion, required bool isV3}) {
  return switch ((isUnion, isV3)) {
    (true, _) => 'sealed ',
    (false, true) => 'abstract ',
    _ => '',
  };
}

String _validateMethod(String className, Set<UniversalType> types) {
  final bodyBuffer = StringBuffer();

  for (final type in types) {
    final staticName = '$className.${type.name}';
    final nullCheckCondition = type.nullable ? '${type.name} != null &&' : '';
    final typeName = type.nullable ? '${type.name}!' : type.name;

    if (type.min != null) {
      bodyBuffer
        ..write('try {\n')
        ..write('  if ($nullCheckCondition $typeName < ${staticName}Min) {\n')
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.max != null) {
      bodyBuffer
        ..write('try {\n')
        ..write('  if ($nullCheckCondition $typeName > ${staticName}Max) {\n')
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.minItems != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length < ${staticName}MinItems) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.maxItems != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length > ${staticName}MaxItems) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.minLength != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length < ${staticName}MinLength) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.maxLength != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length > ${staticName}MaxLength) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.pattern != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition !RegExp(${staticName}Pattern).hasMatch($typeName)) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.uniqueItems != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition ${staticName}UniqueItems && $typeName.toSet().length != $typeName.length) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }
  }

  if (bodyBuffer.isEmpty) {
    return '';
  }

  final funcBuffer = StringBuffer()
    ..write('extension ${className}ValidationX on $className {\n')
    ..write('bool validate() {\n')
    ..write(bodyBuffer)
    ..write('  return true;\n}\n')
    ..write('}\n');

  return funcBuffer.toString();
}

String _factories(
  UniversalComponentClass dataClass,
  String className,
  bool useMultipartFile,
  bool includeIfNull,
  String? fallbackUnion, {
  required bool isUnion,
  required bool includePresenceFlags,
}) {
  if (!isUnion) {
    return '''
  const factory $className(${dataClass.parameters.isNotEmpty ? '{' : ''}${_parametersToString(dataClass.parameters, useMultipartFile, includeIfNull, includePresenceFlags: includePresenceFlags)}${dataClass.parameters.isNotEmpty ? '\n  }' : ''}) = _$className;''';
  }

  if (dataClass.undiscriminatedUnionVariants case final variants?
      when variants.isNotEmpty) {
    return _createFactoriesForUndiscriminatedUnion(
      className,
      variants,
      useMultipartFile,
      includeIfNull,
    );
  }

  final factories = <String>[];
  for (final discriminatorValue
      in dataClass.discriminator!.discriminatorValueToRefMapping.keys) {
    final (protectedName, _) = protectName(discriminatorValue, isMethod: true);
    final factoryName = protectedName!.toCamel;
    final discriminatorRef = dataClass
        .discriminator!.discriminatorValueToRefMapping[discriminatorValue]!;
    final factoryParameters =
        dataClass.discriminator!.refProperties[discriminatorRef]!;
    final unionItemClassName = className + discriminatorValue.toPascal;

    factories.add('''
  @FreezedUnionValue('$discriminatorValue')
  const factory $className.$factoryName(${factoryParameters.isNotEmpty ? '{' : ''}${_parametersToString(factoryParameters, useMultipartFile, includeIfNull)}${factoryParameters.isNotEmpty ? '\n  }' : ''}) = $unionItemClassName;
''');
  }

  if (fallbackUnion != null && fallbackUnion.isNotEmpty) {
    final (protectedFallbackName, _) = protectName(
      fallbackUnion,
      isMethod: true,
    );
    final fallbackFactoryName = protectedFallbackName!.toCamel;
    final unionItemClassName = className + fallbackUnion.toPascal;
    factories.add('''
  const factory $className.$fallbackFactoryName() = $unionItemClassName;
''');
  }

  return factories.join('\n');
}

String _createFactoriesForUndiscriminatedUnion(
  String className,
  Map<String, Set<UniversalType>> variants,
  bool useMultipartFile,
  bool includeIfNull,
) {
  final factories = <String>[];
  for (final MapEntry(key: variantName, value: factoryParameters)
      in variants.entries) {
    final (protectedName, _) = protectName(variantName, isMethod: true);
    final factoryName = protectedName!.toCamel;
    final unionItemClassName = className + variantName.toPascal;
    factories.add('''
  @JsonSerializable()
  const factory $className.$factoryName(${factoryParameters.isNotEmpty ? '{' : ''}${_parametersToString(factoryParameters, useMultipartFile, includeIfNull)}${factoryParameters.isNotEmpty ? '\n  }' : ''}) = $unionItemClassName;
  ''');
  }
  return factories.join('\n');
}

String _jsonFactories(
  String className,
  Set<UniversalType> parameters,
  Map<String, Set<UniversalType>>? undiscriminatedUnionVariants, {
  required bool needsPresenceAwareSerialization,
}) {
  if (undiscriminatedUnionVariants case final unionVariants?
      when unionVariants.isNotEmpty) {
    return _fromJsonUndiscriminatedUnion(className);
  }

  if (needsPresenceAwareSerialization) {
    return _manualJsonFactories(className, parameters);
  }

  return '  \n  factory $className.fromJson(Map<String, Object?> json) => _\$${className}FromJson(json);';
}

String _manualJsonFactories(String className, Set<UniversalType> parameters) {
  final sortedParameters = _sortedParameters(parameters);
  final helperClassName = _jsonHelperClassName(className);
  final constructorAssignments = sortedParameters.map((parameter) {
    final buffer = StringBuffer()
      ..write('      ${parameter.name}: data.${parameter.name},');
    if (_needsPresenceFlag(parameter)) {
      buffer.write(
        '\n      ${_presenceFlagName(parameter)}: json.containsKey(\'${_jsonFieldKey(parameter)}\'),',
      );
    }
    return buffer.toString();
  }).join('\n');
  final helperAssignments = sortedParameters
      .map((parameter) => '      ${parameter.name}: ${parameter.name},')
      .join('\n');
  final nullablePostProcessing = sortedParameters
      .where(_needsPresenceFlag)
      .map(
        (parameter) => '''
    if (${parameter.name} == null) {
      if (${_presenceFlagName(parameter)}) {
        json['${_jsonFieldKey(parameter)}'] = null;
      } else {
        json.remove('${_jsonFieldKey(parameter)}');
      }
    }''',
      )
      .join('\n');

  return '''

  factory $className.fromJson(Map<String, Object?> json) {
    final data = $helperClassName.fromJson(json);
    return $className(
$constructorAssignments
    );
  }

  Map<String, Object?> toJson() {
    final json = $helperClassName(
$helperAssignments
    ).toJson();
$nullablePostProcessing
    return json;
  }''';
}

String _fromJsonUndiscriminatedUnion(String className) => '''

  factory $className.fromJson(Map<String, Object?> json) =>
      // TODO: No discriminator in OpenAPI spec - you must implement this manually.
      //
      // Inspect the JSON and return the matching variant. Each variant has a fromJson:
      //   ${className}VariantName.fromJson(json)
      //
      // Example pattern (check for unique fields):
      //   json.containsKey('uniqueFieldA') ? ${className}TypeA.fromJson(json) :
      //   json.containsKey('uniqueFieldB') ? ${className}TypeB.fromJson(json) :
      //   ${className}Default.fromJson(json);
      //
      // IMPORTANT: Keep the => arrow syntax. Converting to a { } body will cause
      // freezed to skip generating toJson/fromJson for this class.
      throw UnimplementedError();
''';

String _jsonHelperClassTemplate(
  String className,
  Set<UniversalType> parameters,
  bool useMultipartFile,
  bool includeIfNull,
) {
  final helperClassName = _jsonHelperClassName(className);

  return '''
@JsonSerializable()
class $helperClassName {
  const $helperClassName(${parameters.isNotEmpty ? '{' : ''}${_jsonHelperConstructorParameters(parameters)}${parameters.isNotEmpty ? '\n  }' : ''});

  factory $helperClassName.fromJson(Map<String, Object?> json) => _\$${helperClassName.substring(1)}FromJson(json);
${_jsonHelperFields(parameters, useMultipartFile, includeIfNull)}${parameters.isNotEmpty ? '\n' : ''}
  Map<String, Object?> toJson() => _\$${helperClassName.substring(1)}ToJson(this);
}
''';
}

String? _validationString(UniversalType type) {
  final sb = StringBuffer();
  if (type.min != null) {
    final numType = type.type == 'integer' ? int : double;
    final min = numType == int ? type.min?.toInt() : type.min;
    sb.write('  static const $numType ${type.name}Min = $min;\n');
  }

  if (type.max != null) {
    final numType = type.type == 'integer' ? int : double;
    final max = numType == int ? type.max?.toInt() : type.max;
    sb.write('  static const $numType ${type.name}Max = $max;\n');
  }

  if (type.minItems != null) {
    sb.write('  static const int ${type.name}MinItems = ${type.minItems};\n');
  }

  if (type.maxItems != null) {
    sb.write('  static const int ${type.name}MaxItems = ${type.maxItems};\n');
  }

  if (type.minLength != null) {
    sb.write('  static const int ${type.name}MinLength = ${type.minLength};\n');
  }

  if (type.maxLength != null) {
    sb.write('  static const int ${type.name}MaxLength = ${type.maxLength};\n');
  }

  if (type.pattern != null) {
    sb.write(
      '  static const String ${type.name}Pattern = r"${type.pattern}";\n',
    );
  }

  if (type.uniqueItems != null) {
    sb.write(
      '  static const bool ${type.name}UniqueItems = ${type.uniqueItems};\n',
    );
  }

  return sb.isEmpty ? null : sb.toString();
}

List<UniversalType> _sortedParameters(Set<UniversalType> parameters) =>
    parameters.sorted((a, b) => a.compareTo(b));

String _parametersToString(
  Set<UniversalType> parameters,
  bool useMultipartFile,
  bool includeIfNull, {
  bool includePresenceFlags = false,
}) {
  return _sortedParameters(parameters)
      .mapIndexed(
        (i, parameter) =>
            '\n${i != 0 && (parameter.description?.isNotEmpty ?? false) ? '\n' : ''}${descriptionComment(parameter.description, tab: '    ')}'
            '${_jsonKey(parameter, includeIfNull)}    ${_required(parameter)}'
            '${parameter.toSuitableType(ProgrammingLanguage.dart, useMultipartFile: useMultipartFile)} ${parameter.name},'
            '${includePresenceFlags && _needsPresenceFlag(parameter) ? _presenceFlagParameter(parameter) : ''}',
      )
      .join();
}

String _presenceFlagParameter(UniversalType parameter) => '\n'
    '    @JsonKey(includeFromJson: false, includeToJson: false)\n'
    '    @Default(false)\n'
    '    bool ${_presenceFlagName(parameter)},';

String _jsonHelperConstructorParameters(
  Set<UniversalType> parameters,
) =>
    _sortedParameters(parameters)
        .map(
          (parameter) =>
              '\n    ${_required(parameter)}this.${parameter.name}${_helperDefaultValue(parameter)},',
        )
        .join();

String _jsonHelperFields(
  Set<UniversalType> parameters,
  bool useMultipartFile,
  bool includeIfNull,
) {
  return _sortedParameters(parameters)
      .mapIndexed(
        (i, parameter) =>
            '\n${i != 0 && (parameter.description?.isNotEmpty ?? false) ? '\n' : ''}${descriptionComment(parameter.description, tab: '  ')}'
            '${_jsonHelperFieldAnnotations(parameter, includeIfNull)}  final ${parameter.toSuitableType(ProgrammingLanguage.dart, useMultipartFile: useMultipartFile)} ${parameter.name};',
      )
      .join();
}

String _jsonHelperFieldAnnotations(
  UniversalType parameter,
  bool includeIfNull,
) {
  final buffer = StringBuffer();
  final jsonKeyParams = <String, String?>{};

  if (includeIfNull) {
    if (parameter.isRequired && _isNullableField(parameter)) {
      jsonKeyParams['includeIfNull'] = 'true';
    } else if (!parameter.isRequired && _isNullableField(parameter)) {
      jsonKeyParams['includeIfNull'] = 'false';
    }
  }

  if (parameter.jsonKey != null && parameter.name != parameter.jsonKey) {
    jsonKeyParams['name'] = "'${protectJsonKey(parameter.jsonKey)}'";
  }

  if (jsonKeyParams.isNotEmpty) {
    buffer.write(
      "  @JsonKey(${jsonKeyParams.entries.map((entry) => '${entry.key}: ${entry.value}').join(',')})\n",
    );
  }

  if (parameter.deprecated) {
    buffer.write("  @Deprecated('This is marked as deprecated')\n");
  }

  return buffer.toString();
}

String _jsonKey(UniversalType type, bool includeIfNull) {
  final sb = StringBuffer();
  final jsonKeyParams = <String, String?>{};

  if (includeIfNull) {
    if (type.isRequired && _isNullableField(type)) {
      jsonKeyParams['includeIfNull'] = 'true';
    } else if (!type.isRequired && _isNullableField(type)) {
      jsonKeyParams['includeIfNull'] = 'false';
    }
  }

  if (type.jsonKey != null && type.name != type.jsonKey) {
    jsonKeyParams['name'] = "'${protectJsonKey(type.jsonKey)}'";
  }

  if (jsonKeyParams.isNotEmpty) {
    sb.write(
      "    @JsonKey(${jsonKeyParams.entries.map((entry) => '${entry.key}: ${entry.value}').join(',')})\n",
    );
  }

  if (type.defaultValue != null) {
    sb.write('    @Default(${_defaultValueLiteral(type)})\n');
  }

  if (type.deprecated) {
    sb.write("    @Deprecated('This is marked as deprecated')\n");
  }

  return sb.toString();
}

bool _hasPresenceAwareFields(Set<UniversalType> parameters) =>
    parameters.any(_needsPresenceFlag);

bool _needsPresenceFlag(UniversalType parameter) =>
    !parameter.isRequired && _isNullableField(parameter);

bool _isNullableField(UniversalType parameter) {
  if (parameter.wrappingCollections.isNotEmpty) {
    return switch (parameter.wrappingCollections.first) {
      UniversalCollections.nullableList ||
      UniversalCollections.nullableListNullableItem ||
      UniversalCollections.nullableMap ||
      UniversalCollections.nullableMapNullableValue =>
        true,
      _ => false,
    };
  }

  return parameter.nullable || parameter.referencedNullable;
}

String _presenceFlagName(UniversalType parameter) => '${parameter.name}Present';

String _jsonFieldKey(UniversalType parameter) =>
    protectJsonKey(parameter.jsonKey ?? parameter.name)!;

String _jsonHelperClassName(String className) => '_${className}Json';

/// return required if isRequired
String _required(UniversalType type) =>
    type.isRequired && type.defaultValue == null ? 'required ' : '';

/// return defaultValue if have
String _defaultValueLiteral(UniversalType type) =>
    '${type.enumType != null ? '${type.type}.${protectDefaultEnum(type.defaultValue)?.toCamel}' : protectDefaultValue(type.defaultValue, type: type.type)}';

String _helperDefaultValue(UniversalType type) => type.defaultValue != null
    ? ' = ${type.wrappingCollections.isNotEmpty ? 'const ' : ''}${_defaultValueLiteral(type)}'
    : '';

/// Generates top-level serialization functions for Flutter compute isolate support.
/// These functions follow Retrofit's naming convention for Parser.FlutterCompute.
String _generateFlutterComputeSerializer(String className) {
  return '''

// Flutter compute serialization functions for $className
FutureOr<$className> deserialize$className(Map<String, dynamic> json) =>
    $className.fromJson(json);

FutureOr<List<$className>> deserialize${className}List(List<Map<String, dynamic>> json) =>
    json.map((e) => $className.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serialize$className($className? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serialize${className}List(List<$className>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
''';
}

/// Filters out union imports for freezed classes to avoid circular dependencies
Set<String> _filterUnionImportsForFreezed(UniversalComponentClass dataClass) {
  final filteredImports = <String>{};

  // If this class has a discriminatorValue, it means it's part of a union and
  // shouldn't import the union file (to avoid circular dependencies)
  final shouldFilterUnionImports = dataClass.discriminatorValue != null;

  for (final import in dataClass.imports) {
    // If this is a model that's part of a union, skip union imports
    // Otherwise, allow all imports (including union imports for classes that use unions)
    final shouldSkip =
        shouldFilterUnionImports && import.toLowerCase().contains('union');

    if (!shouldSkip) {
      filteredImports.add(import);
    }
  }

  return filteredImports;
}
