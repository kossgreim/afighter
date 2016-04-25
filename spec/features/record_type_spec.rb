require 'rails_helper'

describe 'Record type', type: :feature do
  let(:record_type) { create(:record_type) }
  before :each do
    AuthHelper.new.login(record_type.user)
    visit new_record_type_path
  end

  context 'creating' do
    context 'with valid data' do
      it 'creates a new record' do
        fill_in 'Name', with: record_type.name
        click_button 'Save'
        expect(page).to have_content('Record type was successfully created.')
      end
    end

    context 'gets an error when' do
      it 'has an empty Name' do
        fill_in 'Name', with: nil
        click_button 'Save'
        expect(page).to have_content('Name can\'t be blank')
      end
      it 'has Name greater than 30 sym' do
        fill_in 'Name', with:  FFaker::Lorem.characters(31)
        click_button 'Save'
        expect(page).to have_content('Name is too long')
      end
      it 'has Name with fewer than 2 sym' do
        fill_in 'Name', with:  FFaker::Lorem.characters(1)
        click_button 'Save'
        expect(page).to have_content('Name is too short')
      end
    end
  end

  context 'editing' do
    context 'with valid data' do
      it 'updates the record type' do
        visit edit_record_type_path(record_type)
        fill_in 'Name', with: FFaker::Lorem.characters(10)
        click_button 'Save'
        expect(page).to have_content('Record type was successfully updated.')
      end
    end
  end
end
