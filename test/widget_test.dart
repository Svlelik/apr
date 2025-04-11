// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  double calculateScrollEffect(double scroll) {
    const double maxScroll = 50;

    if (scroll <= 0) {
      return 0;
    } else if (scroll <= maxScroll) {
      return scroll / maxScroll;
    } else {
      return 1;
    }
  }

  test('Test calculateScrollEffect', () {
    expect(calculateScrollEffect(0), equals(0.0));
    expect(calculateScrollEffect(25), equals(0.5));
    expect(calculateScrollEffect(50), equals(1.0));
    expect(calculateScrollEffect(75), equals(1.0));
    expect(calculateScrollEffect(100), equals(1.0));
  });
}
