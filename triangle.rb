# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
=begin
  unique_sides = [a,b,c].uniq.length

  if unique_sides == 1
  	return :equilateral
  elsif unique_sides == 2
  	return :isosceles
  else
  	return :scalene
  end
=end

#refactored code
sorted_sides = [a,b,c].sort
if (a|b|c) <= 0
	raise TriangleError, "The sides of a triangle cannot less than or equal to zero"
elsif sorted_sides[0] + sorted_sides[1] <= sorted_sides[2]
	raise TriangleError, "Two sides of a triangle must be greater than the third"
else
	[:equilateral, :isosceles, :scalene].fetch([a,b,c].uniq.length - 1)
end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
