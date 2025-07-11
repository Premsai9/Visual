import 'package:collection/collection.dart';
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum SwitchSize {
  small,
  medium,
  large,
}

enum AlertType {
  common,
  warning,
  success,
  error,
}

enum ButtonSize {
  small,
  medium,
}

enum ButtonType {
  primary,
  secondary,
  outline,
}

enum IconPosition {
  leading,
  trailing,
}

enum InputGroupType {
  input,
  textarea,
}

enum ChipSize {
  small,
  large,
}

enum ChipType {
  solid,
  faded,
  outlined,
  dot,
}

enum PromptType {
  big,
  small,
  outline,
}

enum CounterType {
  common,
  rounded,
  outlined,
  separated,
}

enum CounterSize {
  small,
  medium,
  large,
}

enum ProgressbarSize {
  small,
  medium,
  large,
}

enum SliderSize {
  small,
  medium,
  large,
}

enum CheckboxType {
  common,
  rounded,
}

enum CheckboxSize {
  small,
  medium,
  large,
}

enum CodeBlockSize {
  small,
  medium,
  large,
}

enum CheckboxGroupType {
  vertical,
  horizontal,
}

enum RadioGroupType {
  vertical,
  horizontal,
}

enum SegmentedTabsType {
  common,
  underline,
  outline,
  simple,
}

enum TaskStatus {
  assigned,
  created,
  completed,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (SwitchSize):
      return SwitchSize.values.deserialize(value) as T?;
    case (AlertType):
      return AlertType.values.deserialize(value) as T?;
    case (ButtonSize):
      return ButtonSize.values.deserialize(value) as T?;
    case (ButtonType):
      return ButtonType.values.deserialize(value) as T?;
    case (IconPosition):
      return IconPosition.values.deserialize(value) as T?;
    case (InputGroupType):
      return InputGroupType.values.deserialize(value) as T?;
    case (ChipSize):
      return ChipSize.values.deserialize(value) as T?;
    case (ChipType):
      return ChipType.values.deserialize(value) as T?;
    case (PromptType):
      return PromptType.values.deserialize(value) as T?;
    case (CounterType):
      return CounterType.values.deserialize(value) as T?;
    case (CounterSize):
      return CounterSize.values.deserialize(value) as T?;
    case (ProgressbarSize):
      return ProgressbarSize.values.deserialize(value) as T?;
    case (SliderSize):
      return SliderSize.values.deserialize(value) as T?;
    case (CheckboxType):
      return CheckboxType.values.deserialize(value) as T?;
    case (CheckboxSize):
      return CheckboxSize.values.deserialize(value) as T?;
    case (CodeBlockSize):
      return CodeBlockSize.values.deserialize(value) as T?;
    case (CheckboxGroupType):
      return CheckboxGroupType.values.deserialize(value) as T?;
    case (RadioGroupType):
      return RadioGroupType.values.deserialize(value) as T?;
    case (SegmentedTabsType):
      return SegmentedTabsType.values.deserialize(value) as T?;
    case (TaskStatus):
      return TaskStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
