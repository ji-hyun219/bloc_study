// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:timer/main.dart';
// import 'package:timer/ticker.dart';
// import 'package:timer/timer/bloc/timer_bloc.dart';
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const App());

//     await tester.tap(find.byType(ElevatedButton));
//     await tester.pump();

//     expect(find.text('20'), findsOneWidget);
    
//   });

//   test('TimerBloc should emit correct events', () async {
//     // 1. MockTicker 클래스 정의
//     class MockTicker extends Ticker {
//       @override
//       Stream<int> tick({required int ticks}) {
//         // 즉시 값을 반환하는 Stream 생성
//         return Stream.fromIterable(List.generate(ticks, (i) => ticks - i - 1));
//       }
//     }

//     // 2. MockTicker 사용
//     final mockTicker = MockTicker();
//     final bloc = TimerBloc(ticker: mockTicker);

//     // 3. 이벤트 추가 및 상태 확인
//     bloc.add(TimerStarted(duration: 60));
    
//     // 4. 상태 변화 확인
//     await expectLater(
//       bloc.stream,
//       emitsInOrder([
//         TimerRunInProgress(60),
//         TimerRunInProgress(59),
//         // ... 필요한 만큼 상태 확인
//       ]),
//     );
//   });
// }
