class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.text        :address
      t.belongs_to  :company
    end
  end
end
