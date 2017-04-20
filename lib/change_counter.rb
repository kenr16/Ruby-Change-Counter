class Fixnum
  define_method(:change_counter) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    index = 0
    until change==0 || index == 20
      if change>=25
        change-=25
        quarters+=1
      elsif change>=10
        change-=10
        dimes+=1
      end
      index += 1
    end

    output = "#{quarters} quarters, #{dimes} dimes, #{nickels} nickels and #{pennies} pennies"
  end
end
