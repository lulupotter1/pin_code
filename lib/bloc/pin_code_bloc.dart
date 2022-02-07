import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pin_code_event.dart';
part 'pin_code_state.dart';

class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  PinCodeBloc() : super(PinCodeInitial());
  @override
  PinCodeState get initialState => PinCodeInitial();

  @override
  Stream<PinCodeState> mapEventToState(PinCodeEvent event) async* {
    if (event is PinCodeAdd) {
      yield PinCodeChanged(pinCodeLength: event.pinCodeLength + 1);
    }
    if (event is PinCodeRemove) {
      yield PinCodeChanged(pinCodeLength: event.pinCodeLength - 1);
    }
  }
}
