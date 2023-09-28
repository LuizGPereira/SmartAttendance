import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'USER';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('Nome')!;
  set nome(String value) => setField<String>('Nome', value);

  String? get perfil => getField<String>('Perfil');
  set perfil(String? value) => setField<String>('Perfil', value);

  String? get eMail => getField<String>('e-mail');
  set eMail(String? value) => setField<String>('e-mail', value);
}
