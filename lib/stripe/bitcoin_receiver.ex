defmodule StripeElixir.BitcoinReceiver do
  use StripeElixir.API, [:create, :retrieve, :list]

  def endpoint do
    "bitcoin/receivers"
  end
end
