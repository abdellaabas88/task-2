// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:go_router/go_router.dart';
// import 'package:task_2/create_task.dart';
// import 'package:task_2/firstPage.dart';
// import 'package:task_2/todo_list.dart';

// GoRouter createTestRouter() {
//   return GoRouter(
//     initialLocation: '/',
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => const Firstpage(),
//       ),
//       GoRoute(
//         path: '/todo-list',
//         builder: (context, state) => const TodoList(
//           name: '',
//           date: '',
//           description: '',
//         ),
//       ),
//       GoRoute(
//         path: '/create-task',
//         builder: (context, state) => const CreateTask(null),
//       ),
//     ],
//   );
// }

// void main() {
//   testWidgets('Onboarding navigates to the task list', (tester) async {
//     await tester.pumpWidget(
//       MaterialApp.router(routerConfig: createTestRouter()),
//     );

//     expect(find.text('Get Started'), findsOneWidget);

//     await tester.tap(find.text('Get Started'));
//     await tester.pumpAndSettle();

//     expect(find.text('Todo List'), findsOneWidget);
//   });

//   testWidgets('Task list displays existing tasks', (tester) async {
//     final router = createTestRouter();
//     router.go('/todo-list');

//     await tester.pumpWidget(
//       MaterialApp.router(routerConfig: router),
//     );
//     await tester.pumpAndSettle();

//     expect(find.text('UI/UX App'), findsOneWidget);
//     expect(find.text('Abdes com'), findsOneWidget);
//     expect(find.text('Create task'), findsOneWidget);
//   });

//   testWidgets('User can create a task', (tester) async {
//     await tester.pumpWidget(
//       MaterialApp.router(routerConfig: createTestRouter()),
//     );

//     await tester.tap(find.text('Get Started'));
//     await tester.pumpAndSettle();

//     await tester.tap(find.text('Create task'));
//     await tester.pumpAndSettle();

//     final fields = find.byType(TextField);

//     await tester.enterText(fields.at(0), 'Study Flutter');
//     await tester.enterText(fields.at(1), 'September 10');
//     await tester.enterText(fields.at(2), 'Complete widget testing');

//     await tester.tap(find.text('Add task'));
//     await tester.pumpAndSettle();

//     expect(find.text('Study Flutter'), findsOneWidget);
//     expect(find.text('Complete widget testing'), findsOneWidget);
//   });
// }
