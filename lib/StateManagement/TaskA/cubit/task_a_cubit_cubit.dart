import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task_a_cubit_state.dart';

class TaskACubitCubit extends Cubit<TaskACubitState> {
  TaskACubitCubit() : super(FastFilterBatUpdated());

  int index = 0;

  void selectFilterBAr(int currentIndex) {
    index = currentIndex;

    emit(FastFilterBatUpdated());
  }
}
