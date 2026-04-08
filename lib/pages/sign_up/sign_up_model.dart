import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_profileImage = false;
  FFUploadedFile uploadedLocalFile_profileImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_profileImage = '';

  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for uniEmail widget.
  FocusNode? uniEmailFocusNode;
  TextEditingController? uniEmailTextController;
  String? Function(BuildContext, String?)? uniEmailTextControllerValidator;
  // State field(s) for enterPass widget.
  FocusNode? enterPassFocusNode;
  TextEditingController? enterPassTextController;
  late bool enterPassVisibility;
  String? Function(BuildContext, String?)? enterPassTextControllerValidator;
  // State field(s) for confirmPass widget.
  FocusNode? confirmPassFocusNode;
  TextEditingController? confirmPassTextController;
  late bool confirmPassVisibility;
  String? Function(BuildContext, String?)? confirmPassTextControllerValidator;
  // State field(s) for universities widget.
  String? universitiesValue;
  FormFieldController<String>? universitiesValueController;
  // State field(s) for gradYears widget.
  String? gradYearsValue;
  FormFieldController<String>? gradYearsValueController;
  // State field(s) for textField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    enterPassVisibility = false;
    confirmPassVisibility = false;
  }

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    uniEmailFocusNode?.dispose();
    uniEmailTextController?.dispose();

    enterPassFocusNode?.dispose();
    enterPassTextController?.dispose();

    confirmPassFocusNode?.dispose();
    confirmPassTextController?.dispose();

    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
