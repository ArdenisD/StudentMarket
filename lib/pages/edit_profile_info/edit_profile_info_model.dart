import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_info_widget.dart' show EditProfileInfoWidget;
import 'package:flutter/material.dart';

class EditProfileInfoModel extends FlutterFlowModel<EditProfileInfoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for universities widget.
  String? universitiesValue;
  FormFieldController<String>? universitiesValueController;
  // State field(s) for gradYears widget.
  String? gradYearsValue;
  FormFieldController<String>? gradYearsValueController;
  // State field(s) for biof widget.
  FocusNode? biofFocusNode;
  TextEditingController? biofTextController;
  String? Function(BuildContext, String?)? biofTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    biofFocusNode?.dispose();
    biofTextController?.dispose();
  }
}
