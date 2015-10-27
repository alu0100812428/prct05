require 'lib/Fraccionarios'
require 'test/unit'

class TestFraccionarios < Test::Unit::TestCase
  def setup
    @f_1 = Fraccionarios.new(2,4)
    @f_2 = Fraccionarios.new(2,8)
    @f_3 = Fraccionarios.new(1,4)
  end
  def tear_down
    # nothing
  end
  def test_inicio
    assert_equal("1/2", @f_1.to_s)
  end
  def test_lcm
    assert_equal(24, @f_2.lcm(8,12))
  end
  
  def test_operaciones
    assert_equal("3/4", (@f_3 + @f_1).to_s)
    assert_equal("1/4", (@f_1 - @f_3).to_s)
    assert_equal("1/2", (@f_3 / @f_1).to_s)
    assert_equal("1/16", (@f_3 * @f_3).to_s)
  end
end