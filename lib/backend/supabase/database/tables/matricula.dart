import '../database.dart';

class MatriculaTable extends SupabaseTable<MatriculaRow> {
  @override
  String get tableName => 'MATRICULA';

  @override
  MatriculaRow createRow(Map<String, dynamic> data) => MatriculaRow(data);
}

class MatriculaRow extends SupabaseDataRow {
  MatriculaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MatriculaTable();

  int get idMat => getField<int>('id_mat')!;
  set idMat(int value) => setField<int>('id_mat', value);

  int get idTurma => getField<int>('id_turma')!;
  set idTurma(int value) => setField<int>('id_turma', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
