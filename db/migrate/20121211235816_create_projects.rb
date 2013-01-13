class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.decimal :budget, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
