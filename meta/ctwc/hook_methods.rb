$INHERITORS = []

class C
  def self.inherited(subclass)
    $INHERITORS << subclass
  end
end

class D < C
end

class E < C
end

class F < E
end

puts $INHERITORS
