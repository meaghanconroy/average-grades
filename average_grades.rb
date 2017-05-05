jane = [98, 95, 88, 97, 74]
samantha = [85, 93, 98, 88, 49]
matt = [87, 93, 89, 97, 65]

def average(grades)
  grades.inject(0) { |sum, grades| sum += grades } / grades.size.to_f
end

jane_average = average(jane)
puts jane_average
samantha_average = average(samantha)
puts samantha_average
matt_average = average(matt)
puts matt_average

def letter_grade(average)
  if average >= 90
    puts "A!"
  elsif average >= 80
    puts "B!"
  elsif average >= 70
    puts "C."
  elsif average >= 60
    puts "D."
  else
    puts "F."
  end
end

jane_final = letter_grade(jane_average)
samantha_final = letter_grade(samantha_average)
matt_final = letter_grade(matt_average)
puts jane_final
puts samantha_final
puts matt_final

def rankings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end
rankings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
