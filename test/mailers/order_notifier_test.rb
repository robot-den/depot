require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Order confirmation", mail.subject
    assert_equal ["my@mail.org"], mail.to
    assert_equal ["robot@depot.com"], mail.from
    assert_match "Hi!", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Order send", mail.subject
    assert_equal ["my@mail.org"], mail.to
    assert_equal ["robot@depot.com"], mail.from
    assert_match "Hi!", mail.body.encoded
  end

end
