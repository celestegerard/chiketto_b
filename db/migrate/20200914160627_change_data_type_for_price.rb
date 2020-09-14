class ChangeDataTypeForPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :prizes, :price, :integer
  end
end
