



#serialized data is converted back to ruby object.
#What is the point of #restore?

obj = Marshal.load(File.open("MarshalData.data",'r'))

puts obj.class
puts obj
puts

#does not seem to write the definition of the class! Needs more research.
begin
obj = Marshal.load(File.open("MarshalData2.data",'r'))

puts obj.class
puts obj
rescue
end

#given the require this works, but what is the point. How to write a class definition?
begin
class Potato 
end

obj = Marshal.load(File.open("MarshalData2.data",'r'))

puts obj.class
puts obj
a = obj.new(1,1,1)
puts a
rescue
end

begin
require './MarshalWrite'

obj = Marshal.load(File.open("MarshalData2.data",'r'))

puts obj.class
puts obj
a = obj.new(1,1,1)
puts a
end