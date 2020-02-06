defmodule StripeElixir.BalanceTransaction do
  use StripeElixir.API, [:retrieve, :list]

  def endpoint do
    "balance/history"
  end

  def all(opts \\ []) do
    list([], opts)
  end
end
