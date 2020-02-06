defmodule StripeElixir.Refund do
  use StripeElixir.API, [:create, :retrieve, :update, :list]

  def endpoint do
    "refunds"
  end
end
