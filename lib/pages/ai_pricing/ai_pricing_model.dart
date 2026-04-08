import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_pricing_widget.dart' show AiPricingWidget;
import 'package:flutter/material.dart';

class AiPricingModel extends FlutterFlowModel<AiPricingWidget> {
  ///  Local state fields for this component.

  String apiResponse = 'apiReponse';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (aiPricing)] action in Button widget.
  ApiCallResponse? apiResultr0q;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
