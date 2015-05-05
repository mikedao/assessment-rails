require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it is active by default" do
    list = List.create(title: "test", active: nil)

    assert list.active
  end
end

