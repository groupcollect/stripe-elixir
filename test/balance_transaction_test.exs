defmodule StripeElixir.BalanceTransactionTest do
  use ExUnit.Case, async: true

  alias StripeElixir.BalanceTransaction
  alias StripeElixir.InvalidRequestError

  test "retrieve a balance transaction" do
    assert {:error, %InvalidRequestError{message: "No such balance transaction: not exist"}}
      = BalanceTransaction.retrieve("not exist")
  end

  test "list all balance transaction" do
    assert {:ok, %{"object" => "list", "url" => "/v1/balance/history"}}
      = BalanceTransaction.all
  end
end
