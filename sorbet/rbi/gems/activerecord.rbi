# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activerecord/all/activerecord.rbi
#
# activerecord-5.2.4.3

module ActiveRecord
  def self.eager_load!; end
  def self.gem_version; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module ActiveRecord::VERSION
end
module ActiveRecord::AttributeMethods
  def [](attr_name); end
  def []=(attr_name, value); end
  def accessed_fields; end
  def attribute_for_inspect(attr_name); end
  def attribute_method?(attr_name); end
  def attribute_names; end
  def attribute_present?(attribute); end
  def attributes; end
  def attributes_for_create(attribute_names); end
  def attributes_for_update(attribute_names); end
  def attributes_with_values(attribute_names); end
  def attributes_with_values_for_create(attribute_names); end
  def attributes_with_values_for_update(attribute_names); end
  def has_attribute?(attr_name); end
  def pk_attribute?(name); end
  def readonly_attribute?(name); end
  def respond_to?(name, include_private = nil); end
  extend ActiveSupport::Autoload
  extend ActiveSupport::Concern
  include ActiveModel::AttributeMethods
end
module ActiveRecord::AttributeMethods::AttrNames
  def self.set_name_cache(name, value); end
end
class ActiveRecord::AttributeMethods::GeneratedAttributeMethods < Module
  def lock; end
  def locked?; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
  include Mutex_m
end
module ActiveRecord::AttributeMethods::ClassMethods
  def attribute_method?(attribute); end
  def attribute_names; end
  def class_method_defined_within?(name, klass, superklass = nil); end
  def column_for_attribute(name); end
  def dangerous_attribute_method?(name); end
  def dangerous_class_method?(method_name); end
  def define_attribute_methods; end
  def enforce_raw_sql_whitelist(args, whitelist: nil); end
  def has_attribute?(attr_name); end
  def inherited(child_class); end
  def initialize_generated_modules; end
  def instance_method_already_implemented?(method_name); end
  def method_defined_within?(name, klass, superklass = nil); end
  def undefine_attribute_methods; end
end
module ActiveRecord::ConnectionAdapters
  extend ActiveSupport::Autoload
  extend ActiveSupport::Autoload
end
module ActiveRecord::ConnectionAdapters::DetermineIfPreparableVisitor
  def accept(*arg0); end
  def preparable; end
  def preparable=(arg0); end
  def visit_Arel_Nodes_In(o, collector); end
  def visit_Arel_Nodes_SqlLiteral(*arg0); end
end
class ActiveRecord::ConnectionAdapters::SchemaCache
  def add(table_name); end
  def clear!; end
  def clear_data_source_cache!(name); end
  def columns(table_name); end
  def columns_hash(table_name); end
  def connection; end
  def connection=(arg0); end
  def data_source_exists?(name); end
  def data_sources(name); end
  def encode_with(coder); end
  def init_with(coder); end
  def initialize(conn); end
  def initialize_dup(other); end
  def marshal_dump; end
  def marshal_load(array); end
  def prepare_data_sources; end
  def primary_keys(table_name); end
  def size; end
  def version; end
end
class ActiveRecord::ConnectionAdapters::SqlTypeMetadata
  def ==(other); end
  def attributes_for_hash; end
  def eql?(other); end
  def hash; end
  def initialize(sql_type: nil, type: nil, limit: nil, precision: nil, scale: nil); end
  def limit; end
  def precision; end
  def scale; end
  def sql_type; end
  def type; end
end
class ActiveRecord::SchemaDumper
  def define_params; end
  def dump(stream); end
  def extensions(stream); end
  def foreign_keys(table, stream); end
  def format_colspec(colspec); end
  def format_index_parts(options); end
  def format_options(options); end
  def formatted_version; end
  def header(stream); end
  def ignore_tables; end
  def ignore_tables=(obj); end
  def ignored?(table_name); end
  def index_parts(index); end
  def indexes(table, stream); end
  def indexes_in_create(table, stream); end
  def initialize(connection, options = nil); end
  def remove_prefix_and_suffix(table); end
  def self.dump(connection = nil, stream = nil, config = nil); end
  def self.generate_options(config); end
  def self.ignore_tables; end
  def self.ignore_tables=(obj); end
  def self.new(*arg0); end
  def table(table, stream); end
  def tables(stream); end
  def trailer(stream); end
