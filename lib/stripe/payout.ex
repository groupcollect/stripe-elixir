defmodule Stripe.Payout do
  use Stripe.API, [:list, :retrieve]

  def endpoint do
    "payouts"
  end
end
