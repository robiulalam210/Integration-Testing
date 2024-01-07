import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:intrgression_test_reversi/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'reversi',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      var testedit = find.byType(TextField);
      await tester.enterText(testedit, "Hello");
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(MaterialButton));



      // await tester.pump();

      // expect("olleH", findsNothing);


    },
  );
}
