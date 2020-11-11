class AddParentIdtoPrizes < ActiveRecord::Migration[6.0]

  def change
      add_column :prizes, :parent_id, :integer
  end

end
