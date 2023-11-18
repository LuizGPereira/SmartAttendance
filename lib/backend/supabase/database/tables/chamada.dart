import '../database.dart';

class ChamadaTable extends SupabaseTable<ChamadaRow> {
  @override
  String get tableName => 'chamada';

  @override
  ChamadaRow createRow(Map<String, dynamic> data) => ChamadaRow(data);
}

class ChamadaRow extends SupabaseDataRow {
  ChamadaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChamadaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idTurma => getField<int>('id_turma');
  set idTurma(int? value) => setField<int>('id_turma', value);

  int? get numchamada => getField<int>('numchamada');
  set numchamada(int? value) => setField<int>('numchamada', value);
}
