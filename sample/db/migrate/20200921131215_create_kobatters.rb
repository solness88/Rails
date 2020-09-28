class CreateKobatters < ActiveRecord::Migration[5.2]
  def change
    create_table :kobatters do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
