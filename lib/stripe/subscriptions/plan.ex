defmodule StripeElixir.Plan do
  use StripeElixir.API, [:create, :retrieve, :update, :delete, :list]

  def endpoint do
    "plans"
  end
end
