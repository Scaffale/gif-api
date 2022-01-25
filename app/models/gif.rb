class Gif < ApplicationRecord
  def serializable_hash(options = {})
    options = {
      only: %i[file_name search_term]
    }.update(options)
    super(options)
  end
end
