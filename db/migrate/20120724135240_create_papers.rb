class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :attachment
      t.string :name

      t.timestamps
    end
  end
end
