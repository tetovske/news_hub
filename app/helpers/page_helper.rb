module PageHelper
  def get_usd_rate
    ExchangeRate.call(val: 1, from: 'USD', to: 'RUB').res * 100
  end

  def get_eur_rate
    ExchangeRate.call(val: 1, from: 'EUR', to: 'RUB').res * 100
  end
end
