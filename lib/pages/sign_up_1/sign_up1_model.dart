import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up1_widget.dart' show SignUp1Widget;
import 'package:flutter/material.dart';

class SignUp1Model extends FlutterFlowModel<SignUp1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataZ4f = false;
  FFUploadedFile uploadedLocalFile_uploadDataZ4f =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataZ4f = '';

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
  }
}
