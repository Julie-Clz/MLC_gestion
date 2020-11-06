class ChangeColumnToService < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :image, :description
  end
end
