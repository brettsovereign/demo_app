class CreateMicroposes < ActiveRecord::Migration
  def change
    create_table :microposes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
