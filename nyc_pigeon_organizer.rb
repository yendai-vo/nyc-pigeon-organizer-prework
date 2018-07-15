def nyc_pigeon_organizer(data)
  # write your code here!
  organizedData = Hash.new { |hash, key| hash[key] = {} }
  data.each do |attributeType, propertyHash |
    propertyHash.each do |attributeValue, birdNames|
      birdNames.each do |bird|
        # organizedData[bird] = {attributeType => []}
        organizedData[bird][attributeType].push(attributeValue.to_s)
      end
    end
  end
  puts organizedData
  return organizedData
end
