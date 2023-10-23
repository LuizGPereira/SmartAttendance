import '../database.dart';

class TurmasTable extends SupabaseTable<TurmasRow> {
  @override
  String get tableName => 'Turmas';

  @override
  TurmasRow createRow(Map<String, dynamic> data) => TurmasRow(data);
}

class TurmasRow extends SupabaseDataRow {
  TurmasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TurmasTable();

  int get idT => getField<int>('id_t')!;
  set idT(int value) => setField<int>('id_t', value);

  String get nometurma => getField<String>('Nometurma')!;
  set nometurma(String value) => setField<String>('Nometurma', value);

  DateTime? get ano => getField<DateTime>('ano');
  set ano(DateTime? value) => setField<DateTime>('ano', value);

  int? get semestre => getField<int>('semestre');
  set semestre(int? value) => setField<int>('semestre', value);

  String? get diasemana1 => getField<String>('diasemana1');
  set diasemana1(String? value) => setField<String>('diasemana1', value);

  PostgresTime? get horasemana1 => getField<PostgresTime>('horasemana1');
  set horasemana1(PostgresTime? value) =>
      setField<PostgresTime>('horasemana1', value);

  String? get diasemana2 => getField<String>('diasemana2');
  set diasemana2(String? value) => setField<String>('diasemana2', value);

  PostgresTime? get horasemana2 => getField<PostgresTime>('horasemana2');
  set horasemana2(PostgresTime? value) =>
      setField<PostgresTime>('horasemana2', value);

  PostgresTime? get horasemana1final =>
      getField<PostgresTime>('horasemana1final');
  set horasemana1final(PostgresTime? value) =>
      setField<PostgresTime>('horasemana1final', value);

  PostgresTime? get horasemana2final =>
      getField<PostgresTime>('horasemana2final');
  set horasemana2final(PostgresTime? value) =>
      setField<PostgresTime>('horasemana2final', value);
}
