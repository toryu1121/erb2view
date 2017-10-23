class CreateErb2views < ActiveRecord::Migration
  def change
    create_table :erb2views do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
