import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promotion_detail_page_widget.dart' show PromotionDetailPageWidget;
import 'package:flutter/material.dart';

class PromotionDetailPageModel
    extends FlutterFlowModel<PromotionDetailPageWidget> {
  ///  Local state fields for this page.

  List<Participants2Record> participantsList = [];
  void addToParticipantsList(Participants2Record item) =>
      participantsList.add(item);
  void removeFromParticipantsList(Participants2Record item) =>
      participantsList.remove(item);
  void removeAtIndexFromParticipantsList(int index) =>
      participantsList.removeAt(index);
  void insertAtIndexInParticipantsList(int index, Participants2Record item) =>
      participantsList.insert(index, item);
  void updateParticipantsListAtIndex(
          int index, Function(Participants2Record) updateFn) =>
      participantsList[index] = updateFn(participantsList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in PromotionDetailPage widget.
  List<Participants2Record>? fPtpList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<Participants2Record>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
