class ChangeTextToPrice < ActiveRecord::Migration[6.0]

  change_table :prizes do |t|
    t.rename :text, :price
  end

end
