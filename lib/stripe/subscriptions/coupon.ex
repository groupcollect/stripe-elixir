defmodule StripeElixir.Coupon do
  use StripeElixir.API, [:create, :retrieve, :update, :delete, :list]

  def endpoint do
    "coupons"
  end
end
