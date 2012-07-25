class AddApplicationIdToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :application_id, :integer
  end
end
