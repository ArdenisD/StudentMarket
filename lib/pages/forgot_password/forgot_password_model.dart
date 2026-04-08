import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for uniEmail widget.
  FocusNode? uniEmailFocusNode;
  TextEditingController? uniEmailTextController;
  String? Function(BuildContext, String?)? uniEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    uniEmailFocusNode?.dispose();
    uniEmailTextController?.dispose();
  }
}
