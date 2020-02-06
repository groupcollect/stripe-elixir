defmodule StripeElixir.SubscriptionItem do
  use StripeElixir.API, [:create, :retrieve, :update, :delete, :list]

  def endpoint do
    "subscription_items"
  end
end
