import 'package:swagger_parser/swagger_parser.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiParser requiredness', () {
    test(
      'keeps properties optional when required is absent and inference is disabled',
      () {
        final component = _parseComponent(
          _patchSchema('''
        title:
          type: string
        metadata:
          allOf:
            - \$ref: '#/components/schemas/NestedDto'
        enabled:
          type: boolean
          default: false
      '''),
        );

        final parameters = _parametersByName(component);

        expect(parameters['title']?.isRequired, isFalse);
        expect(parameters['metadata']?.isRequired, isFalse);
        expect(parameters['enabled']?.isRequired, isFalse);
      },
    );

    test(
      'infers required only from nullability when required is absent and inference is enabled',
      () {
        final component = _parseComponent(
          _patchSchema('''
        status:
          type: string
        recurringRuleData:
          nullable: true
          allOf:
            - \$ref: '#/components/schemas/NestedDto'
        notes:
          type: string
          nullable: true
      '''),
          inferRequiredFromNullable: true,
        );

        final parameters = _parametersByName(component);

        expect(parameters['status']?.isRequired, isTrue);
        expect(parameters['recurringRuleData']?.isRequired, isFalse);
        expect(parameters['notes']?.isRequired, isFalse);
      },
    );

    test('does not infer required when the schema has an explicit empty list',
        () {
      final component = _parseComponent(
        _patchSchema('''
      required: []
      properties:
        status:
          type: string
        metadata:
          allOf:
            - \$ref: '#/components/schemas/NestedDto'
      ''', includePropertiesWrapper: false),
        inferRequiredFromNullable: true,
      );

      final parameters = _parametersByName(component);

      expect(parameters['status']?.isRequired, isFalse);
      expect(parameters['metadata']?.isRequired, isFalse);
    });

    test('uses the explicit required array verbatim without extra promotion',
        () {
      final component = _parseComponent(
        _patchSchema('''
      required:
        - status
      properties:
        status:
          type: string
        title:
          type: string
        metadata:
          allOf:
            - \$ref: '#/components/schemas/NestedDto'
        enabled:
          type: boolean
          default: false
      ''', includePropertiesWrapper: false),
        inferRequiredFromNullable: true,
      );

      final parameters = _parametersByName(component);

      expect(parameters['status']?.isRequired, isTrue);
      expect(parameters['title']?.isRequired, isFalse);
      expect(parameters['metadata']?.isRequired, isFalse);
      expect(parameters['enabled']?.isRequired, isFalse);
    });
  });
}

UniversalComponentClass _parseComponent(
  String schema, {
  bool inferRequiredFromNullable = false,
}) {
  final parser = OpenApiParser(
    ParserConfig(
      schema,
      isJson: false,
      inferRequiredFromNullable: inferRequiredFromNullable,
    ),
  );

  return parser
      .parseDataClasses()
      .whereType<UniversalComponentClass>()
      .firstWhere((component) => component.name == 'PatchExample');
}

Map<String, UniversalType> _parametersByName(
    UniversalComponentClass component) {
  return {
    for (final parameter in component.parameters) parameter.name!: parameter
  };
}

String _patchSchema(
  String propertiesBlock, {
  bool includePropertiesWrapper = true,
}) {
  final body = includePropertiesWrapper
      ? '''
      properties:
$propertiesBlock
'''
      : propertiesBlock;

  return '''
openapi: 3.0.0
info:
  title: Patch Example
  version: 1.0.0
paths:
  /patch-example:
    patch:
      operationId: patchExample
      requestBody:
        required: true
        content:
          application/json:
            schema:
              \$ref: '#/components/schemas/PatchExample'
      responses:
        '200':
          description: ok
components:
  schemas:
    NestedDto:
      type: object
      properties:
        value:
          type: string
    PatchExample:
      type: object
$body
''';
}
