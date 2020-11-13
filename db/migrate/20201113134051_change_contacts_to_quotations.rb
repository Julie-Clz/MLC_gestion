class ChangeContactsToQuotations < ActiveRecord::Migration[6.0]
  def change
    rename_table :contacts, :quotations
  end
end
