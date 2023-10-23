// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    int? id,
    String? usuarioNome,
    String? usuarioTipo,
    String? idExterno,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _usuarioNome = usuarioNome,
        _usuarioTipo = usuarioTipo,
        _idExterno = idExterno,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "usuario_nome" field.
  String? _usuarioNome;
  String get usuarioNome => _usuarioNome ?? '';
  set usuarioNome(String? val) => _usuarioNome = val;
  bool hasUsuarioNome() => _usuarioNome != null;

  // "usuario_tipo" field.
  String? _usuarioTipo;
  String get usuarioTipo => _usuarioTipo ?? '';
  set usuarioTipo(String? val) => _usuarioTipo = val;
  bool hasUsuarioTipo() => _usuarioTipo != null;

  // "id_externo" field.
  String? _idExterno;
  String get idExterno => _idExterno ?? '';
  set idExterno(String? val) => _idExterno = val;
  bool hasIdExterno() => _idExterno != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        usuarioNome: data['usuario_nome'] as String?,
        usuarioTipo: data['usuario_tipo'] as String?,
        idExterno: data['id_externo'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'usuario_nome': _usuarioNome,
        'usuario_tipo': _usuarioTipo,
        'id_externo': _idExterno,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'usuario_nome': serializeParam(
          _usuarioNome,
          ParamType.String,
        ),
        'usuario_tipo': serializeParam(
          _usuarioTipo,
          ParamType.String,
        ),
        'id_externo': serializeParam(
          _idExterno,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        usuarioNome: deserializeParam(
          data['usuario_nome'],
          ParamType.String,
          false,
        ),
        usuarioTipo: deserializeParam(
          data['usuario_tipo'],
          ParamType.String,
          false,
        ),
        idExterno: deserializeParam(
          data['id_externo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        usuarioNome == other.usuarioNome &&
        usuarioTipo == other.usuarioTipo &&
        idExterno == other.idExterno;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, usuarioNome, usuarioTipo, idExterno]);
}

UserStruct createUserStruct({
  int? id,
  String? usuarioNome,
  String? usuarioTipo,
  String? idExterno,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      id: id,
      usuarioNome: usuarioNome,
      usuarioTipo: usuarioTipo,
      idExterno: idExterno,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
