class ResultsController < ApplicationController
  def square
    @function = "square"
    @function_print = "square"
    @number = params.fetch("number")
    @value = @number.to_f
    @result = @value ** 2
    @print_hash = {"Number"=>@number, "Square"=>@result}
    render({:template => "pages_templates/result"})
  end
  def sqrt
    @function = "square_root"
    @function_print = "square root"
    number = params.fetch("user_number")
    result = Math.sqrt(number.to_f)
    @print_hash = {"Number"=>number, "Square Root"=>result}
    render({:template => "pages_templates/result"})
  end
  def payment
    @function = "payment"
    @function_print = "payment"
    apr = params.fetch("user_apr").to_f
    years = params.fetch("user_years").to_i
    pv = params.fetch("user_pv").to_f
    r = (apr/100) / 12
    n = years * 12
    p = (r * pv)/(1 - (1+r)**(-n))
    @print_hash = {"APR"=>apr.to_fs(:percentage, {:precision=>4}), "Number of years"=>years, "Principal"=>pv.to_fs(:currency), "Payment"=>p.to_fs(:currency)}
    render({:template => "pages_templates/result"})
  end
  def random
    @function = "random"
    @function_print = "random"
    min = params.fetch("user_min").to_f
    max = params.fetch("user_max").to_f
    result = rand(min..max)
    @print_hash = {"Minimum"=>min, "Maximum"=>max, "Square Root"=>result}
    render({:template => "pages_templates/result"})
  end
end
