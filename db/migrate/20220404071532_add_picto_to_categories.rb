class AddPictoToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :picto, :string
  end
end
