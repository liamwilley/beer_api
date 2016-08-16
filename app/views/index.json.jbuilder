json.array! @beers.each do |beer|
 json.partial! 'beer.json.builder', beer: beer
end 
