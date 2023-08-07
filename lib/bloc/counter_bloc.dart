// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'counter_event.dart';
// part 'counter_state.dart';

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterState()) {
//     on<CountIncrement>(
//       (event, emit) {
//         emit(state.copyWith(count: state.count++));
//       },
//     );
//     on<CountDecrement>(
//       ((event, emit) {
//         emit(state.copyWith(count: state.count--));
//       }),
//     );
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblock_3/bloc/counter_event.dart';
import 'package:flutterblock_3/bloc/counter_state.dart';

class CounterBloc extends Bloc<Counter_Event, Counter_State> {
  CounterBloc()
      : super(Counter_State(
          count: 'Are You 18 plus ?',
        )) {
    on<Counter_Major>(
      (event, emit) {
        emit(Counter_State(
          count: " You are major",
        ));
        print("You Clicked on ${state.count}");
      },
    );
    on<Counter_Minor>(
      (event, emit) {
        emit(Counter_State(count: "You are Minor"));
        print("You Clicked on ${state.count}");
      },
    );
  }
}
