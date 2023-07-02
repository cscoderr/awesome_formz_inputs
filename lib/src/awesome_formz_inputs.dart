import 'package:formz/formz.dart';

/// {@template awesome_formz_inputs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class AwesomeFormzInputs {
  /// {@macro awesome_formz_inputs}
  const AwesomeFormzInputs();

  static bool validate(List<FormzInput<dynamic, dynamic>> inputs) {
    return inputs.every((input) => input.isValid);
  }

  static bool isPure(List<FormzInput<dynamic, dynamic>> inputs) {
    return inputs.every((input) => input.isPure);
  }
}
