# See http://net.tutsplus.com/tutorials/exploring-rack/
class Hello
  def self.call(env)
    [
      200,
      {"Content-Type" => "text/plain"},
      ["Hello from Rack"]
    ]
  end
end

run Hello
