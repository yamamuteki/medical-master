# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
ActiveRecord::Base.transaction do
  Medicine.delete_all
  CSV.foreach('db/y.csv', encoding: 'Shift_JIS') do |row|
    Medicine.create code: row[2], name: row[4]
    print '.'
  end

  Disease.delete_all
  CSV.foreach('db/b_20151001.txt', encoding: 'Shift_JIS') do |row|
    Disease.create code: row[2], name: row[5]
    print '.'
  end
end
