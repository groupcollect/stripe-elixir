defmodule StripeElixir.Payout do
  use StripeElixir.API, [:list, :retrieve]

  def endpoint do
    "payouts"
  end
end
