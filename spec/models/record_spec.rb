require 'rails_helper'

RSpec.describe Record, type: :model do
  context 'validation' do
    it 'has valid factory' do
      expect(build(:record)).to be_valid
    end
    context 'invalid when' do
      it 'has no qt' do
        expect(build(:record, qt: nil)).to be_invalid
      end
      it 'has a string qt' do
        expect(build(:record, qt: 'test')).to be_invalid
      end
      it 'has no record type' do
        expect(build(:record, record_type_id: nil)).to be_invalid
      end
      it 'has no user' do
        expect(build(:record, user_id: nil)).to be_invalid
      end
    end
  end
end
