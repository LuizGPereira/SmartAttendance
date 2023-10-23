// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorarioStruct extends FFFirebaseStruct {
  HorarioStruct({
    int? turmaId,
    String? diaSemana,
    String? horaInicio,
    String? horaFim,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _turmaId = turmaId,
        _diaSemana = diaSemana,
        _horaInicio = horaInicio,
        _horaFim = horaFim,
        super(firestoreUtilData);

  // "turma_id" field.
  int? _turmaId;
  int get turmaId => _turmaId ?? 0;
  set turmaId(int? val) => _turmaId = val;
  void incrementTurmaId(int amount) => _turmaId = turmaId + amount;
  bool hasTurmaId() => _turmaId != null;

  // "dia_semana" field.
  String? _diaSemana;
  String get diaSemana => _diaSemana ?? '';
  set diaSemana(String? val) => _diaSemana = val;
  bool hasDiaSemana() => _diaSemana != null;

  // "hora_inicio" field.
  String? _horaInicio;
  String get horaInicio => _horaInicio ?? '';
  set horaInicio(String? val) => _horaInicio = val;
  bool hasHoraInicio() => _horaInicio != null;

  // "hora_fim" field.
  String? _horaFim;
  String get horaFim => _horaFim ?? '';
  set horaFim(String? val) => _horaFim = val;
  bool hasHoraFim() => _horaFim != null;

  static HorarioStruct fromMap(Map<String, dynamic> data) => HorarioStruct(
        turmaId: castToType<int>(data['turma_id']),
        diaSemana: data['dia_semana'] as String?,
        horaInicio: data['hora_inicio'] as String?,
        horaFim: data['hora_fim'] as String?,
      );

  static HorarioStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? HorarioStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'turma_id': _turmaId,
        'dia_semana': _diaSemana,
        'hora_inicio': _horaInicio,
        'hora_fim': _horaFim,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'turma_id': serializeParam(
          _turmaId,
          ParamType.int,
        ),
        'dia_semana': serializeParam(
          _diaSemana,
          ParamType.String,
        ),
        'hora_inicio': serializeParam(
          _horaInicio,
          ParamType.String,
        ),
        'hora_fim': serializeParam(
          _horaFim,
          ParamType.String,
        ),
      }.withoutNulls;

  static HorarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      HorarioStruct(
        turmaId: deserializeParam(
          data['turma_id'],
          ParamType.int,
          false,
        ),
        diaSemana: deserializeParam(
          data['dia_semana'],
          ParamType.String,
          false,
        ),
        horaInicio: deserializeParam(
          data['hora_inicio'],
          ParamType.String,
          false,
        ),
        horaFim: deserializeParam(
          data['hora_fim'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HorarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HorarioStruct &&
        turmaId == other.turmaId &&
        diaSemana == other.diaSemana &&
        horaInicio == other.horaInicio &&
        horaFim == other.horaFim;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([turmaId, diaSemana, horaInicio, horaFim]);
}

HorarioStruct createHorarioStruct({
  int? turmaId,
  String? diaSemana,
  String? horaInicio,
  String? horaFim,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HorarioStruct(
      turmaId: turmaId,
      diaSemana: diaSemana,
      horaInicio: horaInicio,
      horaFim: horaFim,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HorarioStruct? updateHorarioStruct(
  HorarioStruct? horario, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    horario
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHorarioStructData(
  Map<String, dynamic> firestoreData,
  HorarioStruct? horario,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (horario == null) {
    return;
  }
  if (horario.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && horario.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final horarioData = getHorarioFirestoreData(horario, forFieldValue);
  final nestedData = horarioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = horario.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHorarioFirestoreData(
  HorarioStruct? horario, [
  bool forFieldValue = false,
]) {
  if (horario == null) {
    return {};
  }
  final firestoreData = mapToFirestore(horario.toMap());

  // Add any Firestore field values
  horario.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHorarioListFirestoreData(
  List<HorarioStruct>? horarios,
) =>
    horarios?.map((e) => getHorarioFirestoreData(e, true)).toList() ?? [];
