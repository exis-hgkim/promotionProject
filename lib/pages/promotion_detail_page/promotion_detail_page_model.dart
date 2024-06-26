import '/backend/backend.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
    unfocusNode.dispose();
    sideBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
