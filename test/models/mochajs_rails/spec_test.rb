require 'test_helper'

class MochajsRailsSpecTest < ActiveSupport::TestCase
  test "all specs" do
    paths = MochajsRails::Spec.all.map(&:path)
    assert_includes paths, "array_sum_spec"
    assert_includes paths, "subdirectories/minus_spec"
  end
end
