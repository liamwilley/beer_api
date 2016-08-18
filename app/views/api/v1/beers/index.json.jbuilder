json.array! @beers.each do |beer|
  json.partial! 'beer.json.jbuilder', beer: beer
end