import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

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

  // "week" field.
  String? _week;
  String get week => _week ?? '';
  bool hasWeek() => _week != null;

  // "create_user" field.
  String? _createUser;
  String get createUser => _createUser ?? '';
  bool hasCreateUser() => _createUser != null;

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

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

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _promotionName = snapshotData['promotion_name'] as String?;
    _type = snapshotData['type'] as String?;
    _host = snapshotData['host'] as String?;
    _organizer = snapshotData['organizer'] as String?;
    _description = snapshotData['description'] as String?;
    _week = snapshotData['week'] as String?;
    _createUser = snapshotData['create_user'] as String?;
    _createDate = snapshotData['create_date'] as DateTime?;
    _field = getDataList(snapshotData['field']);
    _lastModifiedUser = snapshotData['last_modified_user'] as String?;
    _lastModifiedDate = snapshotData['last_modified_date'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
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
  String? type,
  String? host,
  String? organizer,
  String? description,
  String? week,
  String? createUser,
  DateTime? createDate,
  String? lastModifiedUser,
  DateTime? lastModifiedDate,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
      'promotion_name': promotionName,
      'type': type,
      'host': host,
      'organizer': organizer,
      'description': description,
      'week': week,
      'create_user': createUser,
      'create_date': createDate,
      'last_modified_user': lastModifiedUser,
      'last_modified_date': lastModifiedDate,
      'uid': uid,
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
        e1?.type == e2?.type &&
        e1?.host == e2?.host &&
        e1?.organizer == e2?.organizer &&
        e1?.description == e2?.description &&
        e1?.week == e2?.week &&
        e1?.createUser == e2?.createUser &&
        e1?.createDate == e2?.createDate &&
        listEquality.equals(e1?.field, e2?.field) &&
        e1?.lastModifiedUser == e2?.lastModifiedUser &&
        e1?.lastModifiedDate == e2?.lastModifiedDate &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PromotionsRecord? e) => const ListEquality().hash([
        e?.startDate,
        e?.endDate,
        e?.promotionName,
        e?.type,
        e?.host,
        e?.organizer,
        e?.description,
        e?.week,
        e?.createUser,
        e?.createDate,
        e?.field,
        e?.lastModifiedUser,
        e?.lastModifiedDate,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
