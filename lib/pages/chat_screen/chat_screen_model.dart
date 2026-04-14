import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_screen_widget.dart' show ChatScreenWidget;
import 'package:flutter/material.dart';

class ChatScreenModel extends FlutterFlowModel<ChatScreenWidget> {
  ///  Local state fields for this page.

  String? chatId;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in chatScreen widget.
  ChatsRecord? existingChat;
  // Stores action output result for [Firestore Query - Query a collection] action in chatScreen widget.
  ChatsRecord? chatRef;
  // State field(s) for toBeSent widget.
  FocusNode? toBeSentFocusNode;
  TextEditingController? toBeSentTextController;
  String? Function(BuildContext, String?)? toBeSentTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    toBeSentFocusNode?.dispose();
    toBeSentTextController?.dispose();
  }
}
