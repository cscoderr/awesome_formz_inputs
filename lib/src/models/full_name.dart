import 'package:formz/formz.dart';

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
enum FullNameValidationError {
  /// {@macro awesome_formz_inputs}
  empty
}

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class FullName extends FormzInput<String, FullNameValidationError> {
  /// {@macro awesome_formz_inputs}
  const FullName.pure() : super.pure('');

  /// {@macro awesome_formz_inputs}
  const FullName.dirty([super.value = '']) : super.dirty();

  @override
  FullNameValidationError? validator(String value) {
    return value.isEmpty ? FullNameValidationError.empty : null;
  }
}
