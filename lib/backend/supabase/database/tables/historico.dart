import '../database.dart';

class HistoricoTable extends SupabaseTable<HistoricoRow> {
  @override
  String get tableName => 'historico';

  @override
  HistoricoRow createRow(Map<String, dynamic> data) => HistoricoRow(data);
}

class HistoricoRow extends SupabaseDataRow {
  HistoricoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistoricoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  int? get media => getField<int>('media');
  set media(int? value) => setField<int>('media', value);

  int? get numfaltas => getField<int>('numfaltas');
  set numfaltas(int? value) => setField<int>('numfaltas', value);
}
