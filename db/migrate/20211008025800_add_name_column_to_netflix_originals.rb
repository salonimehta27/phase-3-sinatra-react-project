class AddNameColumnToNetflixOriginals < ActiveRecord::Migration[6.1]
  def change
    add_column(:netflix_originals, :name, :string)
  end
end
