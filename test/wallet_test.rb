require "test_helper"
require "wallet"

class WalletTest < Minitest::Test
  def test_currency_code
    wallet = Wallet.new(Money.new(500, "USD"))
    assert_equal "USD", wallet.currency_code
  end
end
