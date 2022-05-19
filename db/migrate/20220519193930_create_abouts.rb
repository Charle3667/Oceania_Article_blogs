class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.text :summary

      t.timestamps
    end
  end
end
