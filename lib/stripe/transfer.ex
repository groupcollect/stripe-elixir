defmodule StripeElixir.Transfer do
  use StripeElixir.API, [:create, :retrieve, :update, :list]

  def endpoint do
    "transfers"
  end

  def transfer_reversal_endpoint(transfer_id, reversal_id \\ "") do
    "#{endpoint()}/#{transfer_id}/reversals/#{reversal_id}"
  end

  def create_reversal(transfer_id, data \\ [], opts \\ []) do
    StripeElixir.request(:post, transfer_reversal_endpoint(transfer_id), data, opts)
  end

  def retrieve_reversal(transfer_id, reversal_id, opts \\ []) do
    StripeElixir.request(:get, transfer_reversal_endpoint(transfer_id, reversal_id), [], opts)
  end

  def update_reversal(transfer_id, reversal_id, data, opts \\ []) do
    StripeElixir.request(:post, transfer_reversal_endpoint(transfer_id, reversal_id), data, opts)
  end

  def list_reversals(transfer_id, pagination_opts, opts \\ []) do
    StripeElixir.request(:get, transfer_reversal_endpoint(transfer_id), pagination_opts, opts)
  end
end
