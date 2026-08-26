require "money"

# Wraps a Money object for a single account balance.
class Wallet
  def initialize(money)
    @money = money
  end

  # Covered by test/wallet_test.rb.
  def currency_code
    @money.currency.to_s
  end

  # Not exercised by any test. Hits the exact same removed API as
  # currency_code, so the same gem bump breaks it identically — but nothing
  # here would ever show that in CI.
  def formatted_balance
    "#{@money.currency.to_s}: #{@money}"
  end
end
