// import 'package:flutter_test/flutter_test.dart';
// import 'package:neurosync/features/preparing/screens/test_pointing_components.dart';

// void main() {
//   testWidgets("Testing button click", (WidgetTester widgetTester) async {
//     // Build the widget tree
//     await widgetTester.pumpWidget(const NavigationSystem());
// // find: This is a function provided by
// // the Flutter testing library that allows you to
// //locate widgets in the widget tree during testing.
// // text("Click Me"): This is a specific type of finder provided by the testing library.
// // It looks for a widget that has the specified text content.
//     // Find the button
//     // So, when you use find.text("Click Me"), it will return a finder
//     // that locates the widget in your widget tree that has the text "Click Me."
//     // This is useful in testing to ensure that the expected widgets are present in your UI.
//     final buttonFinder = find.text("Click Me");
//     expect(buttonFinder, findsOneWidget);

//     // Tap the button
//     await widgetTester.tap(buttonFinder);
//     await widgetTester.pump();

// //==========================
// // A unit test :  tests a single function, method, or class. The goal of a unit test is to verify the correctness of a unit of logic under a variety of conditions.
// ///////////////====/////////
// ///An integration test tests a complete app or a large part of an app. The goal of an integration test is
// /// to verify that all the widgets and services being tested work together as expected. 
// /// Furthermore, you can use integration tests to verify your app’s performance.
// //mockito 5.4.4 unit test with apies with data comes from api
//     // Verify that the button click triggered the desired action or navigation
//     // Add your specific verification logic here

//     // Example: Verify that a new widget/page is pushed onto the screen
//     // expect(find.byType(NextPage), findsOneWidget);

//     // Example: Verify that a specific widget is present after the button click
//     // expect(find.text("Button Clicked"), findsOneWidget);
//   });

// // testWidgets("Testing initial state of MyHomePage", (WidgetTester widgetTester) async {
// //   // Build the widget tree
// //   await widgetTester.pumpWidget(const MyHomePage());

// //   // Verify the initial state of the widget
// //   expect(find.text("Initial Text"), findsOneWidget);
// //   expect(find.text("Another Widget"), findsNothing);
// // });

// // testWidgets("Testing widget after some action", (WidgetTester widgetTester) async {
// //   // Build the widget tree
// //   await widgetTester.pumpWidget(const MyHomePage());

// //   // Perform some action on the widget (e.g., interact with another button)
// //   final anotherButtonFinder = find.text("Another Button");
// //   await widgetTester.tap(anotherButtonFinder);
// //   await widgetTester.pump();

// //   // Verify the state of the widget after the action
// //   expect(find.text("Updated Text"), findsOneWidget);
// // });
// }
