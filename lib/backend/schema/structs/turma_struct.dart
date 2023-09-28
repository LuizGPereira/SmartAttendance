// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TurmaStruct extends FFFirebaseStruct {
  TurmaStruct({
    String? ano,
    String? nome,
    String? semestre,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ano = ano,
        _nome = nome,
        _semestre = semestre,
        super(firestoreUtilData);

  // "ano" field.
  String? _ano;
  String get ano => _ano ?? '';
  set ano(String? val) => _ano = val;
  bool hasAno() => _ano != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "semestre" field.
  String? _semestre;
  String get semestre => _semestre ?? '';
  set semestre(String? val) => _semestre = val;
  bool hasSemestre() => _semestre != null;

  static TurmaStruct fromMap(Map<String, dynamic> data) => TurmaStruct(
        ano: data['ano'] as String?,
        nome: data['nome'] as String?,
        semestre: data['semestre'] as String?,
      );

  static TurmaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TurmaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'ano': _ano,
        'nome': _nome,
        'semestre': _semestre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ano': serializeParam(
          _ano,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'semestre': serializeParam(
          _semestre,
          ParamType.String,
        ),
      }.withoutNulls;

  static TurmaStruct fromSerializableMap(Map<String, dynamic> data) =>
      TurmaStruct(
        ano: deserializeParam(
          data['ano'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        semestre: deserializeParam(
          data['semestre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TurmaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TurmaStruct &&
        ano == other.ano &&
        nome == other.nome &&
        semestre == other.semestre;
  }

  @override
  int get hashCode => const ListEquality().hash([ano, nome, semestre]);
}

TurmaStruct createTurmaStruct({
  String? ano,
  String? nome,
  String? semestre,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TurmaStruct(
      ano: ano,
      nome: nome,
      semestre: semestre,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TurmaStruct? updateTurmaStruct(
  TurmaStruct? turma, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    turma
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTurmaStructData(
  Map<String, dynamic> firestoreData,
  TurmaStruct? turma,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (turma == null) {
    return;
  }
  if (turma.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && turma.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final turmaData = getTurmaFirestoreData(turma, forFieldValue);
  final nestedData = turmaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = turma.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTurmaFirestoreData(
  TurmaStruct? turma, [
  bool forFieldValue = false,
]) {
  if (turma == null) {
    return {};
  }
  final firestoreData = mapToFirestore(turma.toMap());

  // Add any Firestore field values
  turma.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTurmaListFirestoreData(
  List<TurmaStruct>? turmas,
) =>
    turmas?.map((e) => getTurmaFirestoreData(e, true)).toList() ?? [];
