# timer

   // Equatable 없이 비교할 경우
   TimerState(5) == TimerState(5) // false (다른 객체로 인식)
   
   // Equatable 사용 시
   TimerState(5) == TimerState(5) // true (duration 값이 같으므로 같은 상태로 인식)