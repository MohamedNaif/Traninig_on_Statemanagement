import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_hidepass_state.dart';

class ShowHidepassCubit extends Cubit<ShowHidepassState> {
  ShowHidepassCubit() : super(ShowHidepassInitial());

  bool passObscure = true;

  showHidePassWord() {
    passObscure = !passObscure;

    emit(ShowHidepassInitial());
  }
}
