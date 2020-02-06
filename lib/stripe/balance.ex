defmodule StripeElixir.Balance do
  use StripeElixir.API, [:list]

  def endpoint do
    "balance"
  end

  def retrieve do
    list
  end
end
