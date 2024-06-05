import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'users_detail_pop_widget.dart' show UsersDetailPopWidget;
import 'package:flutter/material.dart';

class UsersDetailPopModel extends FlutterFlowModel<UsersDetailPopWidget> {
  ///  Local state fields for this component.

  List<PromotionsRecord> promotionInfo = [];
  void addToPromotionInfo(PromotionsRecord item) => promotionInfo.add(item);
  void removeFromPromotionInfo(PromotionsRecord item) =>
      promotionInfo.remove(item);
  void removeAtIndexFromPromotionInfo(int index) =>
      promotionInfo.removeAt(index);
  void insertAtIndexInPromotionInfo(int index, PromotionsRecord item) =>
      promotionInfo.insert(index, item);
  void updatePromotionInfoAtIndex(
          int index, Function(PromotionsRecord) updateFn) =>
      promotionInfo[index] = updateFn(promotionInfo[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in UsersDetailPop widget.
  List<PromotionsRecord>? fPmList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PromotionsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
