import '../database.dart';

class PrivateGroupsTable extends SupabaseTable<PrivateGroupsRow> {
  @override
  String get tableName => 'private_groups';

  @override
  PrivateGroupsRow createRow(Map<String, dynamic> data) =>
      PrivateGroupsRow(data);
}

class PrivateGroupsRow extends SupabaseDataRow {
  PrivateGroupsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PrivateGroupsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get ownerId => getField<String>('owner_id')!;
  set ownerId(String value) => setField<String>('owner_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
