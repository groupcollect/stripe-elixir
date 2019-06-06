defmodule Stripe.Payout do
  use Stripe.API, [:list, :retrieve]

  def endpoint do
    "payouts"
  end

  def all(opts \\ []) do
    list([], opts)
  end
end
