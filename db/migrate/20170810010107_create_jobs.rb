class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :field
      t.string :key_skill
      t.text :description
      t.string :contact
      t.string :location
      t.string :uid, unique: true

      t.timestamps
    end
  end
end
