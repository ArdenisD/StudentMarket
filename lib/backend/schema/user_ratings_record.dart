import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRatingsRecord extends FirestoreRecord {
  UserRatingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ratingId" field.
  String? _ratingId;
  String get ratingId => _ratingId ?? '';
  bool hasRatingId() => _ratingId != null;

  // "fromUserId" field.
  String? _fromUserId;
  String get fromUserId => _fromUserId ?? '';
  bool hasFromUserId() => _fromUserId != null;

  // "toUserId" field.
  String? _toUserId;
  String get toUserId => _toUserId ?? '';
  bool hasToUserId() => _toUserId != null;

  // "chatId" field.
  String? _chatId;
  String get chatId => _chatId ?? '';
  bool hasChatId() => _chatId != null;

  // "ratingScore" field.
  int? _ratingScore;
  int get ratingScore => _ratingScore ?? 0;
  bool hasRatingScore() => _ratingScore != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _ratingId = snapshotData['ratingId'] as String?;
    _fromUserId = snapshotData['fromUserId'] as String?;
    _toUserId = snapshotData['toUserId'] as String?;
    _chatId = snapshotData['chatId'] as String?;
    _ratingScore = castToType<int>(snapshotData['ratingScore']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userRatings');

  static Stream<UserRatingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRatingsRecord.fromSnapshot(s));

  static Future<UserRatingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRatingsRecord.fromSnapshot(s));

  static UserRatingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRatingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRatingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRatingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRatingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRatingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRatingsRecordData({
  String? ratingId,
  String? fromUserId,
  String? toUserId,
  String? chatId,
  int? ratingScore,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ratingId': ratingId,
      'fromUserId': fromUserId,
      'toUserId': toUserId,
      'chatId': chatId,
      'ratingScore': ratingScore,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRatingsRecordDocumentEquality implements Equality<UserRatingsRecord> {
  const UserRatingsRecordDocumentEquality();

  @override
  bool equals(UserRatingsRecord? e1, UserRatingsRecord? e2) {
    return e1?.ratingId == e2?.ratingId &&
        e1?.fromUserId == e2?.fromUserId &&
        e1?.toUserId == e2?.toUserId &&
        e1?.chatId == e2?.chatId &&
        e1?.ratingScore == e2?.ratingScore &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(UserRatingsRecord? e) => const ListEquality().hash([
        e?.ratingId,
        e?.fromUserId,
        e?.toUserId,
        e?.chatId,
        e?.ratingScore,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRatingsRecord;
}
