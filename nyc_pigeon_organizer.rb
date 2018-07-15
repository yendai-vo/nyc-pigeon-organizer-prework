def nyc_pigeon_organizer(data)
  # write your code here!
  organizedData = Hash.new
  data.each do |attributeType, propertyHash |
    propertyHash.each do |attributeValue, birdName|
      organizedData[birdName] = {
        attributeType => []
      }
      organizedData[birdName][attributeType].push(attributeValue.to_s)
    end
  end
  puts organizedData
  return organizedData
end
