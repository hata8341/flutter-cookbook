import 'package:test/test.dart';
import 'package:cookbook/counter-test/counter.dart';

void main() {
  group('Counter', () {
    test('スタートの値は0です', () {
      expect(Counter().value, 0);
    });

    test('値は+1されます', () {
      final counter = Counter();
      counter.increment();

      expect(counter.value, 1);
    });

    test('値は-1されます', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
