def currency_of(country)
  case country
  when :janapn
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "invalid argument. #{country}"
  end
end

currency_of(:italy)
