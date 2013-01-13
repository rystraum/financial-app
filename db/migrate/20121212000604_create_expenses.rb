class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :description
      t.decimal :amount, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
