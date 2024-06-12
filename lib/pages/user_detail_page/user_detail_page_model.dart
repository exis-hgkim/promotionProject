import '/backend/backend.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_detail_page_widget.dart' show UserDetailPageWidget;
import 'package:flutter/material.dart';

class UserDetailPageModel extends FlutterFlowModel<UserDetailPageWidget> {
  ///  Local state fields for this page.

  List<PromotionsRecord> testPromotionList = [];
  void addToTestPromotionList(PromotionsRecord item) =>
      testPromotionList.add(item);
  void removeFromTestPromotionList(PromotionsRecord item) =>
      testPromotionList.remove(item);
  void removeAtIndexFromTestPromotionList(int index) =>
      testPromotionList.removeAt(index);
  void insertAtIndexInTestPromotionList(int index, PromotionsRecord item) =>
      testPromotionList.insert(index, item);
  void updateTestPromotionListAtIndex(
          int index, Function(PromotionsRecord) updateFn) =>
      testPromotionList[index] = updateFn(testPromotionList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in UserDetailPage widget.
  List<PromotionsRecord>? fPList;
  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PromotionsRecord>();

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarModel.dispose();
  }
}
