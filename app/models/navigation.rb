class Navigation < ApplicationRecord
  def available_paths
    static_paths + available_pages
  end
  
  def static_paths
    [
      {name: 'example', path: 'example'},
      {name: 'test', path: 'test'}
    ]
  end

  def available_pages
    Page.all.map{|p| {name: p.heading, path: p.slug}}
  end
end
