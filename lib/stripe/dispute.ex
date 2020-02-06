defmodule StripeElixir.Dispute do
  use StripeElixir.API, [:list, :create, :update]

  def endpoint do
    "disputes"
  end

  def close_dispute_endpoint(id) do
    "#{endpoint()}/#{id}/close"
  end

  def close(id, opts \\ []) do
    StripeElixir.request(:post, close_dispute_endpoint(id), [], opts)
  end
end
