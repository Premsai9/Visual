import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('First Name');
  set firstName(String? value) => setField<String>('First Name', value);

  String? get lastName => getField<String>('Last Name');
  set lastName(String? value) => setField<String>('Last Name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get gender => getField<String>('Gender');
  set gender(String? value) => setField<String>('Gender', value);

  String? get bio => getField<String>('Bio');
  set bio(String? value) => setField<String>('Bio', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);
}
