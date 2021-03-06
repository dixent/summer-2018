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

# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
# rubocop:disable Naming/UncommunicativeMethodParamName
# :reek:UncommunicativeParameterName, :reek:FeatureEnvy
# :reek:UncommunicativeVariableName, DuplicateMethodCall
def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  raise TriangleError if [a, b, c].min <= 0 || a + b <= c
  if a == b && b == c
    :equilateral
  elsif a == b || a == c || b == c
    :isosceles
  else
    :scalene
  end
end

# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
# rubocop:enable Naming/UncommunicativeMethodParamName

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
