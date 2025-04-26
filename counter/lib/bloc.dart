import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 이벤트 정의
sealed class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

// Bloc 클래스
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // on<IncrementEvent>((event, emit) {
    //   emit(state + 1);
    // });
    // on<DecrementEvent>((event, emit) {
    //   emit(state - 1);
    // });

    on<CounterEvent>((event, emit) {
      switch (event) {
        case IncrementEvent():
          addError(Exception('increment error!'), StackTrace.current);
          emit(state + 1);
        case DecrementEvent():
          emit(state - 1);
      }
    });
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print("onTransition: $transition");
  }

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    print("onEvent: $event");
  }
}

// 사용 예시 (UI)
class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        body: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count: $count'),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementEvent());
                  },
                  child: Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementEvent());
                  },
                  child: Text('Decrement'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
