import '/backend/backend.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_promotion_widget.dart' show CreatePromotionWidget;
import 'package:flutter/material.dart';

class CreatePromotionModel extends FlutterFlowModel<CreatePromotionWidget> {
  ///  Local state fields for this page.

  List<ParticipantStruct> participantsList = [];
  void addToParticipantsList(ParticipantStruct item) =>
      participantsList.add(item);
  void removeFromParticipantsList(ParticipantStruct item) =>
      participantsList.remove(item);
  void removeAtIndexFromParticipantsList(int index) =>
      participantsList.removeAt(index);
  void insertAtIndexInParticipantsList(int index, ParticipantStruct item) =>
      participantsList.insert(index, item);
  void updateParticipantsListAtIndex(
          int index, Function(ParticipantStruct) updateFn) =>
      participantsList[index] = updateFn(participantsList[index]);

  List<FieldRecord> eventfieldList = [];
  void addToEventfieldList(FieldRecord item) => eventfieldList.add(item);
  void removeFromEventfieldList(FieldRecord item) =>
      eventfieldList.remove(item);
  void removeAtIndexFromEventfieldList(int index) =>
      eventfieldList.removeAt(index);
  void insertAtIndexInEventfieldList(int index, FieldRecord item) =>
      eventfieldList.insert(index, item);
  void updateEventfieldListAtIndex(int index, Function(FieldRecord) updateFn) =>
      eventfieldList[index] = updateFn(eventfieldList[index]);

  PromotionsRecord? savePromotionData;

  List<String> pdfFileList = [];
  void addToPdfFileList(String item) => pdfFileList.add(item);
  void removeFromPdfFileList(String item) => pdfFileList.remove(item);
  void removeAtIndexFromPdfFileList(int index) => pdfFileList.removeAt(index);
  void insertAtIndexInPdfFileList(int index, String item) =>
      pdfFileList.insert(index, item);
  void updatePdfFileListAtIndex(int index, Function(String) updateFn) =>
      pdfFileList[index] = updateFn(pdfFileList[index]);

  List<FileStruct> pdfFiles = [];
  void addToPdfFiles(FileStruct item) => pdfFiles.add(item);
  void removeFromPdfFiles(FileStruct item) => pdfFiles.remove(item);
  void removeAtIndexFromPdfFiles(int index) => pdfFiles.removeAt(index);
  void insertAtIndexInPdfFiles(int index, FileStruct item) =>
      pdfFiles.insert(index, item);
  void updatePdfFilesAtIndex(int index, Function(FileStruct) updateFn) =>
      pdfFiles[index] = updateFn(pdfFiles[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in CreatePromotion widget.
  List<FieldRecord>? fieldList;
  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for promotionNm widget.
  FocusNode? promotionNmFocusNode;
  TextEditingController? promotionNmTextController;
  String? Function(BuildContext, String?)? promotionNmTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for saveOneDt widget.
  FocusNode? saveOneDtFocusNode;
  TextEditingController? saveOneDtTextController;
  String? Function(BuildContext, String?)? saveOneDtTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for saveStartDT widget.
  FocusNode? saveStartDTFocusNode;
  TextEditingController? saveStartDTTextController;
  String? Function(BuildContext, String?)? saveStartDTTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for saveEndDt widget.
  FocusNode? saveEndDtFocusNode;
  TextEditingController? saveEndDtTextController;
  String? Function(BuildContext, String?)? saveEndDtTextControllerValidator;
  // State field(s) for dayFlag widget.
  FormFieldController<String>? dayFlagValueController;
  // State field(s) for participationMethod widget.
  FormFieldController<String>? participationMethodValueController;
  // State field(s) for host widget.
  FocusNode? hostFocusNode;
  TextEditingController? hostTextController;
  String? Function(BuildContext, String?)? hostTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Custom Action - pickFiles] action in Button widget.
  List<FileStruct>? files;
  // Stores action output result for [Custom Action - uploadCsv] action in Button widget.
  List<ParticipantStruct>? csvData;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ParticipantStruct>();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PromotionsRecord? createdData;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarModel.dispose();
    promotionNmFocusNode?.dispose();
    promotionNmTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    saveOneDtFocusNode?.dispose();
    saveOneDtTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    saveStartDTFocusNode?.dispose();
    saveStartDTTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    saveEndDtFocusNode?.dispose();
    saveEndDtTextController?.dispose();

    hostFocusNode?.dispose();
    hostTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }

  /// Additional helper methods.
  String? get dayFlagValue => dayFlagValueController?.value;
  String? get participationMethodValue =>
      participationMethodValueController?.value;
}
