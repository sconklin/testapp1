class FixEnumColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :enum, :colors
  end
end
