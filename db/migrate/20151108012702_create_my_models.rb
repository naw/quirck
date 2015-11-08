class CreateMyModels < ActiveRecord::Migration
  def change
    create_table :my_models do |t|
      t.uuid :some_id
      t.timestamps null: false
    end
  end
end
