defmodule StripeElixir.ApplicationFee do
  use StripeElixir.API, [:create, :retrieve, :update, :list]

  def endpoint do
    "application_fees"
  end

  def refund(fee_id, opts \\ []) do
    StripeElixir.request(:post, "#{endpoint()}/#{fee_id}/refund", [], opts)
  end

  def retrieve_refund(fee_id, refund_id, opts \\ []) do
    StripeElixir.request(:get, "#{endpoint()}/#{fee_id}/refund/#{refund_id}", [], opts)
  end
end
