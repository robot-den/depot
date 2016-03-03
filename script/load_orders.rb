Order.transaction do
  (1..100).each do |i|
    Order.create(
      name: "Customer #{i}",
      adress: "#{i} street",
      email: "#{i}@example.com",
      pay_type: 'Check')
  end
end