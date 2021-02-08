class Oystercard
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    self.balance += amount
    fail if amount + balance > 90
  end

  private

  attr_writer :balance
end