end
class ActiveRecord::ConnectionAdapters::SchemaDumper < ActiveRecord::SchemaDumper
  def column_spec(column); end
  def column_spec_for_primary_key(column); end
  def default_primary_key?(column); end
  def explicit_primary_key_default?(column); end
  def prepare_column_options(column); end
  def schema_collation(column); end
  def schema_default(column); end
  def schema_expression(column); end
  def schema_limit(column); end
  def schema_precision(column); end
  def schema_scale(column); end
  def schema_type(column); end
  def schema_type_with_virtual(column); end
  def self.create(connection, options); end
end
class ActiveRecord::ConnectionAdapters::AbstractAdapter
  def __callbacks; end
  def __callbacks?; end
  def _checkin_callbacks; end
  def _checkout_callbacks; end
  def _run_checkin_callbacks(&block); end
  def _run_checkout_callbacks(&block); end
  def active?; end
  def adapter_name; end
  def arel_visitor; end
  def can_perform_case_insensitive_comparison_for?(column); end
  def case_insensitive_comparison(table, attribute, column, value); end
  def case_sensitive_comparison(table, attribute, column, value); end
  def clear_cache!; end
  def close; end
  def collector; end
  def column_for(table_name, column_name); end
  def column_name_for_operation(operation, node); end
  def column_name_from_arel_node(node); end
  def default_index_type?(index); end
  def delete(*arg0); end
  def disable_extension(name); end
  def disable_referential_integrity; end
  def discard!; end
  def disconnect!; end
  def enable_extension(name); end
  def expire; end
  def extensions; end
  def extract_limit(sql_type); end
  def extract_precision(sql_type); end
  def extract_scale(sql_type); end
  def get_advisory_lock(lock_id); end
  def in_use?; end
  def index_algorithms; end
  def initialize(connection, logger = nil, config = nil); end
  def initialize_type_map(m = nil); end
  def insert(*arg0); end
  def lease; end
  def lock; end
  def log(sql, name = nil, binds = nil, type_casted_binds = nil, statement_name = nil); end
  def logger; end
  def migration_context; end
  def migrations_paths; end
  def owner; end
  def pool; end
  def pool=(arg0); end
  def prefetch_primary_key?(table_name = nil); end
  def prepared_statements; end
  def raw_connection; end
  def reconnect!; end
  def register_class_with_limit(mapping, key, klass); end
  def register_class_with_precision(mapping, key, klass); end
  def release_advisory_lock(lock_id); end
  def reload_type_map; end
  def requires_reloading?; end
  def reset!; end
  def rollback_db_transaction(*arg0); end
  def rollback_to_savepoint(*arg0); end
  def schema_cache; end
  def schema_cache=(cache); end
  def seconds_idle; end
  def self.__callbacks; end
  def self.__callbacks=(val); end
  def self.__callbacks?; end
  def self._checkin_callbacks; end
  def self._checkin_callbacks=(value); end
  def self._checkout_callbacks; end
  def self._checkout_callbacks=(value); end
  def self.type_cast_config_to_boolean(config); end
  def self.type_cast_config_to_integer(config); end
  def steal!; end
  def supports_advisory_locks?; end
  def supports_bulk_alter?; end
  def supports_comments?; end
  def supports_comments_in_create?; end
  def supports_datetime_with_precision?; end
  def supports_ddl_transactions?; end
  def supports_explain?; end
  def supports_expression_index?; end
  def supports_extensions?; end
  def supports_foreign_keys?; end
  def supports_foreign_keys_in_create?; end
  def supports_foreign_tables?; end
  def supports_index_sort_order?; end
  def supports_indexes_in_create?; end
  def supports_json?; end
  def supports_multi_insert?; end
  def supports_partial_index?; end
  def supports_savepoints?; end
  def supports_transaction_isolation?; end
  def supports_validate_constraints?; end
  def supports_views?; end
  def supports_virtual_columns?; end
  def translate_exception(exception, message); end
  def translate_exception_class(e, sql); end
  def type_map; end
  def unprepared_statement; end
  def update(*arg0); end
  def valid_type?(type); end
  def verify!; end
  def visitor; end
  def visitor=(arg0); end
  def without_prepared_statement?(binds); end
  extend ActiveSupport::Callbacks::ClassMethods
  extend ActiveSupport::DescendantsTracker
  include ActiveRecord::ConnectionAdapters::DatabaseLimits
  include ActiveRecord::ConnectionAdapters::QueryCache
  include ActiveRecord::ConnectionAdapters::Quoting
  include ActiveRecord::ConnectionAdapters::Savepoints
  include ActiveSupport::Callbacks
