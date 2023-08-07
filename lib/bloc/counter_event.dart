// part of 'counter_bloc.dart';

// class CounterEvent {}

// class CountIncrement extends CounterEvent {}

// class CountDecrement extends CounterEvent {}

import 'package:equatable/equatable.dart';

// ignore: camel_case_types
class Counter_Event extends Equatable {
  const Counter_Event();
  @override
  List<Object> get props => [];
}

// ignore: camel_case_types
class Counter_Major extends Counter_Event {}

// ignore: camel_case_types
class Counter_Minor extends Counter_Event {}
