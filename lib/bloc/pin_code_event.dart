part of 'pin_code_bloc.dart';

@immutable
abstract class PinCodeEvent {}

class PinCodeAdd extends PinCodeEvent {
  final int pinCodeLength;

  PinCodeAdd({required this.pinCodeLength});
}

class PinCodeRemove extends PinCodeEvent {
  final int pinCodeLength;

  PinCodeRemove({required this.pinCodeLength});
}
