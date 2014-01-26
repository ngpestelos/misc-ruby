require 'time'

def avg(times)
  #times = ["01:00", "0:30", "1:00"]
  parsed_times = times.map { |t| Time.parse t }
  sum = parsed_times.reduce(0) { |a,t| a += t.to_i }.to_f
  t = Time.at(sum/times.size)
  puts t.strftime("%H:%M")
end
