import 'package:flutter_application/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoint = 0;
  int teamBPoint = 0;

  CounterCubit() : super(IncrementCounterAState());

  void TeamsIncrement({required String team, required int buutonNumber}) {
    if (team == 'A' || team == 'a') {
      teamAPoint += buutonNumber;
      emit(IncrementCounterAState());
    } else if (team == 'B' || team == 'b') {
      teamBPoint += buutonNumber;
      emit(IncrementCounterBState());
    } else if (team == 'r' || team == 'R') {
      teamAPoint = 0;
      teamBPoint = 0;
      emit(ResetState());
    }
  }
}
