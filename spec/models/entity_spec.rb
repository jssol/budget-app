require 'rails_helper'

RSpec.describe Entity, type: :model do
  before :each do
    @user = User.create(name: 'Tom', email: 'tom@dev.co', password: 'password', password_confirmation: 'password')
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      entity = Entity.create(author_id: @user.id, name: 'Pasta', amount: 10)
      expect(entity).to be_valid
    end
    it 'is not valid without a name' do
      entity = Entity.create(name: nil, amount: 10, author_id: @user.id)
      expect(entity).to_not be_valid
    end
    it 'is not valid without amount' do
      entity = Entity.create(name: 'Pasta', amount: nil, author_id: @user.id)
      expect(entity).to_not be_valid
    end
    it 'is not valid without author_id' do
      entity = Entity.create(name: 'Pasta', amount: 10, author_id: nil)
      expect(entity).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many groups' do
      assc = described_class.reflect_on_association(:groups)
      expect(assc.macro).to eq :has_many
    end
    it 'belong_to user' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
