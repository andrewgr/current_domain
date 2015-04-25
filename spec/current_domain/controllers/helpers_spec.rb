require 'spec_helper'

describe CurrentDomain::Controllers::Helpers do
  describe '#current_domain' do
    context 'default method for finding current domain is used' do
      class A < ActionController::Base
        include CurrentDomain::Controllers::Helpers
      end

      let(:controller) { A.new }

      before do
        allow(controller).to receive_message_chain(:request, :host)
          .and_return('host.name')
      end

      it 'returns request host name' do
        expect(controller.current_domain).to eq('host.name')
      end
    end

    context 'custom method for finding current domain is used' do
      class B < ActionController::Base
        include CurrentDomain::Controllers::Helpers

        def find_domain(_host)
          'domain'
        end
      end

      let(:controller) { B.new }

      before do
        allow(controller).to receive_message_chain(:request, :host)
          .and_return('host.name')
      end

      it 'returns custom domain object' do
        expect(controller.current_domain).to eq(controller.find_domain(''))
      end
    end
  end
end
