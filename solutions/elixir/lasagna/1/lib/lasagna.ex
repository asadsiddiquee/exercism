defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven(), do: 40
  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(elapsed_time), 
      do: expected_minutes_in_oven() - elapsed_time
  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(number_of_layer),
      do: 2 * number_of_layer
  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(number_of_layer, elapsed_time) do
    preparation_time_in_minutes(number_of_layer) + elapsed_time
  end
  # Please define the 'alarm/0' function
  def alarm(), do: "Ding!"
end
