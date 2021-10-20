import 'package:get/get.dart';
import 'Str.dart';

class Validator {
  Map<String, String> errors = {};
  final String field;
  final String value;

  Validator(this.field, this.value);

  /// Required rule
  Validator required() {
    if (GetUtils.isLengthLessOrEqual(value, 0)) {
      errors.assign("$field", "${Str.ucFirst(field)} is required");
    }
    return this;
  }

  /// Email rule
  Validator email() {
    if (!GetUtils.isEmail(value)) {
      errors.assign("$field", "${Str.ucFirst(field)} needs to be an email!");
    }
    return this;
  }

  /// Number rule
  Validator number() {
    if (!GetUtils.isNull(value)) {
      errors.assign("$field", "${Str.ucFirst(field)} needs to be a number!");
    }
    return this;
  }

  /// Min character rule
  Validator min(int minLength) {
    if (value.length < minLength) {
      errors.assign(
          "$field", "${Str.ucFirst(field)} must be $minLength character!");
    }
    return this;
  }

  /// Max character rule
  Validator max(int maxLength) {
    if (GetUtils.isLengthGreaterThan(value, maxLength)) {
      errors.assign("$field",
          "${Str.ucFirst(field)} must be less than or equal to $maxLength character!");
    }
    return this;
  }

  /// Characters length is between given rule
  Validator between(int minLength, int maxLength) {
    if (!GetUtils.isLengthBetween(value, minLength, maxLength)) {
      errors.assign("$field",
          "${Str.ucFirst(field)} must be between $minLength and $maxLength character!");
    }
    return this;
  }

  /// Validate the string
  String? validate() {
    return errors["$field"];
  }
}
