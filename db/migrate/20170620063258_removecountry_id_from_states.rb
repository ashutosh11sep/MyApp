class RemovecountryIdFromStates < ActiveRecord::Migration[5.1]
  def change
  remove_column :states, :country_id, :integer
  end
end
