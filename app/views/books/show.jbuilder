json.extract! @book, :id, :title, :author, :subtitle, :theme, :created_at, :updated_at
if @book.cover.attached?
  json.cover_url url_for(@book.cover)
end
json.leaves @book.leaves do |leaf|
  json.extract! leaf, :id, :position_score, :title, :created_at, :updated_at
  if leaf.page?
    json.content sanitize_content(leaf.page.html_preview)
  end
end
