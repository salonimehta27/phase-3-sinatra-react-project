class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.string :poster_path
      t.string :backdrop_path
      t.string :overview
      t.string :original_name
      t.string :name
    end
  end
end
