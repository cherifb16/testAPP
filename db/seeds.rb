status=["todo","doing","done"]
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end
50.times do |n|
  Task.create!(title:"タスク#{n+1}",description:"タスクの内容#{n+1}",status:status.sample,deadline:time_rand(Time.local(2020, 1, 1), Time.local(2030, 12, 31)))
end