end
class ActiveRecord::ConnectionAdapters::AbstractAdapter::SchemaCreation
  def accept(o); end
  def action_sql(action, dependency); end
  def add_column_options!(sql, options); end
  def add_table_options!(create_sql, options); end
  def column_options(o); end
  def foreign_key_in_create(from_table, to_table, options); end
  def foreign_key_options(*args, &block); end
  def initialize(conn); end
  def options_include_default?(*args, &block); end
  def quote_column_name(*args, &block); end
  def quote_default_expression(*args, &block); end
  def quote_table_name(*args, &block); end
  def supports_foreign_keys_in_create?(*args, &block); end
  def supports_indexes_in_create?(*args, &block); end
  def table_options(o); end
  def to_sql(sql); end
  def type_to_sql(*args, &block); end
  def visit_AddColumnDefinition(o); end
  def visit_AddForeignKey(o); end
  def visit_AlterTable(o); end
  def visit_ColumnDefinition(o); end
  def visit_DropForeignKey(name); end
  def visit_ForeignKeyDefinition(o); end
  def visit_PrimaryKeyDefinition(o); end
  def visit_TableDefinition(o); end
end
module ActiveRecord::ConnectionAdapters::Quoting
  def _quote(value); end
  def _type_cast(value); end
  def id_value_for_database(value); end
  def lookup_cast_type(sql_type); end
  def lookup_cast_type_from_column(column); end
  def quote(value); end
  def quote_column_name(column_name); end
  def quote_default_expression(value, column); end
  def quote_string(s); end
  def quote_table_name(table_name); end
  def quote_table_name_for_assignment(table, attr); end
  def quoted_binary(value); end
  def quoted_date(value); end
  def quoted_false; end
  def quoted_time(value); end
  def quoted_true; end
  def type_cast(value, column = nil); end
  def type_cast_from_column(column, value); end
  def type_casted_binds(binds); end
  def types_which_need_no_typecasting; end
  def unquoted_false; end
  def unquoted_true; end
