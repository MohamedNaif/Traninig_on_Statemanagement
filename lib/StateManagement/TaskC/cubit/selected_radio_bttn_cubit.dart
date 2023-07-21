import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_radio_bttn_state.dart';

class SelectedRadioBttnCubit extends Cubit<SelectedRadioBttnState> {
  SelectedRadioBttnCubit() : super(SelectedRadioBttnInitial());

  int initselect = 0;
  void newSelected(int whatISelected) {
    initselect = whatISelected;
    emit(SelectedRadioBttnInitial());
  }
}
