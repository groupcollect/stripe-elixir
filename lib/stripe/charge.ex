defmodule StripeElixir.Charge do
  use StripeElixir.API, [:list, :retrieve, :create, :update]

  def endpoint do
    "charges"
  end

  def capture_endpoint(id) do
    "#{endpoint()}/#{id}/capture"
  end

  def capture(id, opts \\ []) do
    StripeElixir.request(:post, capture_endpoint(id), [], opts)
  end
  
  def capture(id, data, opts) do
    StripeElixir.request(:post, capture_endpoint(id), data, opts)
  end
end
