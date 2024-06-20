// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionStruct extends FFFirebaseStruct {
  PromotionStruct({
    DateTime? startDate,
    DateTime? endDate,
    String? promotionName,
    String? host,
    String? organizer,
    String? description,
    List<String>? field,
    String? lastModifiedUser,
    DateTime? lastModifiedDate,
    String? createdUser,
    DateTime? createdDate,
    String? participationMethod,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _startDate = startDate,
        _endDate = endDate,
        _promotionName = promotionName,
        _host = host,
        _organizer = organizer,
        _description = description,
        _field = field,
        _lastModifiedUser = lastModifiedUser,
        _lastModifiedDate = lastModifiedDate,
        _createdUser = createdUser,
        _createdDate = createdDate,
        _participationMethod = participationMethod,
        super(firestoreUtilData);

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "promotion_name" field.
  String? _promotionName;
  String get promotionName => _promotionName ?? '';
  set promotionName(String? val) => _promotionName = val;

  bool hasPromotionName() => _promotionName != null;

  // "host" field.
  String? _host;
  String get host => _host ?? '';
  set host(String? val) => _host = val;

  bool hasHost() => _host != null;

  // "organizer" field.
  String? _organizer;
  String get organizer => _organizer ?? '';
  set organizer(String? val) => _organizer = val;

  bool hasOrganizer() => _organizer != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "field" field.
  List<String>? _field;
  List<String> get field => _field ?? const [];
  set field(List<String>? val) => _field = val;

  void updateField(Function(List<String>) updateFn) {
    updateFn(field ??= []);
  }

  bool hasField() => _field != null;

  // "last_modified_user" field.
  String? _lastModifiedUser;
  String get lastModifiedUser => _lastModifiedUser ?? '';
  set lastModifiedUser(String? val) => _lastModifiedUser = val;

  bool hasLastModifiedUser() => _lastModifiedUser != null;

  // "last_modified_date" field.
  DateTime? _lastModifiedDate;
  DateTime? get lastModifiedDate => _lastModifiedDate;
  set lastModifiedDate(DateTime? val) => _lastModifiedDate = val;

  bool hasLastModifiedDate() => _lastModifiedDate != null;

  // "created_user" field.
  String? _createdUser;
  String get createdUser => _createdUser ?? '';
  set createdUser(String? val) => _createdUser = val;

  bool hasCreatedUser() => _createdUser != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  set createdDate(DateTime? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "participation_method" field.
  String? _participationMethod;
  String get participationMethod => _participationMethod ?? '';
  set participationMethod(String? val) => _participationMethod = val;

  bool hasParticipationMethod() => _participationMethod != null;

  static PromotionStruct fromMap(Map<String, dynamic> data) => PromotionStruct(
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
        promotionName: data['promotion_name'] as String?,
        host: data['host'] as String?,
        organizer: data['organizer'] as String?,
        description: data['description'] as String?,
        field: getDataList(data['field']),
        lastModifiedUser: data['last_modified_user'] as String?,
        lastModifiedDate: data['last_modified_date'] as DateTime?,
        createdUser: data['created_user'] as String?,
        createdDate: data['created_date'] as DateTime?,
        participationMethod: data['participation_method'] as String?,
      );

  static PromotionStruct? maybeFromMap(dynamic data) => data is Map
      ? PromotionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'start_date': _startDate,
        'end_date': _endDate,
        'promotion_name': _promotionName,
        'host': _host,
        'organizer': _organizer,
        'description': _description,
        'field': _field,
        'last_modified_user': _lastModifiedUser,
        'last_modified_date': _lastModifiedDate,
        'created_user': _createdUser,
        'created_date': _createdDate,
        'participation_method': _participationMethod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'promotion_name': serializeParam(
          _promotionName,
          ParamType.String,
        ),
        'host': serializeParam(
          _host,
          ParamType.String,
        ),
        'organizer': serializeParam(
          _organizer,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'field': serializeParam(
          _field,
          ParamType.String,
          isList: true,
        ),
        'last_modified_user': serializeParam(
          _lastModifiedUser,
          ParamType.String,
        ),
        'last_modified_date': serializeParam(
          _lastModifiedDate,
          ParamType.DateTime,
        ),
        'created_user': serializeParam(
          _createdUser,
          ParamType.String,
        ),
        'created_date': serializeParam(
          _createdDate,
          ParamType.DateTime,
        ),
        'participation_method': serializeParam(
          _participationMethod,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromotionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromotionStruct(
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
        promotionName: deserializeParam(
          data['promotion_name'],
          ParamType.String,
          false,
        ),
        host: deserializeParam(
          data['host'],
          ParamType.String,
          false,
        ),
        organizer: deserializeParam(
          data['organizer'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        field: deserializeParam<String>(
          data['field'],
          ParamType.String,
          true,
        ),
        lastModifiedUser: deserializeParam(
          data['last_modified_user'],
          ParamType.String,
          false,
        ),
        lastModifiedDate: deserializeParam(
          data['last_modified_date'],
          ParamType.DateTime,
          false,
        ),
        createdUser: deserializeParam(
          data['created_user'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['created_date'],
          ParamType.DateTime,
          false,
        ),
        participationMethod: deserializeParam(
          data['participation_method'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromotionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PromotionStruct &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        promotionName == other.promotionName &&
        host == other.host &&
        organizer == other.organizer &&
        description == other.description &&
        listEquality.equals(field, other.field) &&
        lastModifiedUser == other.lastModifiedUser &&
        lastModifiedDate == other.lastModifiedDate &&
        createdUser == other.createdUser &&
        createdDate == other.createdDate &&
        participationMethod == other.participationMethod;
  }

  @override
  int get hashCode => const ListEquality().hash([
        startDate,
        endDate,
        promotionName,
        host,
        organizer,
        description,
        field,
        lastModifiedUser,
        lastModifiedDate,
        createdUser,
        createdDate,
        participationMethod
      ]);
}

PromotionStruct createPromotionStruct({
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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromotionStruct(
      startDate: startDate,
      endDate: endDate,
      promotionName: promotionName,
      host: host,
      organizer: organizer,
      description: description,
      lastModifiedUser: lastModifiedUser,
      lastModifiedDate: lastModifiedDate,
      createdUser: createdUser,
      createdDate: createdDate,
      participationMethod: participationMethod,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromotionStruct? updatePromotionStruct(
  PromotionStruct? promotion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    promotion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromotionStructData(
  Map<String, dynamic> firestoreData,
  PromotionStruct? promotion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (promotion == null) {
    return;
  }
  if (promotion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && promotion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promotionData = getPromotionFirestoreData(promotion, forFieldValue);
  final nestedData = promotionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = promotion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromotionFirestoreData(
  PromotionStruct? promotion, [
  bool forFieldValue = false,
]) {
  if (promotion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(promotion.toMap());

  // Add any Firestore field values
  promotion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromotionListFirestoreData(
  List<PromotionStruct>? promotions,
) =>
    promotions?.map((e) => getPromotionFirestoreData(e, true)).toList() ?? [];
