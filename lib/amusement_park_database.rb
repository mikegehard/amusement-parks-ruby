class AmusementParkDatabase
  def initialize(data)
    @data = data
  end

  def by_id
    result = {}
    @data.each do |row|
      result[row[:id]] = row
    end
    result
  end

  def by_country
    result = {}
    @data.each do |row|
      existing_data = result.fetch(row[:country]) {[]}
      result[row[:country]] = existing_data << row
    end
    result
  end

  def by_city_country
    result = {}
    @data.each do |row|
      key = "#{row[:state]}, #{row[:country]}"
      existing_data = result.fetch(key) {[]}
      result[key] = existing_data << row
    end
    result
  end
end