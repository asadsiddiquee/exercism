defmodule Lasagna do
  # Defined expected minutes in oven, eg 40
  def expected_minutes_in_oven, do: 40
  # calculate remaining time based on current time passed in argument
  def remaining_minutes_in_oven(minutes), do: Lasagna.expected_minutes_in_oven - minutes
  # calculate preparation time for layers
  def preparation_time_in_minutes(number_of_layer), do: number_of_layer * 2
  # total  time in minutes
  def total_time_in_minutes(number_of_layer, minutes_passed), 
      do: Lasagna.preparation_time_in_minutes(number_of_layer) + minutes_passed
  # trigger alarm
  def alarm, do: "Ding!"
end
