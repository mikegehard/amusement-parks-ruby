require_relative '../lib/amusement_park_database'
require 'yaml'

data = YAML.load(File.read('../data/amusement_parks.yml'))

db = AmusementParkDatabase.new(data)

p db.by_id