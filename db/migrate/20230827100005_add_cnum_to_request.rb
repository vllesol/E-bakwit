class AddCnumToRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :cnum, :text
  end
end
