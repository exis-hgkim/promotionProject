import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'participants_page_widget.dart' show ParticipantsPageWidget;
import 'package:flutter/material.dart';

class ParticipantsPageModel extends FlutterFlowModel<ParticipantsPageWidget> {
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
  // Stores action output result for [Firestore Query - Query a collection] action in ParticipantsPage widget.
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
