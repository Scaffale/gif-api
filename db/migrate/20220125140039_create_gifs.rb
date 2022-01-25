class CreateGifs < ActiveRecord::Migration[7.0]
  def change
    create_table :gifs do |t|
      t.string :file_name
      t.string :search_term
    end
  end
end
