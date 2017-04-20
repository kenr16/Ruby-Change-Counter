class Fixnum
  define_method(:change_counter) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    until change==0
      if change>=25
        change-=25
        quarters+=1
      else
      end
    end

    output = "#{quarters} quarters, #{dimes} dimes, #{nickels} nickels and #{pennies} pennies"
  end
end
