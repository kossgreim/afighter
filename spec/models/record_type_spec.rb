require 'rails_helper'

RSpec.describe RecordType, type: :model do
  describe 'Validation' do
    it 'has a valid factory' do
      expect(build(:record_type)).to be_valid
    end
    it 'belongs to a user' do
      expect(create(:record_type).user).to be_a User
    end
    context 'invalid when' do
      it 'has empty name field' do
        expect(build(:record_type, name: nil)).to be_invalid
      end
      it 'has name fewer than 2 symbols' do
        expect(build(:record_type, name: 't')).to be_invalid
      end
      it 'has name grater than 30 symbols' do
        expect(build(:record_type, name: FFaker::Lorem.characters(31))).to be_invalid
      end
      it 'doesn\'t belong to user' do
        expect(build(:record_type, user: nil)).to be_invalid
      end
    end
  end
end
