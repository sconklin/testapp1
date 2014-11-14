class FixEnumColumnNameAgain < ActiveRecord::Migration
  def change
    rename_column :articles, :colors, :color
  end
end
