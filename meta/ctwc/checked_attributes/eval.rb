require 'test/unit'

class Person; end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, "Invalid attribute" do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, "Invalid attribute" do
      @bob.age = false
    end
  end
end

def add_checked_attribute(clazz, attribute)
  eval "
    class #{clazz}
      def #{attribute}=(val)
        raise 'Invalid attribute' unless val
        @#{attribute} = val
      end

      def #{attribute}()
        @#{attribute}
      end
    end
  "
end
