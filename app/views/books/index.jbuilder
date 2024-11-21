json.array! @books do |book|
  json.extract! book, :id, :title, :subtitle, :author, :theme, :created_at, :updated_at
  if book.cover.attached?
    json.cover_url url_for(book.cover)
  end
end
