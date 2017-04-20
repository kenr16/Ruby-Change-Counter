class Fixnum
  define_method(:change_counter) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    output = "#{quarters} quarters, #{dimes} dimes, #{nickels} nickels and #{pennies} pennies"
  end
end
