// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FileStruct extends FFFirebaseStruct {
  FileStruct({
    String? fileName,
    String? filePath,
    String? fileBase64,
    int? fileSize,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fileName = fileName,
        _filePath = filePath,
        _fileBase64 = fileBase64,
        _fileSize = fileSize,
        super(firestoreUtilData);

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;

  bool hasFileName() => _fileName != null;

  // "file_path" field.
  String? _filePath;
  String get filePath => _filePath ?? '';
  set filePath(String? val) => _filePath = val;

  bool hasFilePath() => _filePath != null;

  // "file_base64" field.
  String? _fileBase64;
  String get fileBase64 => _fileBase64 ?? '';
  set fileBase64(String? val) => _fileBase64 = val;

  bool hasFileBase64() => _fileBase64 != null;

  // "file_size" field.
  int? _fileSize;
  int get fileSize => _fileSize ?? 0;
  set fileSize(int? val) => _fileSize = val;

  void incrementFileSize(int amount) => fileSize = fileSize + amount;

  bool hasFileSize() => _fileSize != null;

  static FileStruct fromMap(Map<String, dynamic> data) => FileStruct(
        fileName: data['file_name'] as String?,
        filePath: data['file_path'] as String?,
        fileBase64: data['file_base64'] as String?,
        fileSize: castToType<int>(data['file_size']),
      );

  static FileStruct? maybeFromMap(dynamic data) =>
      data is Map ? FileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'file_name': _fileName,
        'file_path': _filePath,
        'file_base64': _fileBase64,
        'file_size': _fileSize,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file_name': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'file_path': serializeParam(
          _filePath,
          ParamType.String,
        ),
        'file_base64': serializeParam(
          _fileBase64,
          ParamType.String,
        ),
        'file_size': serializeParam(
          _fileSize,
          ParamType.int,
        ),
      }.withoutNulls;

  static FileStruct fromSerializableMap(Map<String, dynamic> data) =>
      FileStruct(
        fileName: deserializeParam(
          data['file_name'],
          ParamType.String,
          false,
        ),
        filePath: deserializeParam(
          data['file_path'],
          ParamType.String,
          false,
        ),
        fileBase64: deserializeParam(
          data['file_base64'],
          ParamType.String,
          false,
        ),
        fileSize: deserializeParam(
          data['file_size'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FileStruct &&
        fileName == other.fileName &&
        filePath == other.filePath &&
        fileBase64 == other.fileBase64 &&
        fileSize == other.fileSize;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fileName, filePath, fileBase64, fileSize]);
}

FileStruct createFileStruct({
  String? fileName,
  String? filePath,
  String? fileBase64,
  int? fileSize,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FileStruct(
      fileName: fileName,
      filePath: filePath,
      fileBase64: fileBase64,
      fileSize: fileSize,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FileStruct? updateFileStruct(
  FileStruct? file, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    file
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFileStructData(
  Map<String, dynamic> firestoreData,
  FileStruct? file,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (file == null) {
    return;
  }
  if (file.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && file.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fileData = getFileFirestoreData(file, forFieldValue);
  final nestedData = fileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = file.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFileFirestoreData(
  FileStruct? file, [
  bool forFieldValue = false,
]) {
  if (file == null) {
    return {};
  }
  final firestoreData = mapToFirestore(file.toMap());

  // Add any Firestore field values
  file.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFileListFirestoreData(
  List<FileStruct>? files,
) =>
    files?.map((e) => getFileFirestoreData(e, true)).toList() ?? [];