end
module ActiveRecord::ConnectionAdapters::DatabaseStatements
  def add_transaction_record(record); end
  def arel_from_relation(relation); end
  def begin_db_transaction; end
  def begin_isolated_db_transaction(isolation); end
  def begin_transaction(*args, &block); end
  def build_fixture_sql(fixtures, table_name); end
  def cacheable_query(klass, arel); end
  def combine_multi_statements(total_sql); end
  def commit_db_transaction; end
  def commit_transaction(*args, &block); end
  def create(arel, name = nil, pk = nil, id_value = nil, sequence_name = nil, binds = nil); end
  def current_transaction(*args, &block); end
  def default_insert_value(column); end
  def default_sequence_name(table, column); end
  def delete(arel, name = nil, binds = nil); end
  def empty_insert_statement_value; end
  def exec_delete(sql, name = nil, binds = nil); end
  def exec_insert(sql, name = nil, binds = nil, pk = nil, sequence_name = nil); end
  def exec_query(sql, name = nil, binds = nil, prepare: nil); end
  def exec_rollback_db_transaction; end
  def exec_update(sql, name = nil, binds = nil); end
  def execute(sql, name = nil); end
  def initialize; end
  def insert(arel, name = nil, pk = nil, id_value = nil, sequence_name = nil, binds = nil); end
  def insert_fixture(fixture, table_name); end
  def insert_fixtures(fixtures, table_name); end
  def insert_fixtures_set(fixture_set, tables_to_delete = nil); end
  def join_to_delete(update, select, key); end
  def join_to_update(update, select, key); end
  def last_inserted_id(result); end
  def open_transactions(*args, &block); end
  def query(sql, name = nil); end
  def query_value(sql, name = nil); end
  def query_values(sql, name = nil); end
  def reset_sequence!(table, column, sequence = nil); end
  def reset_transaction; end
  def rollback_db_transaction; end
  def rollback_to_savepoint(name = nil); end
  def rollback_transaction(*args, &block); end
  def sanitize_limit(limit); end
  def select(sql, name = nil, binds = nil); end
  def select_all(arel, name = nil, binds = nil, preparable: nil); end
  def select_one(arel, name = nil, binds = nil); end
  def select_prepared(sql, name = nil, binds = nil); end
  def select_rows(arel, name = nil, binds = nil); end
  def select_value(arel, name = nil, binds = nil); end
  def select_values(arel, name = nil, binds = nil); end
  def single_value_from_rows(rows); end
  def sql_for_insert(sql, pk, id_value, sequence_name, binds); end
  def subquery_for(key, select); end
  def supports_statement_cache?(*args, &block); end
  def supports_statement_cache_with_deprecation?(*args, &block); end
  def supports_statement_cache_without_deprecation?; end
  def to_sql(arel_or_sql_string, binds = nil); end
  def to_sql_and_binds(arel_or_sql_string, binds = nil); end
  def transaction(requires_new: nil, isolation: nil, joinable: nil); end
  def transaction_isolation_levels; end
  def transaction_manager; end
  def transaction_open?; end
  def transaction_state; end
  def truncate(table_name, name = nil); end
  def update(arel, name = nil, binds = nil); end
  def with_yaml_fallback(value); end
  def within_new_transaction(*args, &block); end
end
class ActiveRecord::ConnectionAdapters::DatabaseStatements::PartialQueryCollector
  def <<(str); end
  def add_bind(obj); end
  def initialize; end
  def value; end
end
class ActiveRecord::ActiveRecordError < StandardError
end
class ActiveRecord::SubclassNotFound < ActiveRecord::ActiveRecordError
end
class ActiveRecord::AssociationTypeMismatch < ActiveRecord::ActiveRecordError
end
class ActiveRecord::SerializationTypeMismatch < ActiveRecord::ActiveRecordError
end
class ActiveRecord::AdapterNotSpecified < ActiveRecord::ActiveRecordError
end
class ActiveRecord::AdapterNotFound < ActiveRecord::ActiveRecordError
end
class ActiveRecord::ConnectionNotEstablished < ActiveRecord::ActiveRecordError
end
class ActiveRecord::RecordNotFound < ActiveRecord::ActiveRecordError
  def id; end
  def initialize(message = nil, model = nil, primary_key = nil, id = nil); end
  def model; end
  def primary_key; end
end
class ActiveRecord::RecordNotSaved < ActiveRecord::ActiveRecordError
  def initialize(message = nil, record = nil); end
  def record; end
end
class ActiveRecord::RecordNotDestroyed < ActiveRecord::ActiveRecordError
  def initialize(message = nil, record = nil); end
  def record; end
end
class ActiveRecord::StatementInvalid < ActiveRecord::ActiveRecordError
  def initialize(message = nil); end
