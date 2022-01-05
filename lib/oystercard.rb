
class Oystercard
  attr_reader :balance

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @journey_status = false
  end

  def top_up(value)
    fail "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if (@balance + value) > MAXIMUM_BALANCE
    @balance += value
  end

  def deduct(fare)
    fail "Insufficient balance" if (@balance - fare) < MINIMUM_BALANCE
    @balance -= fare
  end

  def touch_in
    @journey_status = true
  end

  def touch_out
    @journey_status = false
  end

  def in_journey?
    @journey_status
  end
end