import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParticipantsRecord extends FirestoreRecord {
  ParticipantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "rank" field.
  String? _rank;
  String get rank => _rank ?? '';
  bool hasRank() => _rank != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "responsibility" field.
  String? _responsibility;
  String get responsibility => _responsibility ?? '';
  bool hasResponsibility() => _responsibility != null;

  // "use_yn" field.
  String? _useYn;
  String get useYn => _useYn ?? '';
  bool hasUseYn() => _useYn != null;

  // "expiration_date" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  bool hasExpirationDate() => _expirationDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _company = snapshotData['company'] as String?;
    _rank = snapshotData['rank'] as String?;
    _department = snapshotData['department'] as String?;
    _responsibility = snapshotData['responsibility'] as String?;
    _useYn = snapshotData['use_yn'] as String?;
    _expirationDate = snapshotData['expiration_date'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('participants')
          : FirebaseFirestore.instance.collectionGroup('participants');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('participants').doc(id);

  static Stream<ParticipantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParticipantsRecord.fromSnapshot(s));

  static Future<ParticipantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParticipantsRecord.fromSnapshot(s));

  static ParticipantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParticipantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParticipantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParticipantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParticipantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParticipantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParticipantsRecordData({
  String? name,
  String? phoneNumber,
  String? email,
  String? company,
  String? rank,
  String? department,
  String? responsibility,
  String? useYn,
  String? expirationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'company': company,
      'rank': rank,
      'department': department,
      'responsibility': responsibility,
      'use_yn': useYn,
      'expiration_date': expirationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParticipantsRecordDocumentEquality
    implements Equality<ParticipantsRecord> {
  const ParticipantsRecordDocumentEquality();

  @override
  bool equals(ParticipantsRecord? e1, ParticipantsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.company == e2?.company &&
        e1?.rank == e2?.rank &&
        e1?.department == e2?.department &&
        e1?.responsibility == e2?.responsibility &&
        e1?.useYn == e2?.useYn &&
        e1?.expirationDate == e2?.expirationDate;
  }

  @override
  int hash(ParticipantsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.phoneNumber,
        e?.email,
        e?.company,
        e?.rank,
        e?.department,
        e?.responsibility,
        e?.useYn,
        e?.expirationDate
      ]);

  @override
  bool isValidKey(Object? o) => o is ParticipantsRecord;
}
