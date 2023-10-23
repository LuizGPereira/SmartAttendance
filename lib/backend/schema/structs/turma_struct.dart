// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TurmaStruct extends FFFirebaseStruct {
  TurmaStruct({
    int? id,
    int? professorId,
    String? turmaNome,
    String? semestre,
    List<HorarioStruct>? horarios,
    bool? aberta,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _professorId = professorId,
        _turmaNome = turmaNome,
        _semestre = semestre,
        _horarios = horarios,
        _aberta = aberta,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "professor_id" field.
  int? _professorId;
  int get professorId => _professorId ?? 0;
  set professorId(int? val) => _professorId = val;
  void incrementProfessorId(int amount) => _professorId = professorId + amount;
  bool hasProfessorId() => _professorId != null;

  // "turma_nome" field.
  String? _turmaNome;
  String get turmaNome => _turmaNome ?? '';
  set turmaNome(String? val) => _turmaNome = val;
  bool hasTurmaNome() => _turmaNome != null;

  // "semestre" field.
  String? _semestre;
  String get semestre => _semestre ?? '';
  set semestre(String? val) => _semestre = val;
  bool hasSemestre() => _semestre != null;

  // "horarios" field.
  List<HorarioStruct>? _horarios;
  List<HorarioStruct> get horarios => _horarios ?? const [];
  set horarios(List<HorarioStruct>? val) => _horarios = val;
  void updateHorarios(Function(List<HorarioStruct>) updateFn) =>
      updateFn(_horarios ??= []);
  bool hasHorarios() => _horarios != null;

  // "aberta" field.
  bool? _aberta;
  bool get aberta => _aberta ?? false;
  set aberta(bool? val) => _aberta = val;
  bool hasAberta() => _aberta != null;

  static TurmaStruct fromMap(Map<String, dynamic> data) => TurmaStruct(
        id: castToType<int>(data['id']),
        professorId: castToType<int>(data['professor_id']),
        turmaNome: data['turma_nome'] as String?,
        semestre: data['semestre'] as String?,
        horarios: getStructList(
          data['horarios'],
          HorarioStruct.fromMap,
        ),
        aberta: data['aberta'] as bool?,
      );

  static TurmaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TurmaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'professor_id': _professorId,
        'turma_nome': _turmaNome,
        'semestre': _semestre,
        'horarios': _horarios?.map((e) => e.toMap()).toList(),
        'aberta': _aberta,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'professor_id': serializeParam(
          _professorId,
          ParamType.int,
        ),
        'turma_nome': serializeParam(
          _turmaNome,
          ParamType.String,
        ),
        'semestre': serializeParam(
          _semestre,
          ParamType.String,
        ),
        'horarios': serializeParam(
          _horarios,
          ParamType.DataStruct,
          true,
        ),
        'aberta': serializeParam(
          _aberta,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TurmaStruct fromSerializableMap(Map<String, dynamic> data) =>
      TurmaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        professorId: deserializeParam(
          data['professor_id'],
          ParamType.int,
          false,
        ),
        turmaNome: deserializeParam(
          data['turma_nome'],
          ParamType.String,
          false,
        ),
        semestre: deserializeParam(
          data['semestre'],
          ParamType.String,
          false,
        ),
        horarios: deserializeStructParam<HorarioStruct>(
          data['horarios'],
          ParamType.DataStruct,
          true,
          structBuilder: HorarioStruct.fromSerializableMap,
        ),
        aberta: deserializeParam(
          data['aberta'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TurmaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TurmaStruct &&
        id == other.id &&
        professorId == other.professorId &&
        turmaNome == other.turmaNome &&
        semestre == other.semestre &&
        listEquality.equals(horarios, other.horarios) &&
        aberta == other.aberta;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, professorId, turmaNome, semestre, horarios, aberta]);
}

TurmaStruct createTurmaStruct({
  int? id,
  int? professorId,
  String? turmaNome,
  String? semestre,
  bool? aberta,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TurmaStruct(
      id: id,
      professorId: professorId,
      turmaNome: turmaNome,
      semestre: semestre,
      aberta: aberta,
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
