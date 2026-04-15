import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingsRecord extends FirestoreRecord {
  ListingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "imageOne" field.
  String? _imageOne;
  String get imageOne => _imageOne ?? '';
  bool hasImageOne() => _imageOne != null;

  // "imageTwo" field.
  String? _imageTwo;
  String get imageTwo => _imageTwo ?? '';
  bool hasImageTwo() => _imageTwo != null;

  // "imageThree" field.
  String? _imageThree;
  String get imageThree => _imageThree ?? '';
  bool hasImageThree() => _imageThree != null;

  // "college" field.
  String? _college;
  String get college => _college ?? '';
  bool hasCollege() => _college != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _price = snapshotData['price'] as String?;
    _uid = snapshotData['uid'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _imageOne = snapshotData['imageOne'] as String?;
    _imageTwo = snapshotData['imageTwo'] as String?;
    _imageThree = snapshotData['imageThree'] as String?;
    _college = snapshotData['college'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListingsRecord.fromSnapshot(s));

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListingsRecord.fromSnapshot(s));

  static ListingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListingsRecordData({
  String? title,
  String? description,
  String? category,
  DateTime? createdAt,
  String? price,
  String? uid,
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? imageOne,
  String? imageTwo,
  String? imageThree,
  String? college,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'category': category,
      'created_at': createdAt,
      'price': price,
      'uid': uid,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'imageOne': imageOne,
      'imageTwo': imageTwo,
      'imageThree': imageThree,
      'college': college,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListingsRecordDocumentEquality implements Equality<ListingsRecord> {
  const ListingsRecordDocumentEquality();

  @override
  bool equals(ListingsRecord? e1, ListingsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.createdAt == e2?.createdAt &&
        e1?.price == e2?.price &&
        e1?.uid == e2?.uid &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.imageOne == e2?.imageOne &&
        e1?.imageTwo == e2?.imageTwo &&
        e1?.imageThree == e2?.imageThree &&
        e1?.college == e2?.college;
  }

  @override
  int hash(ListingsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.category,
        e?.createdAt,
        e?.price,
        e?.uid,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.imageOne,
        e?.imageTwo,
        e?.imageThree,
        e?.college
      ]);

  @override
  bool isValidKey(Object? o) => o is ListingsRecord;
}
