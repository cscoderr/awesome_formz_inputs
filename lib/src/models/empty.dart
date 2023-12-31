import 'package:formz/formz.dart';

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
enum EmptyValidationError {
  /// {@macro awesome_formz_inputs}
  empty
}

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class Empty extends FormzInput<String, EmptyValidationError> {
  /// {@macro awesome_formz_inputs}
  const Empty.pure() : super.pure('');

  /// {@macro awesome_formz_inputs}
  const Empty.dirty([super.value = '']) : super.dirty();

  @override
  EmptyValidationError? validator(String value) {
    return value.isEmpty ? EmptyValidationError.empty : null;
  }
}
