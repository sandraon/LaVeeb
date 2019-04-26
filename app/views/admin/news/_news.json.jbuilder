json.extract! news, :id, :heading, :content, :created_at, :updated_at
json.url news_url(news, format: :json)
