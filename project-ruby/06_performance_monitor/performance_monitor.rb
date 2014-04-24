def measure(num = 1)
  total = 0

  num.times do
    start_time = Time.now

    yield

    total += (Time.now - start_time).round(1)
  end

  total / num
end
