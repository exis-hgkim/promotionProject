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

  void _initializeFields() {
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _promotionName = snapshotData['promotion_name'] as String?;
    _type = snapshotData['type'] as String?;
    _host = snapshotData['host'] as String?;
    _organizer = snapshotData['organizer'] as String?;
    _description = snapshotData['description'] as String?;
    _week = snapshotData['week'] as String?;
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
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionsRecordDocumentEquality implements Equality<PromotionsRecord> {
  const PromotionsRecordDocumentEquality();

  @override
  bool equals(PromotionsRecord? e1, PromotionsRecord? e2) {
    return e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.promotionName == e2?.promotionName &&
        e1?.type == e2?.type &&
        e1?.host == e2?.host &&
        e1?.organizer == e2?.organizer &&
        e1?.description == e2?.description &&
        e1?.week == e2?.week;
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
        e?.week
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
