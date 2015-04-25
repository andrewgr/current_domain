module CurrentDomain
  module Controllers
    module Helpers
      extend ActiveSupport::Concern

      def current_domain
        @current_domain ||= find_domain(request.host)
      end

      included do
        helper_method :current_domain
      end

      private

      def find_domain(host)
        host
      end
    end
  end
end