end
class ActiveRecord::WrappedDatabaseException < ActiveRecord::StatementInvalid
end
class ActiveRecord::RecordNotUnique < ActiveRecord::WrappedDatabaseException
end
class ActiveRecord::InvalidForeignKey < ActiveRecord::WrappedDatabaseException
end
class ActiveRecord::MismatchedForeignKey < ActiveRecord::StatementInvalid
  def initialize(adapter = nil, message: nil, sql: nil, binds: nil, table: nil, foreign_key: nil, target_table: nil, primary_key: nil, primary_key_column: nil); end
end
class ActiveRecord::NotNullViolation < ActiveRecord::StatementInvalid
end
class ActiveRecord::ValueTooLong < ActiveRecord::StatementInvalid
end
class ActiveRecord::RangeError < ActiveRecord::StatementInvalid
end
class ActiveRecord::PreparedStatementInvalid < ActiveRecord::ActiveRecordError
end
class ActiveRecord::NoDatabaseError < ActiveRecord::StatementInvalid
end
class ActiveRecord::PreparedStatementCacheExpired < ActiveRecord::StatementInvalid
end
class ActiveRecord::StaleObjectError < ActiveRecord::ActiveRecordError
  def attempted_action; end
  def initialize(record = nil, attempted_action = nil); end
  def record; end
end
class ActiveRecord::ConfigurationError < ActiveRecord::ActiveRecordError
end
class ActiveRecord::ReadOnlyRecord < ActiveRecord::ActiveRecordError
end
class ActiveRecord::Rollback < ActiveRecord::ActiveRecordError
end
class ActiveRecord::DangerousAttributeError < ActiveRecord::ActiveRecordError
end
class ActiveRecord::AttributeAssignmentError < ActiveRecord::ActiveRecordError
  def attribute; end
  def exception; end
  def initialize(message = nil, exception = nil, attribute = nil); end
end
class ActiveRecord::MultiparameterAssignmentErrors < ActiveRecord::ActiveRecordError
  def errors; end
  def initialize(errors = nil); end
end
class ActiveRecord::UnknownPrimaryKey < ActiveRecord::ActiveRecordError
  def initialize(model = nil, description = nil); end
  def model; end
end
class ActiveRecord::ImmutableRelation < ActiveRecord::ActiveRecordError
end
class ActiveRecord::TransactionIsolationError < ActiveRecord::ActiveRecordError
end
class ActiveRecord::TransactionRollbackError < ActiveRecord::StatementInvalid
end
class ActiveRecord::SerializationFailure < ActiveRecord::TransactionRollbackError
end
class ActiveRecord::Deadlocked < ActiveRecord::TransactionRollbackError
end
class ActiveRecord::IrreversibleOrderError < ActiveRecord::ActiveRecordError
end
class ActiveRecord::LockWaitTimeout < ActiveRecord::StatementInvalid
end
class ActiveRecord::StatementTimeout < ActiveRecord::StatementInvalid
end
class ActiveRecord::QueryCanceled < ActiveRecord::StatementInvalid
end
class ActiveRecord::UnknownAttributeReference < ActiveRecord::ActiveRecordError
end
class ActiveRecord::MigrationError < ActiveRecord::ActiveRecordError
  def initialize(message = nil); end
end
class ActiveRecord::IrreversibleMigration < ActiveRecord::MigrationError
end
class ActiveRecord::DuplicateMigrationVersionError < ActiveRecord::MigrationError
  def initialize(version = nil); end
end
class ActiveRecord::DuplicateMigrationNameError < ActiveRecord::MigrationError
  def initialize(name = nil); end
end
class ActiveRecord::UnknownMigrationVersionError < ActiveRecord::MigrationError
  def initialize(version = nil); end
end
class ActiveRecord::IllegalMigrationNameError < ActiveRecord::MigrationError
  def initialize(name = nil); end
end
class ActiveRecord::PendingMigrationError < ActiveRecord::MigrationError
  def initialize(message = nil); end
