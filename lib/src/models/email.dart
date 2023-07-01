import 'package:formz/formz.dart';

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
enum EmailValidationError { invalid }

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class EmailInput extends FormzInput<String, EmailValidationError> {
  /// {@macro awesome_formz_inputs}
  const EmailInput.pure() : super.pure('');

  /// {@macro awesome_formz_inputs}
  const EmailInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}
