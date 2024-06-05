import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_account_widget.dart' show DropdownAccountWidget;
import 'package:flutter/material.dart';

class DropdownAccountModel extends FlutterFlowModel<DropdownAccountWidget> {
  ///  Local state fields for this component.

  List<PromotionsRecord> promotionList = [];
  void addToPromotionList(PromotionsRecord item) => promotionList.add(item);
  void removeFromPromotionList(PromotionsRecord item) =>
      promotionList.remove(item);
  void removeAtIndexFromPromotionList(int index) =>
      promotionList.removeAt(index);
  void insertAtIndexInPromotionList(int index, PromotionsRecord item) =>
      promotionList.insert(index, item);
  void updatePromotionListAtIndex(
          int index, Function(PromotionsRecord) updateFn) =>
      promotionList[index] = updateFn(promotionList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
