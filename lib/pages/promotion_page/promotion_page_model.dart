import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promotion_page_widget.dart' show PromotionPageWidget;
import 'package:flutter/material.dart';

class PromotionPageModel extends FlutterFlowModel<PromotionPageWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
