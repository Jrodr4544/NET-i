class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string      :IP
      t.belongs_to  :site
    end
  end
end
