class AddUserToRecordType < ActiveRecord::Migration[5.0]
  def change
    add_reference :record_types, :user, foreign_key: true
  end
end
