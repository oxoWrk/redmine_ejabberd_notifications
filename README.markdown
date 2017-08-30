# XMPP Notifications Plugin for Redmine

This plugin is intended to provide integration with XMPP messenger.

Forked from [redmine-xmpp/notifications](https://github.com/redmine-xmpp/notifications)

And reworked to use [ejabberd](https://github.com/processone/ejabberd) and its Rest API to delivery of notifications


Following actions will result in notifications to XMPP:

- create issues
- update issues

## Installation & Configuration

- Then install the Plugin following the general Redmine [plugin installation instructions](http://www.redmine.org/wiki/redmine/Plugins).
- Go to the Plugins section of the Administration page, select Configure.
- On this page fill out the API URL-address (http[s]://example.com/api), the Jabber ID and password for user who has API permission to send messages.
- Restart your Redmine.


## User Settings

- Fill out the Jabber ID on user account settings page to receive XMPP notifications 
