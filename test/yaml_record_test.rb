require "test_helper"

class YamlRecordTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::YamlRecord::VERSION
  end
end
