import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// Update 'tma3084_g02_104106' if your pubspec.yaml name is different
import 'package:lab_04/order_summary.dart'; 

void main() {
  testWidgets('Order Summary displays correct text and total (RM 25.00)', (WidgetTester tester) async {
    // Renders the OrderSummaryScreen in a testing environment
    await tester.pumpWidget(const MaterialApp(home: OrderSummaryScreen()));
    
    // Verifies that the required text elements are present on the screen
    expect(find.text('Item: Cheese Pizza'), findsOneWidget);
    expect(find.text('Quantity: 1'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
    expect(find.text('Back'), findsOneWidget);
  });
}