end
class ActiveRecord::ConcurrentMigrationError < ActiveRecord::MigrationError
  def initialize(message = nil); end
end
class ActiveRecord::NoEnvironmentInSchemaError < ActiveRecord::MigrationError
  def initialize; end
end
class ActiveRecord::ProtectedEnvironmentError < ActiveRecord::ActiveRecordError
  def initialize(env = nil); end
end
class ActiveRecord::EnvironmentMismatchError < ActiveRecord::ActiveRecordError
  def initialize(current: nil, stored: nil); end
end
class ActiveRecord::Migration
  def announce(message); end
  def connection; end
  def copy(destination, sources, options = nil); end
  def disable_ddl_transaction; end
  def down; end
  def exec_migration(conn, direction); end
  def execute_block; end
  def initialize(name = nil, version = nil); end
  def method_missing(method, *arguments, &block); end
  def migrate(direction); end
  def name; end
  def name=(arg0); end
  def next_migration_number(number); end
  def proper_table_name(name, options = nil); end
  def reversible; end
  def revert(*migration_classes); end
  def reverting?; end
  def run(*migration_classes); end
  def say(message, subitem = nil); end
  def say_with_time(message); end
  def self.[](version); end
  def self.check_pending!(connection = nil); end
  def self.current_version; end
  def self.delegate; end
  def self.delegate=(arg0); end
  def self.disable_ddl_transaction!; end
  def self.disable_ddl_transaction; end
  def self.disable_ddl_transaction=(arg0); end
  def self.inherited(subclass); end
  def self.load_schema_if_pending!; end
  def self.maintain_test_schema!; end
  def self.method_missing(name, *args, &block); end
  def self.migrate(direction); end
  def self.nearest_delegate; end
  def self.verbose; end
  def self.verbose=(obj); end
  def suppress_messages; end
  def table_name_options(config = nil); end
  def up; end
  def up_only; end
  def verbose; end
  def verbose=(obj); end
  def version; end
  def version=(arg0); end
  def write(text = nil); end
end
class ActiveRecord::Migration::Current < ActiveRecord::Migration
end
class ActiveRecord::Migration::CheckPending
  def call(env); end
  def connection; end
  def initialize(app); end
end
class ActiveRecord::Migration::ReversibleBlockHelper < Struct
  def down; end
  def reverting; end
  def reverting=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def up; end
end
class ActiveRecord::MigrationProxy < Struct
  def announce(*args, &block); end
  def basename; end
  def disable_ddl_transaction(*args, &block); end
  def filename; end
  def filename=(_); end
  def initialize(name, version, filename, scope); end
  def load_migration; end
  def migrate(*args, &block); end
  def migration; end
  def mtime; end
  def name; end
  def name=(_); end
  def scope; end
  def scope=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def version; end
  def version=(_); end
  def write(*args, &block); end
end
class ActiveRecord::NullMigration < ActiveRecord::MigrationProxy
  def initialize; end
  def mtime; end
end
class ActiveRecord::MigrationContext
  def any_migrations?; end
  def current_environment; end
  def current_version; end
  def down(target_version = nil); end
  def forward(steps = nil); end
  def get_all_versions; end
  def initialize(migrations_paths); end
  def last_migration; end
  def last_stored_environment; end
  def migrate(target_version = nil, &block); end
  def migration_files; end
  def migrations; end
  def migrations_paths; end
  def migrations_status; end
  def move(direction, steps); end
  def needs_migration?; end
  def open; end
  def parse_migration_filename(filename); end
  def protected_environment?; end
  def rollback(steps = nil); end
  def run(direction, target_version); end
  def up(target_version = nil); end
