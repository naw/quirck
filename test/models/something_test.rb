require 'test_helper'

class SomeClass

  def run
    buz = { MyModel.columns.second.name.to_sym =>  "3" }
    fill(foo: 'foo', bar: 'bar', baz: 'baz', **buz)
  end

  def fill(foo:, bar:, baz:, **args)
    bar
  end

end


class SomethingTest < MiniTest::Test

  def test_something
    assert_equal SomeClass.new.run, "bar"
  end
end
