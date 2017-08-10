class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :field
      t.string :key_skill
      t.string :description

      t.timestamps
    end
  end
end
