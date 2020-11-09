class AddTelToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :telefon, :string
  end
end
