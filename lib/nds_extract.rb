$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    totalDirectorGross = 0
    movieByDirector = 0
    while movieByDirector < director_data[:movies].length do
      totalDirectorGross += director_data[:movies][movieByDirector][:worldwide_gross]
      movieByDirector += 1
    end
    return totalDirectorGross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  directorCount = 0
  while directorCount < nds.length do
    result[nds[directorCount][:name]] += gross_for_director
    directorCount += 1
  end
  return result
end
