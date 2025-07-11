import "package:bento_design_system_mtd4px/backend/schema/enums/enums.dart"
    as bento_design_system_mtd4px_enums;
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (bento_design_system_mtd4px_enums.SwitchSize):
      return bento_design_system_mtd4px_enums.SwitchSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.AlertType):
      return bento_design_system_mtd4px_enums.AlertType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.ButtonSize):
      return bento_design_system_mtd4px_enums.ButtonSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.ButtonType):
      return bento_design_system_mtd4px_enums.ButtonType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.IconPosition):
      return bento_design_system_mtd4px_enums.IconPosition.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.InputGroupType):
      return bento_design_system_mtd4px_enums.InputGroupType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.ChipSize):
      return bento_design_system_mtd4px_enums.ChipSize.values.deserialize(value)
          as T?;
    case (bento_design_system_mtd4px_enums.ChipType):
      return bento_design_system_mtd4px_enums.ChipType.values.deserialize(value)
          as T?;
    case (bento_design_system_mtd4px_enums.PromptType):
      return bento_design_system_mtd4px_enums.PromptType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.CounterType):
      return bento_design_system_mtd4px_enums.CounterType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.CounterSize):
      return bento_design_system_mtd4px_enums.CounterSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.ProgressbarSize):
      return bento_design_system_mtd4px_enums.ProgressbarSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.SliderSize):
      return bento_design_system_mtd4px_enums.SliderSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.CheckboxType):
      return bento_design_system_mtd4px_enums.CheckboxType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.CheckboxSize):
      return bento_design_system_mtd4px_enums.CheckboxSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.CodeBlockSize):
      return bento_design_system_mtd4px_enums.CodeBlockSize.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.CheckboxGroupType):
      return bento_design_system_mtd4px_enums.CheckboxGroupType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.RadioGroupType):
      return bento_design_system_mtd4px_enums.RadioGroupType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.SegmentedTabsType):
      return bento_design_system_mtd4px_enums.SegmentedTabsType.values
          .deserialize(value) as T?;
    case (bento_design_system_mtd4px_enums.TaskStatus):
      return bento_design_system_mtd4px_enums.TaskStatus.values
          .deserialize(value) as T?;
    default:
      return null;
  }
}
