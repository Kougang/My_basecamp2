class CreateTThreads < ActiveRecord::Migration[7.1]
  def change
    create_table :t_threads do |t|
      t.string :title
      t.text :content
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
