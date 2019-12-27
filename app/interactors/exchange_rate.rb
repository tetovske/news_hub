
require 'money'
require 'eu_central_bank'

class ExchangeRate
  include Interactor

  def call
    setup
    context.res = convert(context.val, context.from, context.to)
  end

  private

  def setup
    @eu_bank = EuCentralBank.new
    Money.default_bank = @eu_bank
    @eu_bank.update_rates
  end

  def convert(value, from, to)
    @eu_bank.exchange(value, from, to)
  end
end