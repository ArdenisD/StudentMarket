import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/listing_preview/listing_preview_widget.dart';
import '/index.dart';
import 'search_home_widget.dart' show SearchHomeWidget;
import 'package:flutter/material.dart';

class SearchHomeModel extends FlutterFlowModel<SearchHomeWidget> {
  ///  Local state fields for this page.

  String selectedCategory = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for listingPreview dynamic component.
  late FlutterFlowDynamicModels<ListingPreviewModel> listingPreviewModels1;
  // Models for listingPreview dynamic component.
  late FlutterFlowDynamicModels<ListingPreviewModel> listingPreviewModels2;
  // Models for listingPreview dynamic component.
  late FlutterFlowDynamicModels<ListingPreviewModel> listingPreviewModels3;

  @override
  void initState(BuildContext context) {
    listingPreviewModels1 =
        FlutterFlowDynamicModels(() => ListingPreviewModel());
    listingPreviewModels2 =
        FlutterFlowDynamicModels(() => ListingPreviewModel());
    listingPreviewModels3 =
        FlutterFlowDynamicModels(() => ListingPreviewModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listingPreviewModels1.dispose();
    listingPreviewModels2.dispose();
    listingPreviewModels3.dispose();
  }
}
