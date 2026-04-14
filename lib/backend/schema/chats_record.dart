import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyer_uid" field.
  String? _buyerUid;
  String get buyerUid => _buyerUid ?? '';
  bool hasBuyerUid() => _buyerUid != null;

  // "buyer_name" field.
  String? _buyerName;
  String get buyerName => _buyerName ?? '';
  bool hasBuyerName() => _buyerName != null;

  // "seller_uid" field.
  String? _sellerUid;
  String get sellerUid => _sellerUid ?? '';
  bool hasSellerUid() => _sellerUid != null;

  // "seller_name" field.
  String? _sellerName;
  String get sellerName => _sellerName ?? '';
  bool hasSellerName() => _sellerName != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "chat_Id" field.
  String? _chatId;
  String get chatId => _chatId ?? '';
  bool hasChatId() => _chatId != null;

  void _initializeFields() {
    _buyerUid = snapshotData['buyer_uid'] as String?;
    _buyerName = snapshotData['buyer_name'] as String?;
    _sellerUid = snapshotData['seller_uid'] as String?;
    _sellerName = snapshotData['seller_name'] as String?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _chatId = snapshotData['chat_Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? buyerUid,
  String? buyerName,
  String? sellerUid,
  String? sellerName,
  String? lastMessage,
  DateTime? lastMessageTime,
  String? chatId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer_uid': buyerUid,
      'buyer_name': buyerName,
      'seller_uid': sellerUid,
      'seller_name': sellerName,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
      'chat_Id': chatId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.buyerUid == e2?.buyerUid &&
        e1?.buyerName == e2?.buyerName &&
        e1?.sellerUid == e2?.sellerUid &&
        e1?.sellerName == e2?.sellerName &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        e1?.chatId == e2?.chatId;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.buyerUid,
        e?.buyerName,
        e?.sellerUid,
        e?.sellerName,
        e?.lastMessage,
        e?.lastMessageTime,
        e?.chatId
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
