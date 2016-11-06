Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:NUMBER", { :controller => "calculations", :action => "square" })

  get("/square_root/:NUMBER", { :controller => "calculations", :action => "square_root" })

  get("/random/:MIN/:MAX", { :controller => "calculations", :action => "random" })

  get("/payment/:INTEREST_RATE/:NUMBER_OF_YEARS/:PRINCIPAL_VALUE", { :controller => "calculations", :action => "payment" })


end
