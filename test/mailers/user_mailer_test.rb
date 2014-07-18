require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "contact_message" do
    mail = UserMailer.contact_message
    assert_equal "Contact message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
