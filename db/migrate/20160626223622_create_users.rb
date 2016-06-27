class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :username
      t.string     :email
      t.string     :password
      t.references :company
    end

    add_index :users, :company_id
  end
end
