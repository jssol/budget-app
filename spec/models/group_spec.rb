require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @user = User.create(name: 'Tom', email: 'tom@dev.co', password: 'password', password_confirmation: 'password')
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      group = Group.create(name: 'Pasta', icon: 'http://www.example.com', user_id: @user.id)
      expect(group).to be_valid
    end
    it 'is not valid without a name' do
      group = Group.create(name: nil, icon: 'http://www.example.com', user_id: @user.id)
      expect(group).to_not be_valid
    end
    it 'is not valid without an icon' do
      group = Group.create(name: 'Pasta', icon: nil, user_id: @user.id)
      expect(group).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many entities' do
      assc = described_class.reflect_on_association(:entities)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
    it 'belong_to user' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
