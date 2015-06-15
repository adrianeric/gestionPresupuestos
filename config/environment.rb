# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# modificacion de inflector para español
ActiveSupport::Inflector.inflections do |inflect|
    inflect.plural /([^djlnrs])([A-Z]|_|$)/, '\1s\2'
    inflect.plural /([djlnrs])([A-Z]|_|$)/, '\1es\2'
    inflect.plural /(.*)z([A-Z]|_|$)$/i, '\1ces\2'
    inflect.singular /([^djlnrs])s([A-Z]|_|$)/, '\1\2'
    inflect.singular /([djlnrs])es([A-Z]|_|$)/, '\1\2'
    inflect.singular /(.*)ces([A-Z]|_|$)$/i, '\1z\2'
    inflect.irregular 'user', 'users'
    inflect.irregular 'admin', 'admins'
    inflect.irregular 'account', 'accounts'
    inflect.irregular 'password', 'passwords'
    inflect.irregular 'session', 'sessions'
    inflect.irregular 'ud', 'uds'
end
