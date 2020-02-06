defmodule StripeElixir.Subscription do
  use StripeElixir.API, [:create, :retrieve, :update, :delete, :list]

  def endpoint do
    "subscriptions"
  end

  def delete_discount(subscription_id, opts \\ []) do
    StripeElixir.request(:delete, "#{endpoint()}/#{subscription_id}/discount", [], opts)
  end
end
