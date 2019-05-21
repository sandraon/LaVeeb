class Navigation < ApplicationRecord
  def available_paths
    static_paths + available_pages
  end
  
  def static_paths
    [
      {name: 'Töötajad', path: '/töötajad'},
      {name: 'Rühmad', path: '/rühmad'},
      {name: 'Teated', path: '/teated'},
      {name: 'Nädalamenüü', path: '/nädalamenüü'}
    ]
  end

  def available_pages
    Page.all.map{|p| {name: p.heading, path: p.slug}}
  end
end
