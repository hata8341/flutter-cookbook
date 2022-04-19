import 'package:cookbook/List-test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('カウンターアップテスト', (WidgetTester tester) async {
    await tester.pumpWidget(
        MyApp(items: List<String>.generate(10000, (index) => "Item $index")));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('item_50_text'));

    await tester.scrollUntilVisible(itemFinder, 500.0, scrollable: listFinder);

    expect(itemFinder, findsOneWidget);
  });
}
