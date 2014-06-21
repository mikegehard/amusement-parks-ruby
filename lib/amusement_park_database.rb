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
    @data.group_by do |row|
      row[:country]
    end
  end

  def by_city_country
    @data.group_by do |row|
      "#{row[:state]}, #{row[:country]}"
    end
  end
end