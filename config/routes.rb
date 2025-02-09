Rails.application.routes.draw do
  get("/", {:controller => "calc", :action => "square"})
  get("/square/new", {:controller => "calc", :action => "square"})
  get("/square_root/new", {:controller => "calc", :action => "sqrt"})
  get("/payment/new", {:controller => "calc", :action => "payment"})
  get("/random/new", {:controller => "calc", :action => "random"})
  get("/square/results", {:controller => "results", :action => "square"})
  get("/square_root/results", {:controller => "results", :action => "sqrt"})
  get("/payment/results", {:controller => "results", :action => "payment"})
  get("/random/results", {:controller => "results", :action => "random"})
end
