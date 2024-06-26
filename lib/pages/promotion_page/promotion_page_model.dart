import '/backend/backend.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promotion_page_widget.dart' show PromotionPageWidget;
import 'package:flutter/material.dart';

class PromotionPageModel extends FlutterFlowModel<PromotionPageWidget> {
  ///  Local state fields for this page.

  bool showFullList = true;

  List<PromotionsRecord> searchPromotionList = [];
  void addToSearchPromotionList(PromotionsRecord item) =>
      searchPromotionList.add(item);
  void removeFromSearchPromotionList(PromotionsRecord item) =>
      searchPromotionList.remove(item);
  void removeAtIndexFromSearchPromotionList(int index) =>
      searchPromotionList.removeAt(index);
  void insertAtIndexInSearchPromotionList(int index, PromotionsRecord item) =>
      searchPromotionList.insert(index, item);
  void updateSearchPromotionListAtIndex(
          int index, Function(PromotionsRecord) updateFn) =>
      searchPromotionList[index] = updateFn(searchPromotionList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Custom Action - searchPromotions] action in Button widget.
  List<PromotionsRecord>? dddd;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