end
class ActiveRecord::Migrator
  def current; end
  def current_migration; end
  def current_version; end
  def ddl_transaction(migration); end
  def down?; end
  def execute_migration_in_transaction(migration, direction); end
  def finish; end
  def generate_migrator_advisory_lock_id; end
  def initialize(direction, migrations, target_version = nil); end
  def invalid_target?; end
  def load_migrated; end
  def migrate; end
  def migrate_without_lock; end
  def migrated; end
  def migrations; end
  def pending_migrations; end
  def ran?(migration); end
  def record_environment; end
  def record_version_state_after_migrating(version); end
  def run; end
  def run_without_lock; end
  def runnable; end
  def self.current_version; end
  def self.migrations_path=(path); end
  def self.migrations_paths; end
  def self.migrations_paths=(arg0); end
  def start; end
  def target; end
  def up?; end
  def use_advisory_lock?; end
  def use_transaction?(migration); end
  def validate(migrations); end
  def with_advisory_lock; end
end
module ActiveRecord::Migration::JoinTable
  def find_join_table_name(table_1, table_2, options = nil); end
  def join_table_name(table_1, table_2); end
end
module ActiveRecord::ConnectionAdapters::SchemaStatements
  def add_belongs_to(table_name, ref_name, **options); end
  def add_column(table_name, column_name, type, options = nil); end
  def add_column_for_alter(table_name, column_name, type, options = nil); end
  def add_foreign_key(from_table, to_table, options = nil); end
  def add_index(table_name, column_name, options = nil); end
  def add_index_options(table_name, column_name, comment: nil, **options); end
  def add_index_sort_order(quoted_columns, **options); end
  def add_options_for_index_columns(quoted_columns, **options); end
  def add_reference(table_name, ref_name, **options); end
  def add_timestamps(table_name, options = nil); end
  def assume_migrated_upto_version(version, migrations_paths); end
  def can_remove_index_by_name?(options); end
  def change_column(table_name, column_name, type, options = nil); end
  def change_column_comment(table_name, column_name, comment); end
  def change_column_default(table_name, column_name, default_or_changes); end
  def change_column_null(table_name, column_name, null, default = nil); end
  def change_table(table_name, options = nil); end
  def change_table_comment(table_name, comment); end
  def column_exists?(table_name, column_name, type = nil, options = nil); end
  def column_options_keys; end
  def columns(table_name); end
  def columns_for_distinct(columns, orders); end
  def create_alter_table(name); end
  def create_join_table(table_1, table_2, column_options: nil, **options); end
  def create_schema_dumper(options); end
  def create_table(table_name, comment: nil, **options); end
  def create_table_definition(*args); end
  def data_source_exists?(name); end
  def data_source_sql(name = nil, type: nil); end
  def data_sources; end
  def drop_join_table(table_1, table_2, options = nil); end
  def drop_table(table_name, options = nil); end
  def dump_schema_information; end
  def extract_foreign_key_action(specifier); end
  def extract_new_default_value(default_or_changes); end
  def fetch_type_metadata(sql_type); end
  def foreign_key_column_for(table_name); end
  def foreign_key_exists?(from_table, options_or_to_table = nil); end
  def foreign_key_for!(from_table, options_or_to_table = nil); end
  def foreign_key_for(from_table, options_or_to_table = nil); end
  def foreign_key_name(table_name, options); end
  def foreign_key_options(from_table, to_table, options); end
  def foreign_keys(table_name); end
  def index_column_names(column_names); end
  def index_exists?(table_name, column_name, options = nil); end
  def index_name(table_name, options); end
  def index_name_exists?(table_name, index_name); end
  def index_name_for_remove(table_name, options = nil); end
  def index_name_options(column_names); end
  def indexes(table_name); end
  def insert_versions_sql(versions); end
  def internal_string_options_for_primary_key; end
  def native_database_types; end
  def options_for_index_columns(options); end
  def options_include_default?(options); end
  def primary_key(table_name); end
  def quoted_columns_for_index(column_names, **options); end
  def quoted_scope(name = nil, type: nil); end
  def remove_belongs_to(table_name, ref_name, foreign_key: nil, polymorphic: nil, **options); end
  def remove_column(table_name, column_name, type = nil, options = nil); end
  def remove_column_for_alter(table_name, column_name, type = nil, options = nil); end
  def remove_columns(table_name, *column_names); end
  def remove_columns_for_alter(table_name, *column_names); end
  def remove_foreign_key(from_table, options_or_to_table = nil); end
  def remove_index(table_name, options = nil); end
  def remove_reference(table_name, ref_name, foreign_key: nil, polymorphic: nil, **options); end
  def remove_timestamps(table_name, options = nil); end
  def rename_column(table_name, column_name, new_column_name); end
  def rename_column_indexes(table_name, column_name, new_column_name); end
  def rename_index(table_name, old_name, new_name); end
  def rename_table(table_name, new_name); end
  def rename_table_indexes(table_name, new_name); end
  def schema_creation; end
  def table_alias_for(table_name); end
  def table_comment(table_name); end
  def table_exists?(table_name); end
  def table_options(table_name); end
  def tables; end
  def type_to_sql(type, limit: nil, precision: nil, scale: nil, **arg4); end
  def update_table_definition(table_name, base); end
  def validate_index_length!(table_name, new_name, internal = nil); end
  def view_exists?(view_name); end
  def views; end
  include ActiveRecord::Migration::JoinTable
