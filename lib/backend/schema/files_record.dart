import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FilesRecord extends FirestoreRecord {
  FilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  bool hasFileName() => _fileName != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _fileName = snapshotData['file_name'] as String?;
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('files');

  static Stream<FilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilesRecord.fromSnapshot(s));

  static Future<FilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilesRecord.fromSnapshot(s));

  static FilesRecord fromSnapshot(DocumentSnapshot snapshot) => FilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilesRecordData({
  String? fileName,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'file_name': fileName,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilesRecordDocumentEquality implements Equality<FilesRecord> {
  const FilesRecordDocumentEquality();

  @override
  bool equals(FilesRecord? e1, FilesRecord? e2) {
    return e1?.fileName == e2?.fileName && e1?.url == e2?.url;
  }

  @override
  int hash(FilesRecord? e) => const ListEquality().hash([e?.fileName, e?.url]);

  @override
  bool isValidKey(Object? o) => o is FilesRecord;
}
