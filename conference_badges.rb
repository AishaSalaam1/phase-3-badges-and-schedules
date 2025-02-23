# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
  end
  
  def batch_badge_creator(attendees)
    attendees.map { |name| "Hello, my name is #{name}." }
  end
  
  def assign_rooms(attendees)
    attendees.each_with_index.map do |name, index|
      "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
  end
  
  def printer(attendees)
    badges = batch_badge_creator(attendees)
    room_assignments = assign_rooms(attendees)
  
    badges.each { |badge| puts badge }
    room_assignments.each { |assignment| puts assignment }
  end
  