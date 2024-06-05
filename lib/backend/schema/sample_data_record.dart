import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SampleDataRecord extends FirestoreRecord {
  SampleDataRecord._(
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
      FirebaseFirestore.instance.collection('sampleData');

  static Stream<SampleDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SampleDataRecord.fromSnapshot(s));

  static Future<SampleDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SampleDataRecord.fromSnapshot(s));

  static SampleDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SampleDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SampleDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SampleDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SampleDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SampleDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSampleDataRecordData({
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

class SampleDataRecordDocumentEquality implements Equality<SampleDataRecord> {
  const SampleDataRecordDocumentEquality();

  @override
  bool equals(SampleDataRecord? e1, SampleDataRecord? e2) {
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
  int hash(SampleDataRecord? e) => const ListEquality().hash([
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
  bool isValidKey(Object? o) => o is SampleDataRecord;
}