end
module ActiveRecord::ConnectionAdapters::DatabaseLimits
  def allowed_index_name_length; end
  def bind_params_length; end
  def column_name_length; end
  def columns_per_multicolumn_index; end
  def columns_per_table; end
  def in_clause_length; end
  def index_name_length; end
  def indexes_per_table; end
  def joins_per_query; end
  def sql_query_length; end
  def table_alias_length; end
  def table_name_length; end
end
module ActiveRecord::ConnectionAdapters::QueryCache
  def cache; end
  def cache_sql(sql, name, binds); end
  def clear_query_cache; end
  def configure_query_cache!; end
  def disable_query_cache!; end
  def enable_query_cache!; end
  def initialize(*arg0); end
  def locked?(arel); end
  def query_cache; end
  def query_cache_enabled; end
  def select_all(arel, name = nil, binds = nil, preparable: nil); end
  def self.dirties_query_cache(base, *method_names); end
  def self.included(base); end
  def uncached; end
end
module ActiveRecord::ConnectionAdapters::QueryCache::ConnectionPoolConfiguration
  def disable_query_cache!; end
  def enable_query_cache!; end
  def initialize(*arg0); end
  def query_cache_enabled; end
end
module ActiveRecord::ConnectionAdapters::Savepoints
  def create_savepoint(name = nil); end
  def current_savepoint_name; end
  def exec_rollback_to_savepoint(name = nil); end
  def release_savepoint(name = nil); end
end
class ActiveRecord::ConnectionAdapters::AbstractAdapter::Version
  def <=>(version_string); end
  def initialize(version_string); end
  include Comparable
end
module ActiveRecord::Scoping
  def initialize_internals_callback; end
  def populate_with_current_scope_attributes; end
  extend ActiveSupport::Autoload
  extend ActiveSupport::Concern
end
module ActiveRecord::Scoping::ClassMethods
  def current_scope(skip_inherited_scope = nil); end
  def current_scope=(scope); end
  def scope_attributes; end
  def scope_attributes?; end
end
class ActiveRecord::Scoping::ScopeRegistry
  def initialize; end
  def raise_invalid_scope_type!(scope_type); end
  def set_value_for(scope_type, model, value); end
  def value_for(scope_type, model, skip_inherited_scope = nil); end
  extend ActiveSupport::PerThreadRegistry
end
module ActiveRecord::Coders
end
module ActiveRecord::Locking
  extend ActiveSupport::Autoload
end
module ActiveRecord::Tasks
  extend ActiveSupport::Autoload
end
class ActiveRecord::Railtie < Rails::Railtie
end
class ActiveRecord::Schema < ActiveRecord::Migration::Current
  def define(info, &block); end
  def migrations_paths; end
  def self.define(info = nil, &block); end
end
