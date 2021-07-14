class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :ip
      t.string :key_user
      t.string :key_ip
      t.string :key_license
      t.integer :datetime
      t.integer :datetime_expire
      t.integer :use_first
      t.integer :use_last
      t.boolean :is_active

      t.timestamps
    end
  end
end
