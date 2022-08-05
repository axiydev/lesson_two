import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../bin/lesson_38/models/lesson_model.dart';

void main() {
  MockAvto? mock;
  setUp(() {
    mock = MockAvto();
  });
  tearDown(() {
    mock = null;
  });
  group('avto model uchun test', () {
    test('data model test 1', () {
      when(() => mock!.id).thenReturn(null);
      expect(mock!.id, null);
    });
    test('data model test 2', () {
      mock!.id = 'rttyuty4';
      when(() => mock!.id).thenReturn('rttyuty4');
      expect(mock!.id, 'rttyuty4');
    });
  });
}
