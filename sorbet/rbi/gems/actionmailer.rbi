# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actionmailer/all/actionmailer.rbi
#
# actionmailer-5.2.4.3

module ActionMailer
  def self.eager_load!; end
  def self.gem_version; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module ActionMailer::VERSION
end
class ActionMailer::Railtie < Rails::Railtie
end
class ActionMailer::Collector
  def all(*args, &block); end
  def any(*args, &block); end
  def custom(mime, options = nil); end
  def initialize(context, &block); end
  def responses; end
  include AbstractController::Collector
end
class ActionMailer::LogSubscriber < ActiveSupport::LogSubscriber
end
module ActionMailer::Rescuable
  def handle_exceptions; end
  def process(*arg0); end
  extend ActiveSupport::Concern
  include ActiveSupport::Rescuable
end
module ActionMailer::Rescuable::ClassMethods
  def handle_exception(exception); end
end
module ActionMailer::DeliveryMethods
  def wrap_delivery_behavior!(*args); end
  extend ActiveSupport::Concern
end
module ActionMailer::DeliveryMethods::ClassMethods
  def add_delivery_method(symbol, klass, default_options = nil); end
  def deliveries(*args, &block); end
  def deliveries=(arg); end
  def wrap_delivery_behavior(mail, method = nil, options = nil); end
end
class ActionMailer::MessageDelivery < Delegator
  def __getobj__; end
  def __setobj__(mail_message); end
  def deliver_later!(options = nil); end
  def deliver_later(options = nil); end
  def deliver_now!; end
  def deliver_now; end
  def enqueue_delivery(delivery_method, options = nil); end
  def initialize(mailer_class, action, *args); end
  def message; end
  def processed?; end
  def processed_mailer; end
end
class ActionMailer::DeliveryJob < ActiveJob::Base
  def handle_exception_with_mailer_class(exception); end
  def mailer_class; end
  def perform(mailer, mail_method, delivery_method, *args); end
  def self.queue_name; end
  def self.rescue_handlers; end
end
module ActionMailer::Parameterized
  extend ActiveSupport::Concern
end
module ActionMailer::Parameterized::ClassMethods
  def with(params); end
end
class ActionMailer::Parameterized::Mailer
  def initialize(mailer, params); end
  def method_missing(method_name, *args); end
  def respond_to_missing?(method, include_all = nil); end
end
class ActionMailer::Parameterized::MessageDelivery < ActionMailer::MessageDelivery
  def enqueue_delivery(delivery_method, options = nil); end
  def initialize(mailer_class, action, params, *args); end
  def processed_mailer; end
end
class ActionMailer::Parameterized::DeliveryJob < ActionMailer::DeliveryJob
  def perform(mailer, mail_method, delivery_method, params, *args); end
end
module ActionMailer::Previews
  extend ActiveSupport::Concern
end
module ActionMailer::Previews::ClassMethods
  def register_preview_interceptor(interceptor); end
  def register_preview_interceptors(*interceptors); end
end
class ActionMailer::Preview
  def initialize(params = nil); end
  def params; end
  def self.all; end
  def self.call(email, params = nil); end
  def self.email_exists?(email); end
  def self.emails; end
  def self.exists?(preview); end
  def self.find(preview); end
  def self.inform_preview_interceptors(message); end
  def self.load_previews; end
  def self.preview_name; end
  def self.preview_path; end
  def self.show_previews; end
  extend ActiveSupport::DescendantsTracker
end
class ActionMailer::InlinePreviewInterceptor
  def data_url(part); end
  def find_part(cid); end
  def html_part; end
  def initialize(message); end
  def message; end
  def self.previewing_email(message); end
  def transform!; end
  include Base64
end
module ActionMailer::MailHelper
  def attachments; end
  def block_format(text); end
  def format_paragraph(text, len = nil, indent = nil); end
  def mailer; end
  def message; end
