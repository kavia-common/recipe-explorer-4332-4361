import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_frontend/main.dart';

void main() {
  testWidgets('RecipeExplorerApp renders without error', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeExplorerApp());
    // Expect to find navigation widgets or Home text after initial load
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.textContaining('Hello'), findsWidgets);
  });

  testWidgets('TabBar shows Home label', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeExplorerApp());
    expect(find.text('Home'), findsWidgets);
  });
}
