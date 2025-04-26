import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() {
    addError(Exception('increment error!'), StackTrace.current);
    emit(state + 1);
  }

  void decrement() => emit(state - 1);

  // @override
  // void onChange(Change<int> change) {
  //   super.onChange(change);
  //   debugPrint('onChange: $change');
  // }

  // @override
  // void onError(Object error, StackTrace stackTrace) {
  //   super.onError(error, stackTrace);
  //   debugPrint('onError: $error');
  // }
}

// 사용 예시 (UI)
class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubitA = CounterCubit(0);

    return BlocProvider(
      create: (context) => cubitA,
      child: Scaffold(
        body: BlocBuilder<CounterCubit, int>(
          builder: (context, count) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count: $count'),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  child: Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
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
