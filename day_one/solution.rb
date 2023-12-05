require 'httparty'
# require 'pry'

headers = {
  cookie: "session=53616c7465645f5fb7b04efbbbd19eafe3140ab9939e42dd405f0082c380d5d4c1b305fc20ce86d52c883e75f6c21ab0246937d6a76696d9ccb63d5543496a80"
}
file = HTTParty.get("https://adventofcode.com/2023/day/1/input", headers: headers)
codes = file.body.split("\n")

sum = 0
codes.each do |code|
  numbers = code.split('').filter { |i| i.to_i != 0 }
  p numbers
  if numbers.length > 1
    sum += "#{numbers[0]}#{numbers[-1]}".to_i
  elsif numbers.length == 1
    sum += "#{numbers[0]}#{numbers[0]}".to_i
  end
  # binding.pry
end

p sum
# Answer was 55029
