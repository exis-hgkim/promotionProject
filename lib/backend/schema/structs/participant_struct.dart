// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParticipantStruct extends FFFirebaseStruct {
  ParticipantStruct({
    String? name,
    String? phoneNumber,
    String? email,
    String? company,
    String? rank,
    String? department,
    String? responsibility,
    String? useYn,
    String? expirationDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _phoneNumber = phoneNumber,
        _email = email,
        _company = company,
        _rank = rank,
        _department = department,
        _responsibility = responsibility,
        _useYn = useYn,
        _expirationDate = expirationDate,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  set company(String? val) => _company = val;

  bool hasCompany() => _company != null;

  // "rank" field.
  String? _rank;
  String get rank => _rank ?? '';
  set rank(String? val) => _rank = val;

  bool hasRank() => _rank != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  set department(String? val) => _department = val;

  bool hasDepartment() => _department != null;

  // "responsibility" field.
  String? _responsibility;
  String get responsibility => _responsibility ?? '';
  set responsibility(String? val) => _responsibility = val;

  bool hasResponsibility() => _responsibility != null;

  // "use_yn" field.
  String? _useYn;
  String get useYn => _useYn ?? '';
  set useYn(String? val) => _useYn = val;

  bool hasUseYn() => _useYn != null;

  // "expiration_date" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  set expirationDate(String? val) => _expirationDate = val;

  bool hasExpirationDate() => _expirationDate != null;

  static ParticipantStruct fromMap(Map<String, dynamic> data) =>
      ParticipantStruct(
        name: data['name'] as String?,
        phoneNumber: data['phone_number'] as String?,
        email: data['email'] as String?,
        company: data['company'] as String?,
        rank: data['rank'] as String?,
        department: data['department'] as String?,
        responsibility: data['responsibility'] as String?,
        useYn: data['use_yn'] as String?,
        expirationDate: data['expiration_date'] as String?,
      );

  static ParticipantStruct? maybeFromMap(dynamic data) => data is Map
      ? ParticipantStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'phone_number': _phoneNumber,
        'email': _email,
        'company': _company,
        'rank': _rank,
        'department': _department,
        'responsibility': _responsibility,
        'use_yn': _useYn,
        'expiration_date': _expirationDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'company': serializeParam(
          _company,
          ParamType.String,
        ),
        'rank': serializeParam(
          _rank,
          ParamType.String,
        ),
        'department': serializeParam(
          _department,
          ParamType.String,
        ),
        'responsibility': serializeParam(
          _responsibility,
          ParamType.String,
        ),
        'use_yn': serializeParam(
          _useYn,
          ParamType.String,
        ),
        'expiration_date': serializeParam(
          _expirationDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static ParticipantStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParticipantStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        company: deserializeParam(
          data['company'],
          ParamType.String,
          false,
        ),
        rank: deserializeParam(
          data['rank'],
          ParamType.String,
          false,
        ),
        department: deserializeParam(
          data['department'],
          ParamType.String,
          false,
        ),
        responsibility: deserializeParam(
          data['responsibility'],
          ParamType.String,
          false,
        ),
        useYn: deserializeParam(
          data['use_yn'],
          ParamType.String,
          false,
        ),
        expirationDate: deserializeParam(
          data['expiration_date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ParticipantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParticipantStruct &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        company == other.company &&
        rank == other.rank &&
        department == other.department &&
        responsibility == other.responsibility &&
        useYn == other.useYn &&
        expirationDate == other.expirationDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        phoneNumber,
        email,
        company,
        rank,
        department,
        responsibility,
        useYn,
        expirationDate
      ]);
}

ParticipantStruct createParticipantStruct({
  String? name,
  String? phoneNumber,
  String? email,
  String? company,
  String? rank,
  String? department,
  String? responsibility,
  String? useYn,
  String? expirationDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParticipantStruct(
      name: name,
      phoneNumber: phoneNumber,
      email: email,
      company: company,
      rank: rank,
      department: department,
      responsibility: responsibility,
      useYn: useYn,
      expirationDate: expirationDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParticipantStruct? updateParticipantStruct(
  ParticipantStruct? participant, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    participant
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParticipantStructData(
  Map<String, dynamic> firestoreData,
  ParticipantStruct? participant,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (participant == null) {
    return;
  }
  if (participant.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && participant.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final participantData =
      getParticipantFirestoreData(participant, forFieldValue);
  final nestedData =
      participantData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = participant.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParticipantFirestoreData(
  ParticipantStruct? participant, [
  bool forFieldValue = false,
]) {
  if (participant == null) {
    return {};
  }
  final firestoreData = mapToFirestore(participant.toMap());

  // Add any Firestore field values
  participant.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParticipantListFirestoreData(
  List<ParticipantStruct>? participants,
) =>
    participants?.map((e) => getParticipantFirestoreData(e, true)).toList() ??
    [];
