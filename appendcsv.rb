def append_with_csv(res)
  CSV.open('results.csv', 'a') do |csv|
    csv << res
  end