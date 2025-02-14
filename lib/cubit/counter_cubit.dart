import 'package:fake_store/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);

  int teamApoints = 0;
  int teamBpoints = 0;

  void addPoint({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAIncrement());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBIncrement());
    }
  }

  void reset() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterReset());
  }
}
