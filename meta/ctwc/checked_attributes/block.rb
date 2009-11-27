require 'test/unit'

class Person; end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age) { |val| val >= 18 }
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_invalid_values
    assert_raises RuntimeError, "Invalid attribute" do
      @bob.age = 17
    end
  end

end

def add_checked_attribute(clazz, attribute, &validation)
  clazz.class_eval do
    define_method "#{attribute}=" do |val|
      raise 'Invalid attribute' unless validation.call(val)
      instance_variable_set("@#{attribute}", val)
    end

    define_method attribute do
      instance_variable_get "@#{attribute}"
    end
  end
end
