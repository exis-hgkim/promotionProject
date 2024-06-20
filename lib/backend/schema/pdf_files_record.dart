import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PdfFilesRecord extends FirestoreRecord {
  PdfFilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  bool hasFileName() => _fileName != null;

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  bool hasFileUrl() => _fileUrl != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "file_size" field.
  int? _fileSize;
  int get fileSize => _fileSize ?? 0;
  bool hasFileSize() => _fileSize != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fileName = snapshotData['file_name'] as String?;
    _fileUrl = snapshotData['file_url'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _fileSize = castToType<int>(snapshotData['file_size']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pdfFiles')
          : FirebaseFirestore.instance.collectionGroup('pdfFiles');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('pdfFiles').doc(id);

  static Stream<PdfFilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PdfFilesRecord.fromSnapshot(s));

  static Future<PdfFilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PdfFilesRecord.fromSnapshot(s));

  static PdfFilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PdfFilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PdfFilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PdfFilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PdfFilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PdfFilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPdfFilesRecordData({
  String? fileName,
  String? fileUrl,
  DateTime? createdAt,
  int? fileSize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'file_name': fileName,
      'file_url': fileUrl,
      'created_at': createdAt,
      'file_size': fileSize,
    }.withoutNulls,
  );

  return firestoreData;
}

class PdfFilesRecordDocumentEquality implements Equality<PdfFilesRecord> {
  const PdfFilesRecordDocumentEquality();

  @override
  bool equals(PdfFilesRecord? e1, PdfFilesRecord? e2) {
    return e1?.fileName == e2?.fileName &&
        e1?.fileUrl == e2?.fileUrl &&
        e1?.createdAt == e2?.createdAt &&
        e1?.fileSize == e2?.fileSize;
  }

  @override
  int hash(PdfFilesRecord? e) => const ListEquality()
      .hash([e?.fileName, e?.fileUrl, e?.createdAt, e?.fileSize]);

  @override
  bool isValidKey(Object? o) => o is PdfFilesRecord;
}
