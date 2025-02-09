class CalcController < ApplicationController
  def square
    render({:template => "pages_templates/square"})
  end
  def sqrt
    render({:template => "pages_templates/sqrt"})
  end
  def payment
    render({:template => "pages_templates/payment"})
  end
  def random
    render({:template => "pages_templates/random"})
  end
end
