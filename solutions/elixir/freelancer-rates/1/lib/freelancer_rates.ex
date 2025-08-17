defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount/100)
  end

  def monthly_rate(hourly_rate, discount) do
    hourly_rate 
    |> daily_rate() 
    |> apply_discount(discount) 
    |> (&(&1 * 22)).()
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
     hourly_rate
     |> daily_rate()
     |> apply_discount(discount)
     |> (&(Float.floor(budget / &1, 1))).()
  end
end
