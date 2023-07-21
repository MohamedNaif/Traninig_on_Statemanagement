import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'traniningstatemanagement_state.dart';

class TraniningstatemanagementCubit
    extends Cubit<TraniningstatemanagementState> {
  TraniningstatemanagementCubit() : super(TraniningstatemanagementInitial());

  void onTapInit() {
    emit(TraniningstatemanagementIn());
  }

  void onTapIn() {
    emit(TraniningstatemanagementInitial());
  }

  void onTapHold() {
    emit(TraniningstatemanagementHold());
  }

  void onTapComment() {
    emit(TraniningstatemanagementComment());
  }
}
