// CounterEvent의 모든 가능한 이벤트를 정의
sealed class CounterEvent {}

// 증가 이벤트
class IncrementCounter extends CounterEvent {}

// 감소 이벤트
class DecrementCounter extends CounterEvent {}

// 리셋 이벤트
class ResetCounter extends CounterEvent {}

// 사용 예시
void handleCounterEvent(CounterEvent event) {
  switch (event) {
    case IncrementCounter():
    // 증가 로직
    case DecrementCounter():
    // 감소 로직
    case ResetCounter():
    // 리셋 로직
  }
}