end
class ActionMailer::Base < AbstractController::Base
  def __callbacks; end
  def __callbacks?; end
  def _helper_methods; end
  def _helper_methods=(val); end
  def _helper_methods?; end
  def _helpers; end
  def _helpers=(val); end
  def _helpers?; end
  def _layout(formats); end
  def _process_action_callbacks; end
  def _protected_ivars; end
  def _run_process_action_callbacks(&block); end
  def _view_cache_dependencies; end
  def _view_cache_dependencies=(val); end
  def _view_cache_dependencies?; end
  def _view_paths; end
  def _view_paths=(val); end
  def _view_paths?; end
  def apply_defaults(headers); end
  def asset_host; end
  def asset_host=(value); end
  def assets_dir; end
  def assets_dir=(value); end
  def assign_headers_to_message(message, headers); end
  def attachments; end
  def collect_responses(headers); end
  def collect_responses_from_templates(headers); end
  def collect_responses_from_text(headers); end
  def compute_default(value); end
  def create_parts_from_responses(m, responses); end
  def default_asset_host_protocol; end
  def default_asset_host_protocol=(value); end
  def default_i18n_subject(interpolations = nil); end
  def default_params; end
  def default_params=(val); end
  def default_params?; end
  def default_static_extension; end
  def default_static_extension=(value); end
  def deliver_later_queue_name; end
  def deliver_later_queue_name=(obj); end
  def delivery_job; end
  def delivery_job=(val); end
  def delivery_job?; end
  def delivery_method; end
  def delivery_method=(val); end
  def delivery_method?; end
  def delivery_methods; end
  def delivery_methods=(val); end
  def delivery_methods?; end
  def each_template(paths, name, &block); end
  def enable_fragment_cache_logging; end
  def enable_fragment_cache_logging=(value); end
  def file_settings; end
  def file_settings=(val); end
  def file_settings?; end
  def fragment_cache_keys; end
  def fragment_cache_keys=(val); end
  def fragment_cache_keys?; end
  def headers(args = nil); end
  def initialize; end
  def insert_part(container, response, charset); end
  def instrument_name; end
  def instrument_payload(key); end
  def javascripts_dir; end
  def javascripts_dir=(value); end
  def logger; end
  def logger=(value); end
  def mail(headers = nil, &block); end
  def mailer_name; end
  def message; end
  def message=(arg0); end
  def params; end
  def params=(arg0); end
  def perform_caching; end
  def perform_caching=(value); end
  def perform_deliveries; end
  def perform_deliveries=(obj); end
  def preview_interceptors; end
  def preview_path; end
  def process(method_name, *args); end
  def raise_delivery_errors; end
  def raise_delivery_errors=(obj); end
  def relative_url_root; end
  def relative_url_root=(value); end
  def rescue_handlers; end
  def rescue_handlers=(val); end
  def rescue_handlers?; end
  def self.__callbacks; end
  def self.__callbacks=(val); end
  def self.__callbacks?; end
  def self._helper_methods; end
  def self._helper_methods=(val); end
  def self._helper_methods?; end
  def self._helpers; end
  def self._helpers=(val); end
  def self._helpers?; end
  def self._layout; end
  def self._layout=(val); end
  def self._layout?; end
  def self._layout_conditions; end
  def self._layout_conditions=(val); end
  def self._layout_conditions?; end
  def self._process_action_callbacks; end
  def self._process_action_callbacks=(value); end
  def self._view_cache_dependencies; end
  def self._view_cache_dependencies=(val); end
  def self._view_cache_dependencies?; end
  def self._view_paths; end
  def self._view_paths=(val); end
  def self._view_paths?; end
  def self.asset_host; end
  def self.asset_host=(value); end
  def self.assets_dir; end
  def self.assets_dir=(value); end
  def self.controller_path; end
  def self.default(value = nil); end
  def self.default_asset_host_protocol; end
  def self.default_asset_host_protocol=(value); end
  def self.default_options=(value = nil); end
  def self.default_params; end
  def self.default_params=(val); end
  def self.default_params?; end
  def self.default_static_extension; end
  def self.default_static_extension=(value); end
  def self.deliver_later_queue_name; end
  def self.deliver_later_queue_name=(obj); end
  def self.deliver_mail(mail); end
  def self.delivery_job; end
  def self.delivery_job=(val); end
  def self.delivery_job?; end
  def self.delivery_method; end
  def self.delivery_method=(val); end
  def self.delivery_method?; end
  def self.delivery_methods; end
  def self.delivery_methods=(val); end
  def self.delivery_methods?; end
  def self.enable_fragment_cache_logging; end
  def self.enable_fragment_cache_logging=(value); end
  def self.file_settings; end
  def self.file_settings=(val); end
  def self.file_settings?; end
  def self.fragment_cache_keys; end
  def self.fragment_cache_keys=(val); end
  def self.fragment_cache_keys?; end
  def self.javascripts_dir; end
  def self.javascripts_dir=(value); end
  def self.logger; end
  def self.logger=(value); end
  def self.mailer_name; end
  def self.mailer_name=(arg0); end
  def self.method_missing(method_name, *args); end
  def self.observer_class_for(value); end
  def self.perform_caching; end
  def self.perform_caching=(value); end
  def self.perform_deliveries; end
  def self.perform_deliveries=(obj); end
  def self.preview_interceptors; end
  def self.preview_interceptors=(obj); end
  def self.preview_path; end
  def self.preview_path=(obj); end
  def self.raise_delivery_errors; end
  def self.raise_delivery_errors=(obj); end
  def self.receive(raw_mail); end
  def self.register_interceptor(interceptor); end
  def self.register_interceptors(*interceptors); end
  def self.register_observer(observer); end
  def self.register_observers(*observers); end
  def self.relative_url_root; end
  def self.relative_url_root=(value); end
  def self.rescue_handlers; end
  def self.rescue_handlers=(val); end
  def self.rescue_handlers?; end
  def self.respond_to_missing?(method, include_all = nil); end
  def self.sendmail_settings; end
  def self.sendmail_settings=(val); end
  def self.sendmail_settings?; end
  def self.set_payload_for_mail(payload, mail); end
  def self.show_previews; end
  def self.show_previews=(obj); end
  def self.smtp_settings; end
  def self.smtp_settings=(val); end
  def self.smtp_settings?; end
  def self.stylesheets_dir; end
  def self.stylesheets_dir=(value); end
  def self.supports_path?; end
  def self.test_settings; end
  def self.test_settings=(val); end
  def self.test_settings?; end
  def sendmail_settings; end
  def sendmail_settings=(val); end
  def sendmail_settings?; end
  def set_content_type(m, user_content_type, class_default); end
  def show_previews; end
  def smtp_settings; end
  def smtp_settings=(val); end
  def smtp_settings?; end
  def stylesheets_dir; end
  def stylesheets_dir=(value); end
  def test_settings; end
  def test_settings=(val); end
  def test_settings?; end
  extend AbstractController::Caching::ClassMethods
  extend AbstractController::Caching::ConfigMethods
  extend AbstractController::Caching::Fragments::ClassMethods
  extend AbstractController::Callbacks::ClassMethods
  extend AbstractController::Helpers::ClassMethods
  extend ActionMailer::DeliveryMethods::ClassMethods
  extend ActionMailer::Parameterized::ClassMethods
  extend ActionMailer::Previews::ClassMethods
  extend ActionMailer::Rescuable::ClassMethods
  extend ActionView::Layouts::ClassMethods
  extend ActionView::Rendering::ClassMethods
  extend ActionView::ViewPaths::ClassMethods
  extend ActiveSupport::Callbacks::ClassMethods
  extend ActiveSupport::DescendantsTracker
  extend ActiveSupport::Rescuable::ClassMethods
  include AbstractController::AssetPaths
  include AbstractController::Caching
  include AbstractController::Caching::Fragments
  include AbstractController::Callbacks
  include AbstractController::Helpers
  include AbstractController::Logger
  include AbstractController::Rendering
  include AbstractController::Translation
  include ActionMailer::DeliveryMethods
  include ActionMailer::Parameterized
  include ActionMailer::Previews
  include ActionMailer::Rescuable
  include ActionView::Layouts
  include ActionView::Rendering
  include ActionView::ViewPaths
  include ActionView::ViewPaths
  include ActiveSupport::Benchmarkable
  include ActiveSupport::Callbacks
  include ActiveSupport::Rescuable
end
class ActionMailer::Base::NullMail
  def body; end
  def header; end
  def method_missing(*args); end
  def respond_to?(string, include_all = nil); end
end
class ActionMailer::Base::LateAttachmentsProxy < SimpleDelegator
  def []=(_name, _content); end
  def _raise_error; end
  def inline; end
end
