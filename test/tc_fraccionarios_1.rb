require 'lib/Fraccionarios'
require 'test/unit'

class TestFraccionarios < Test::Unit::TestCase
  def setup
    @f_1 = Fraccionarios.new(2,4)
  end
  def tear_down
    # nothing
  end
  def test_inicio
    assert_equal("1/2", @f_1.to_s)
    
  end
end