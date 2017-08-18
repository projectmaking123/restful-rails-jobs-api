class CreateJobUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :job_users do |t|
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
