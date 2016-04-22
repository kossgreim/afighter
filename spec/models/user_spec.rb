require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'Validation' do
    it 'has a valid factory' do
      expect(build(:user)).to be_valid
    end
    context 'invalid when' do
      it 'without name' do
        expect(build(:user, name: nil)).to be_invalid
      end
      it 'without last name' do
        expect(build(:user, last_name: nil)).to be_invalid
      end
      it 'without email' do
        expect(build(:user, email: nil)).to be_invalid
      end
      it 'without password' do
        expect(build(:user, password: nil)).to be_invalid
      end
      it 'incorrect email' do
        expect(build(:user, email: 'invalid email')).to be_invalid
      end
    end
  end
end
