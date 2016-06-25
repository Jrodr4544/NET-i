class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string      :name
      t.string      :number
      t.belongs_to  :client
    end
  end
end
