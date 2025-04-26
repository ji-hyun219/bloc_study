# counter

Bloc과의 차이점
- Bloc은 이벤트(Event)를 통해 상태 변경을 처리하지만, Cubit은 메서드를 직접 호출

---
### bloc: _cubit 과 create: (context) => CounterCubit()
- create: 새로운 Cubit 생성 + 자동 생명주기 관리   
- bloc: 기존 Cubit 사용 + 수동 생명주기 관리

