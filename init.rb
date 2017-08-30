require "redmine"

require_dependency "notifier_hook"
require_dependency "my_account_hooks"
require_dependency "user_hooks"
require_dependency "user"

if User.const_defined? "SAFE_ATTRIBUTES"
  User::SAFE_ATTRIBUTES << "xmpp_jid"
else
  User.safe_attributes "xmpp_jid"
end

Redmine::Plugin.register :redmine_ejabberd_notifications do
  name "Redmine XMPP Notifications plugin using ejabberd server"
  author "Ilya Kalashnikov & redmine_xmpp_notifications plugin contributors"
  description "Plugin to send XMPP notifications using the ejabberd server and its Rest API"
  version "0.0.1"
  url ""

  settings :default => {"url" => "", "jid" => "", "password" => "", "send_to_watchers" => true}, :partial => "settings/xmpp_settings"
end

Rails.logger.info "#{'*'*65}\n* Plugin redmine_ejabberd_notifications init\n#{'*'*65}"

