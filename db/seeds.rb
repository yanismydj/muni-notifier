Muni::Route.find(:all).each do |route|
  Route.create!(title: route.title, tag: route.tag)
end