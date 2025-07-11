import '/backend/schema/enums/enums.dart';
import '/components_library/alert/alert_widget.dart';
import '/components_library/button/button_widget.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/components_library/checkbox_group/checkbox_group_widget.dart';
import '/components_library/chip/chip_widget.dart';
import '/components_library/code_block/code_block_widget.dart';
import '/components_library/counter/counter_widget.dart';
import '/components_library/feedback_loader/feedback_loader_widget.dart';
import '/components_library/file_upload_dialog/file_upload_dialog_widget.dart';
import '/components_library/icon_button/icon_button_widget.dart';
import '/components_library/input_group/input_group_widget.dart';
import '/components_library/progressbar/progressbar_widget.dart';
import '/components_library/prompt/prompt_widget.dart';
import '/components_library/radio_group/radio_group_widget.dart';
import '/components_library/searchable_dropdown/searchable_dropdown_widget.dart';
import '/components_library/segmented_tabs/segmented_tabs_widget.dart';
import '/components_library/select/select_widget.dart';
import '/components_library/slider/slider_widget.dart';
import '/components_library/sw_itch/sw_itch_widget.dart';
import '/components_library/text_blob/text_blob_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'components_page_widget.dart' show ComponentsPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentsPageModel extends FlutterFlowModel<ComponentsPageWidget> {
  ///  Local state fields for this page.

  List<String> tempOptions = [
    'Banana',
    'Apple',
    'Strawberry',
    'Pineapple',
    'Watermelon',
    'Cherry'
  ];
  void addToTempOptions(String item) => tempOptions.add(item);
  void removeFromTempOptions(String item) => tempOptions.remove(item);
  void removeAtIndexFromTempOptions(int index) => tempOptions.removeAt(index);
  void insertAtIndexInTempOptions(int index, String item) =>
      tempOptions.insert(index, item);
  void updateTempOptionsAtIndex(int index, Function(String) updateFn) =>
      tempOptions[index] = updateFn(tempOptions[index]);

  List<String> tempTabs = ['Animals', 'Cars', 'Flowers'];
  void addToTempTabs(String item) => tempTabs.add(item);
  void removeFromTempTabs(String item) => tempTabs.remove(item);
  void removeAtIndexFromTempTabs(int index) => tempTabs.removeAt(index);
  void insertAtIndexInTempTabs(int index, String item) =>
      tempTabs.insert(index, item);
  void updateTempTabsAtIndex(int index, Function(String) updateFn) =>
      tempTabs[index] = updateFn(tempTabs[index]);

  int activeTab = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Select component.
  late SelectModel selectModel;
  // Model for Slider component.
  late SliderModel sliderModel1;
  // Model for Slider component.
  late SliderModel sliderModel2;
  // Model for Slider component.
  late SliderModel sliderModel3;
  // Model for Checkbox component.
  late CheckboxModel checkboxModel1;
  // Model for Checkbox component.
  late CheckboxModel checkboxModel2;
  // Model for Checkbox component.
  late CheckboxModel checkboxModel3;
  // Model for CheckboxDisabled.
  late CheckboxModel checkboxDisabledModel1;
  // Model for Checkbox component.
  late CheckboxModel checkboxModel4;
  // Model for Checkbox component.
  late CheckboxModel checkboxModel5;
  // Model for Checkbox component.
  late CheckboxModel checkboxModel6;
  // Model for CheckboxDisabled.
  late CheckboxModel checkboxDisabledModel2;
  // Model for SwItch component.
  late SwItchModel swItchModel1;
  // Model for SwItch component.
  late SwItchModel swItchModel2;
  // Model for SwItch component.
  late SwItchModel swItchModel3;
  // Model for SwItch component.
  late SwItchModel swItchModel4;
  // Model for SwItch component.
  late SwItchModel swItchModel5;
  // Model for SwItch component.
  late SwItchModel swItchModel6;
  // Model for SwItch component.
  late SwItchModel swItchModel7;
  // Model for SwItch component.
  late SwItchModel swItchModel8;
  // Model for SwItch component.
  late SwItchModel swItchModel9;
  // Model for Alert component.
  late AlertModel alertModel1;
  // Model for Alert component.
  late AlertModel alertModel2;
  // Model for Alert component.
  late AlertModel alertModel3;
  // Model for Alert component.
  late AlertModel alertModel4;
  // Model for SearchableDropdown component.
  late SearchableDropdownModel searchableDropdownModel;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Model for Button component.
  late ButtonModel buttonModel3;
  // Model for Button component.
  late ButtonModel buttonModel4;
  // Model for Button component.
  late ButtonModel buttonModel5;
  // Model for IconButton component.
  late IconButtonModel iconButtonModel1;
  // Model for Button component.
  late ButtonModel buttonModel6;
  // Model for Button component.
  late ButtonModel buttonModel7;
  // Model for Button component.
  late ButtonModel buttonModel8;
  // Model for Button component.
  late ButtonModel buttonModel9;
  // Model for Button component.
  late ButtonModel buttonModel10;
  // Model for IconButton component.
  late IconButtonModel iconButtonModel2;
  // Model for Button component.
  late ButtonModel buttonModel11;
  // Model for Button component.
  late ButtonModel buttonModel12;
  // Model for Button component.
  late ButtonModel buttonModel13;
  // Model for Button component.
  late ButtonModel buttonModel14;
  // Model for Button component.
  late ButtonModel buttonModel15;
  // Model for IconButton component.
  late IconButtonModel iconButtonModel3;
  // Model for InputGroup component.
  late InputGroupModel inputGroupModel1;
  // Model for InputGroup component.
  late InputGroupModel inputGroupModel2;
  // Model for InputGroup component.
  late InputGroupModel inputGroupModel3;
  // Model for SegmentedTabs component.
  late SegmentedTabsModel segmentedTabsModel1;
  // Model for SegmentedTabs component.
  late SegmentedTabsModel segmentedTabsModel2;
  // Model for SegmentedTabs component.
  late SegmentedTabsModel segmentedTabsModel3;
  // Model for SegmentedTabs component.
  late SegmentedTabsModel segmentedTabsModel4;
  // Model for Chip component.
  late ChipModel chipModel1;
  // Model for Chip component.
  late ChipModel chipModel2;
  // Model for Chip component.
  late ChipModel chipModel3;
  // Model for Chip component.
  late ChipModel chipModel4;
  // Model for Chip component.
  late ChipModel chipModel5;
  // Model for Chip component.
  late ChipModel chipModel6;
  // Model for Chip component.
  late ChipModel chipModel7;
  // Model for Chip component.
  late ChipModel chipModel8;
  // Model for TextBlob component.
  late TextBlobModel textBlobModel1;
  // Model for TextBlob component.
  late TextBlobModel textBlobModel2;
  // Model for Prompt component.
  late PromptModel promptModel1;
  // Model for Prompt component.
  late PromptModel promptModel2;
  // Model for Prompt component.
  late PromptModel promptModel3;
  // Model for FeedbackLoader component.
  late FeedbackLoaderModel feedbackLoaderModel;
  // Model for Counter component.
  late CounterModel counterModel1;
  // Model for Counter component.
  late CounterModel counterModel2;
  // Model for Counter component.
  late CounterModel counterModel3;
  // Model for Counter component.
  late CounterModel counterModel4;
  // Model for Counter component.
  late CounterModel counterModel5;
  // Model for Counter component.
  late CounterModel counterModel6;
  // Model for Counter component.
  late CounterModel counterModel7;
  // Model for Counter component.
  late CounterModel counterModel8;
  // Model for Counter component.
  late CounterModel counterModel9;
  // Model for Counter component.
  late CounterModel counterModel10;
  // Model for Counter component.
  late CounterModel counterModel11;
  // Model for Counter component.
  late CounterModel counterModel12;
  // Model for Counter component.
  late CounterModel counterModel13;
  // Model for Counter component.
  late CounterModel counterModel14;
  // Model for Counter component.
  late CounterModel counterModel15;
  // Model for Counter component.
  late CounterModel counterModel16;
  // Model for Progressbar component.
  late ProgressbarModel progressbarModel1;
  // Model for Progressbar component.
  late ProgressbarModel progressbarModel2;
  // Model for Progressbar component.
  late ProgressbarModel progressbarModel3;
  // Model for CodeBlock component.
  late CodeBlockModel codeBlockModel1;
  // Model for CodeBlock component.
  late CodeBlockModel codeBlockModel2;
  // Model for CodeBlock component.
  late CodeBlockModel codeBlockModel3;
  // Model for Button component.
  late ButtonModel buttonModel16;
  // Model for CheckboxGroup component.
  late CheckboxGroupModel checkboxGroupModel1;
  // Model for CheckboxGroup component.
  late CheckboxGroupModel checkboxGroupModel2;
  // Model for RadioGroup component.
  late RadioGroupModel radioGroupModel1;
  // Model for RadioGroup component.
  late RadioGroupModel radioGroupModel2;

  @override
  void initState(BuildContext context) {
    selectModel = createModel(context, () => SelectModel());
    sliderModel1 = createModel(context, () => SliderModel());
    sliderModel2 = createModel(context, () => SliderModel());
    sliderModel3 = createModel(context, () => SliderModel());
    checkboxModel1 = createModel(context, () => CheckboxModel());
    checkboxModel2 = createModel(context, () => CheckboxModel());
    checkboxModel3 = createModel(context, () => CheckboxModel());
    checkboxDisabledModel1 = createModel(context, () => CheckboxModel());
    checkboxModel4 = createModel(context, () => CheckboxModel());
    checkboxModel5 = createModel(context, () => CheckboxModel());
    checkboxModel6 = createModel(context, () => CheckboxModel());
    checkboxDisabledModel2 = createModel(context, () => CheckboxModel());
    swItchModel1 = createModel(context, () => SwItchModel());
    swItchModel2 = createModel(context, () => SwItchModel());
    swItchModel3 = createModel(context, () => SwItchModel());
    swItchModel4 = createModel(context, () => SwItchModel());
    swItchModel5 = createModel(context, () => SwItchModel());
    swItchModel6 = createModel(context, () => SwItchModel());
    swItchModel7 = createModel(context, () => SwItchModel());
    swItchModel8 = createModel(context, () => SwItchModel());
    swItchModel9 = createModel(context, () => SwItchModel());
    alertModel1 = createModel(context, () => AlertModel());
    alertModel2 = createModel(context, () => AlertModel());
    alertModel3 = createModel(context, () => AlertModel());
    alertModel4 = createModel(context, () => AlertModel());
    searchableDropdownModel =
        createModel(context, () => SearchableDropdownModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    buttonModel4 = createModel(context, () => ButtonModel());
    buttonModel5 = createModel(context, () => ButtonModel());
    iconButtonModel1 = createModel(context, () => IconButtonModel());
    buttonModel6 = createModel(context, () => ButtonModel());
    buttonModel7 = createModel(context, () => ButtonModel());
    buttonModel8 = createModel(context, () => ButtonModel());
    buttonModel9 = createModel(context, () => ButtonModel());
    buttonModel10 = createModel(context, () => ButtonModel());
    iconButtonModel2 = createModel(context, () => IconButtonModel());
    buttonModel11 = createModel(context, () => ButtonModel());
    buttonModel12 = createModel(context, () => ButtonModel());
    buttonModel13 = createModel(context, () => ButtonModel());
    buttonModel14 = createModel(context, () => ButtonModel());
    buttonModel15 = createModel(context, () => ButtonModel());
    iconButtonModel3 = createModel(context, () => IconButtonModel());
    inputGroupModel1 = createModel(context, () => InputGroupModel());
    inputGroupModel2 = createModel(context, () => InputGroupModel());
    inputGroupModel3 = createModel(context, () => InputGroupModel());
    segmentedTabsModel1 = createModel(context, () => SegmentedTabsModel());
    segmentedTabsModel2 = createModel(context, () => SegmentedTabsModel());
    segmentedTabsModel3 = createModel(context, () => SegmentedTabsModel());
    segmentedTabsModel4 = createModel(context, () => SegmentedTabsModel());
    chipModel1 = createModel(context, () => ChipModel());
    chipModel2 = createModel(context, () => ChipModel());
    chipModel3 = createModel(context, () => ChipModel());
    chipModel4 = createModel(context, () => ChipModel());
    chipModel5 = createModel(context, () => ChipModel());
    chipModel6 = createModel(context, () => ChipModel());
    chipModel7 = createModel(context, () => ChipModel());
    chipModel8 = createModel(context, () => ChipModel());
    textBlobModel1 = createModel(context, () => TextBlobModel());
    textBlobModel2 = createModel(context, () => TextBlobModel());
    promptModel1 = createModel(context, () => PromptModel());
    promptModel2 = createModel(context, () => PromptModel());
    promptModel3 = createModel(context, () => PromptModel());
    feedbackLoaderModel = createModel(context, () => FeedbackLoaderModel());
    counterModel1 = createModel(context, () => CounterModel());
    counterModel2 = createModel(context, () => CounterModel());
    counterModel3 = createModel(context, () => CounterModel());
    counterModel4 = createModel(context, () => CounterModel());
    counterModel5 = createModel(context, () => CounterModel());
    counterModel6 = createModel(context, () => CounterModel());
    counterModel7 = createModel(context, () => CounterModel());
    counterModel8 = createModel(context, () => CounterModel());
    counterModel9 = createModel(context, () => CounterModel());
    counterModel10 = createModel(context, () => CounterModel());
    counterModel11 = createModel(context, () => CounterModel());
    counterModel12 = createModel(context, () => CounterModel());
    counterModel13 = createModel(context, () => CounterModel());
    counterModel14 = createModel(context, () => CounterModel());
    counterModel15 = createModel(context, () => CounterModel());
    counterModel16 = createModel(context, () => CounterModel());
    progressbarModel1 = createModel(context, () => ProgressbarModel());
    progressbarModel2 = createModel(context, () => ProgressbarModel());
    progressbarModel3 = createModel(context, () => ProgressbarModel());
    codeBlockModel1 = createModel(context, () => CodeBlockModel());
    codeBlockModel2 = createModel(context, () => CodeBlockModel());
    codeBlockModel3 = createModel(context, () => CodeBlockModel());
    buttonModel16 = createModel(context, () => ButtonModel());
    checkboxGroupModel1 = createModel(context, () => CheckboxGroupModel());
    checkboxGroupModel2 = createModel(context, () => CheckboxGroupModel());
    radioGroupModel1 = createModel(context, () => RadioGroupModel());
    radioGroupModel2 = createModel(context, () => RadioGroupModel());
  }

  @override
  void dispose() {
    selectModel.dispose();
    sliderModel1.dispose();
    sliderModel2.dispose();
    sliderModel3.dispose();
    checkboxModel1.dispose();
    checkboxModel2.dispose();
    checkboxModel3.dispose();
    checkboxDisabledModel1.dispose();
    checkboxModel4.dispose();
    checkboxModel5.dispose();
    checkboxModel6.dispose();
    checkboxDisabledModel2.dispose();
    swItchModel1.dispose();
    swItchModel2.dispose();
    swItchModel3.dispose();
    swItchModel4.dispose();
    swItchModel5.dispose();
    swItchModel6.dispose();
    swItchModel7.dispose();
    swItchModel8.dispose();
    swItchModel9.dispose();
    alertModel1.dispose();
    alertModel2.dispose();
    alertModel3.dispose();
    alertModel4.dispose();
    searchableDropdownModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    buttonModel4.dispose();
    buttonModel5.dispose();
    iconButtonModel1.dispose();
    buttonModel6.dispose();
    buttonModel7.dispose();
    buttonModel8.dispose();
    buttonModel9.dispose();
    buttonModel10.dispose();
    iconButtonModel2.dispose();
    buttonModel11.dispose();
    buttonModel12.dispose();
    buttonModel13.dispose();
    buttonModel14.dispose();
    buttonModel15.dispose();
    iconButtonModel3.dispose();
    inputGroupModel1.dispose();
    inputGroupModel2.dispose();
    inputGroupModel3.dispose();
    segmentedTabsModel1.dispose();
    segmentedTabsModel2.dispose();
    segmentedTabsModel3.dispose();
    segmentedTabsModel4.dispose();
    chipModel1.dispose();
    chipModel2.dispose();
    chipModel3.dispose();
    chipModel4.dispose();
    chipModel5.dispose();
    chipModel6.dispose();
    chipModel7.dispose();
    chipModel8.dispose();
    textBlobModel1.dispose();
    textBlobModel2.dispose();
    promptModel1.dispose();
    promptModel2.dispose();
    promptModel3.dispose();
    feedbackLoaderModel.dispose();
    counterModel1.dispose();
    counterModel2.dispose();
    counterModel3.dispose();
    counterModel4.dispose();
    counterModel5.dispose();
    counterModel6.dispose();
    counterModel7.dispose();
    counterModel8.dispose();
    counterModel9.dispose();
    counterModel10.dispose();
    counterModel11.dispose();
    counterModel12.dispose();
    counterModel13.dispose();
    counterModel14.dispose();
    counterModel15.dispose();
    counterModel16.dispose();
    progressbarModel1.dispose();
    progressbarModel2.dispose();
    progressbarModel3.dispose();
    codeBlockModel1.dispose();
    codeBlockModel2.dispose();
    codeBlockModel3.dispose();
    buttonModel16.dispose();
    checkboxGroupModel1.dispose();
    checkboxGroupModel2.dispose();
    radioGroupModel1.dispose();
    radioGroupModel2.dispose();
  }
}
