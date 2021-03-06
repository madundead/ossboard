require 'spec_helper'
require_relative '../../../../apps/web/controllers/users/show'

RSpec.describe Web::Controllers::Users::Show do
  let(:action) { described_class.new }
  let(:user) { UserRepository.new.create(name: 'Anton') }
  let(:params)  { { id: user.id } }

  after { TaskRepository.new.clear }

  it { expect(action.call(params)).to be_success }

  describe 'expose' do
    context '#user' do
      it 'returns user by id' do
        action.call(params)
        expect(action.user).to eq user
      end
    end
  end
end
