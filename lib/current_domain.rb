require 'active_support'
require 'current_domain/version'
require 'current_domain/controllers/helpers'

ActiveSupport.on_load(:action_controller) do
  include CurrentDomain::Controllers::Helpers
end
