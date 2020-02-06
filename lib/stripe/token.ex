defmodule StripeElixir.Token do
  use StripeElixir.API, [:create, :retrieve]

  def endpoint do
    "tokens"
  end
end
