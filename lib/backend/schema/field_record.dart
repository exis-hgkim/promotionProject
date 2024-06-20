import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FieldRecord extends FirestoreRecord {
  FieldRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('field');

  static Stream<FieldRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FieldRecord.fromSnapshot(s));

  static Future<FieldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FieldRecord.fromSnapshot(s));

  static FieldRecord fromSnapshot(DocumentSnapshot snapshot) => FieldRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FieldRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FieldRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FieldRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FieldRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFieldRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FieldRecordDocumentEquality implements Equality<FieldRecord> {
  const FieldRecordDocumentEquality();

  @override
  bool equals(FieldRecord? e1, FieldRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(FieldRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is FieldRecord;
}
