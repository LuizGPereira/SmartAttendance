// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PresencaStruct extends FFFirebaseStruct {
  PresencaStruct({
    String? status,
    String? caminhoAtestado,
    UserStruct? aluno,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _caminhoAtestado = caminhoAtestado,
        _aluno = aluno,
        _id = id,
        super(firestoreUtilData);

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "caminho_atestado" field.
  String? _caminhoAtestado;
  String get caminhoAtestado => _caminhoAtestado ?? '';
  set caminhoAtestado(String? val) => _caminhoAtestado = val;
  bool hasCaminhoAtestado() => _caminhoAtestado != null;

  // "aluno" field.
  UserStruct? _aluno;
  UserStruct get aluno => _aluno ?? UserStruct();
  set aluno(UserStruct? val) => _aluno = val;
  void updateAluno(Function(UserStruct) updateFn) =>
      updateFn(_aluno ??= UserStruct());
  bool hasAluno() => _aluno != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static PresencaStruct fromMap(Map<String, dynamic> data) => PresencaStruct(
        status: data['status'] as String?,
        caminhoAtestado: data['caminho_atestado'] as String?,
        aluno: UserStruct.maybeFromMap(data['aluno']),
        id: castToType<int>(data['id']),
      );

  static PresencaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PresencaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'caminho_atestado': _caminhoAtestado,
        'aluno': _aluno?.toMap(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'caminho_atestado': serializeParam(
          _caminhoAtestado,
          ParamType.String,
        ),
        'aluno': serializeParam(
          _aluno,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static PresencaStruct fromSerializableMap(Map<String, dynamic> data) =>
      PresencaStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        caminhoAtestado: deserializeParam(
          data['caminho_atestado'],
          ParamType.String,
          false,
        ),
        aluno: deserializeStructParam(
          data['aluno'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PresencaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PresencaStruct &&
        status == other.status &&
        caminhoAtestado == other.caminhoAtestado &&
        aluno == other.aluno &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, caminhoAtestado, aluno, id]);
}

PresencaStruct createPresencaStruct({
  String? status,
  String? caminhoAtestado,
  UserStruct? aluno,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PresencaStruct(
      status: status,
      caminhoAtestado: caminhoAtestado,
      aluno: aluno ?? (clearUnsetFields ? UserStruct() : null),
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PresencaStruct? updatePresencaStruct(
  PresencaStruct? presenca, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    presenca
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPresencaStructData(
  Map<String, dynamic> firestoreData,
  PresencaStruct? presenca,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (presenca == null) {
    return;
  }
  if (presenca.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && presenca.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final presencaData = getPresencaFirestoreData(presenca, forFieldValue);
  final nestedData = presencaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = presenca.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPresencaFirestoreData(
  PresencaStruct? presenca, [
  bool forFieldValue = false,
]) {
  if (presenca == null) {
    return {};
  }
  final firestoreData = mapToFirestore(presenca.toMap());

  // Handle nested data for "aluno" field.
  addUserStructData(
    firestoreData,
    presenca.hasAluno() ? presenca.aluno : null,
    'aluno',
    forFieldValue,
  );

  // Add any Firestore field values
  presenca.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPresencaListFirestoreData(
  List<PresencaStruct>? presencas,
) =>
    presencas?.map((e) => getPresencaFirestoreData(e, true)).toList() ?? [];
