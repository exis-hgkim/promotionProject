import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Participants2Record extends FirestoreRecord {
  Participants2Record._(
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

  // "info_start_date" field.
  DateTime? _infoStartDate;
  DateTime? get infoStartDate => _infoStartDate;
  bool hasInfoStartDate() => _infoStartDate != null;

  // "use_yn" field.
  String? _useYn;
  String get useYn => _useYn ?? '';
  bool hasUseYn() => _useYn != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "expiration_date" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  bool hasExpirationDate() => _expirationDate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _company = snapshotData['company'] as String?;
    _rank = snapshotData['rank'] as String?;
    _department = snapshotData['department'] as String?;
    _responsibility = snapshotData['responsibility'] as String?;
    _infoStartDate = snapshotData['info_start_date'] as DateTime?;
    _useYn = snapshotData['use_yn'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _expirationDate = snapshotData['expiration_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('participants2');

  static Stream<Participants2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Participants2Record.fromSnapshot(s));

  static Future<Participants2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Participants2Record.fromSnapshot(s));

  static Participants2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Participants2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Participants2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Participants2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Participants2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Participants2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParticipants2RecordData({
  String? name,
  String? phoneNumber,
  String? email,
  String? company,
  String? rank,
  String? department,
  String? responsibility,
  DateTime? infoStartDate,
  String? useYn,
  DocumentReference? createdBy,
  DateTime? expirationDate,
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
      'info_start_date': infoStartDate,
      'use_yn': useYn,
      'created_by': createdBy,
      'expiration_date': expirationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class Participants2RecordDocumentEquality
    implements Equality<Participants2Record> {
  const Participants2RecordDocumentEquality();

  @override
  bool equals(Participants2Record? e1, Participants2Record? e2) {
    return e1?.name == e2?.name &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.company == e2?.company &&
        e1?.rank == e2?.rank &&
        e1?.department == e2?.department &&
        e1?.responsibility == e2?.responsibility &&
        e1?.infoStartDate == e2?.infoStartDate &&
        e1?.useYn == e2?.useYn &&
        e1?.createdBy == e2?.createdBy &&
        e1?.expirationDate == e2?.expirationDate;
  }

  @override
  int hash(Participants2Record? e) => const ListEquality().hash([
        e?.name,
        e?.phoneNumber,
        e?.email,
        e?.company,
        e?.rank,
        e?.department,
        e?.responsibility,
        e?.infoStartDate,
        e?.useYn,
        e?.createdBy,
        e?.expirationDate
      ]);

  @override
  bool isValidKey(Object? o) => o is Participants2Record;
}
