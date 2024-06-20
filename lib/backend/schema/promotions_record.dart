import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionsRecord extends FirestoreRecord {
  PromotionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "promotion_name" field.
  String? _promotionName;
  String get promotionName => _promotionName ?? '';
  bool hasPromotionName() => _promotionName != null;

  // "host" field.
  String? _host;
  String get host => _host ?? '';
  bool hasHost() => _host != null;

  // "organizer" field.
  String? _organizer;
  String get organizer => _organizer ?? '';
  bool hasOrganizer() => _organizer != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "field" field.
  List<String>? _field;
  List<String> get field => _field ?? const [];
  bool hasField() => _field != null;

  // "last_modified_user" field.
  String? _lastModifiedUser;
  String get lastModifiedUser => _lastModifiedUser ?? '';
  bool hasLastModifiedUser() => _lastModifiedUser != null;

  // "last_modified_date" field.
  DateTime? _lastModifiedDate;
  DateTime? get lastModifiedDate => _lastModifiedDate;
  bool hasLastModifiedDate() => _lastModifiedDate != null;

  // "created_user" field.
  String? _createdUser;
  String get createdUser => _createdUser ?? '';
  bool hasCreatedUser() => _createdUser != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "participation_method" field.
  String? _participationMethod;
  String get participationMethod => _participationMethod ?? '';
  bool hasParticipationMethod() => _participationMethod != null;

  void _initializeFields() {
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _promotionName = snapshotData['promotion_name'] as String?;
    _host = snapshotData['host'] as String?;
    _organizer = snapshotData['organizer'] as String?;
    _description = snapshotData['description'] as String?;
    _field = getDataList(snapshotData['field']);
    _lastModifiedUser = snapshotData['last_modified_user'] as String?;
    _lastModifiedDate = snapshotData['last_modified_date'] as DateTime?;
    _createdUser = snapshotData['created_user'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _participationMethod = snapshotData['participation_method'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promotions');

  static Stream<PromotionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionsRecord.fromSnapshot(s));

  static Future<PromotionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionsRecord.fromSnapshot(s));

  static PromotionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionsRecordData({
  DateTime? startDate,
  DateTime? endDate,
  String? promotionName,
  String? host,
  String? organizer,
  String? description,
  String? lastModifiedUser,
  DateTime? lastModifiedDate,
  String? createdUser,
  DateTime? createdDate,
  String? participationMethod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
      'promotion_name': promotionName,
      'host': host,
      'organizer': organizer,
      'description': description,
      'last_modified_user': lastModifiedUser,
      'last_modified_date': lastModifiedDate,
      'created_user': createdUser,
      'created_date': createdDate,
      'participation_method': participationMethod,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionsRecordDocumentEquality implements Equality<PromotionsRecord> {
  const PromotionsRecordDocumentEquality();

  @override
  bool equals(PromotionsRecord? e1, PromotionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.promotionName == e2?.promotionName &&
        e1?.host == e2?.host &&
        e1?.organizer == e2?.organizer &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.field, e2?.field) &&
        e1?.lastModifiedUser == e2?.lastModifiedUser &&
        e1?.lastModifiedDate == e2?.lastModifiedDate &&
        e1?.createdUser == e2?.createdUser &&
        e1?.createdDate == e2?.createdDate &&
        e1?.participationMethod == e2?.participationMethod;
  }

  @override
  int hash(PromotionsRecord? e) => const ListEquality().hash([
        e?.startDate,
        e?.endDate,
        e?.promotionName,
        e?.host,
        e?.organizer,
        e?.description,
        e?.field,
        e?.lastModifiedUser,
        e?.lastModifiedDate,
        e?.createdUser,
        e?.createdDate,
        e?.participationMethod
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
