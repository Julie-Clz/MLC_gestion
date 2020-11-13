class AddColumnToQuotations < ActiveRecord::Migration[6.0]
  def change
    add_column :quotations, :object, :string
    add_column :quotations, :contact_method, :string
    add_column :quotations, :address, :text
    add_column :quotations, :company_description, :text
  end
end
