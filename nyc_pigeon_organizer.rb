require 'pry'

pigeon_list_sample = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  # Currently have what is below:
  "Peter Jr." => {}
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |top_level_key, top_level_value|
    top_level_value.each do |low_level_key, low_level_value|
      low_level_value.each do |name|
        if pigeon_list.include?(name) == false
          pigeon_list[name] = {} # this creates a new hash every time a name appears and replaces the info
        end
          # binding.pry
          pigeon_list[name][top_level_key] ||= []
          pigeon_list[name][top_level_key] << low_level_key.to_s
          # binding.pry

        # have logic to check if pigeon_list has name already in
      end
    end
  end
  pigeon_list
  # binding.pry
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
