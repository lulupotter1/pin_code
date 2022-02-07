part of 'pin_code_bloc.dart';

@immutable
abstract class PinCodeState {}

class PinCodeInitial extends PinCodeState {}

class PinCodeChanged extends PinCodeState {
  final int pinCodeLength;
  PinCodeChanged({required this.pinCodeLength});
}
