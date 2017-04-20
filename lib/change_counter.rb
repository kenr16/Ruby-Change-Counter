class Fixnum
  define_method(:change_counter) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    availible_quarters = 2
    availible_dimes = 2
    availible_nickels = 1

    # output_array = [0, 0, 0, 0]
    # output_array[0] = (output_array[0] + 1)

    index = 0
    until change==0 || index == 20
      if change >= 25 && availible_quarters > 0
        change -= 25
        quarters += 1
        availible_quarters -= 1
      elsif change >= 10 && availible_dimes > 0
        change -= 10
        dimes += 1
        availible_dimes -= 1
      elsif change >= 5 && availible_nickels > 0
        change -= 5
        nickels += 1
        availible_nickels -= 1
      elsif change >= 1
        change -= 1
        pennies += 1
      end
      index += 1
    end

    output = "#{quarters} quarters, #{dimes} dimes, #{nickels} nickels and #{pennies} pennies"

    if availible_quarters == 0 || availible_dimes == 0 || availible_nickels == 0
      output.concat(" Sorry, we ran out of ")
    end
    if availible_quarters == 0
      output.concat("quarters")
    end
    if availible_dimes == 0
      output.concat(" dimes")
    end
    if availible_nickels == 0
      output.concat(" nickels")
    end
    if availible_quarters == 0 || availible_dimes == 0 || availible_nickels == 0
      output.concat(".")
    end

    output
  end
end
