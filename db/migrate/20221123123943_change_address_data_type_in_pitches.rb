class ChangeAddressDataTypeInPitches < ActiveRecord::Migration[7.0]
  def change
    change_column :pitches, :address, :string
  end
end
