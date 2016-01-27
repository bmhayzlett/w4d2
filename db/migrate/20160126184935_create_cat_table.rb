class CreateCatTable < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name, presence: true
      t.date :birth_date, presence: true
      t.string :color, presence: true
      t.string :sex, presence: true, limit: 1
      t.text :description

      t.timestamps
    end
  end
end
