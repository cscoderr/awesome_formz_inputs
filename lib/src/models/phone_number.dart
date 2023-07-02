import 'package:formz/formz.dart';

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
enum PhoneNumberValidationError {
  /// {@macro awesome_formz_inputs}
  invalid
}

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  /// {@macro awesome_formz_inputs}
  const PhoneNumber.pure() : super.pure('');

  /// {@macro awesome_formz_inputs}
  const PhoneNumber.dirty([super.value = '']) : super.dirty();

  static final RegExp _phoneNumberRegExp = RegExp(
    r'^[0-9]{10}$',
  );

  @override
  PhoneNumberValidationError? validator(String value) {
    return _phoneNumberRegExp.hasMatch(value)
        ? null
        : PhoneNumberValidationError.invalid;
  }
}
