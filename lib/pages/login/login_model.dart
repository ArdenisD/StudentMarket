import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for uniEmail widget.
  FocusNode? uniEmailFocusNode;
  TextEditingController? uniEmailTextController;
  String? Function(BuildContext, String?)? uniEmailTextControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
  }

  @override
  void dispose() {
    uniEmailFocusNode?.dispose();
    uniEmailTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();
  }
}
