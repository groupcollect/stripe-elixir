defmodule StripeElixir.Recipient do
  use StripeElixir.API, [:create, :retrieve, :update, :delete, :list]

  def endpoint do
    "recipients"
  end
end
