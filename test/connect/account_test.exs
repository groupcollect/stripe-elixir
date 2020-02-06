defmodule StripeElixir.AccountTest do
  use ExUnit.Case

  test "create/update/retrieve/delete an account" do
    assert {:ok, account} = StripeElixir.Account.create(type: "custom")
    assert {:ok, %{"email" => _email}} = StripeElixir.Account.retrieve(account["id"])
    assert {:ok, %{"metadata" => %{"test" => "data"}}} =
      StripeElixir.Account.update(account["id"], metadata: [test: "data"])
    assert {:ok, _} = StripeElixir.Account.delete(account["id"])
    assert {:error, _} = StripeElixir.Account.retrieve(account["id"])
  end

  test "list all accounts" do
    assert {:ok, %{"object" => "list", "url" => "/v1/accounts"}} = StripeElixir.Account.list
  end

  test "create/update/retrieve/delete/list an external_account" do
    {:ok, account} = StripeElixir.Account.create(type: "custom")

    {:ok, token} = StripeElixir.Token.create(
      card: [
        number: "4000056655665556",
        exp_month: 7,
        exp_year: 2018,
        cvc: "314",
        currency: "usd"
      ]
    )

    {:ok, token2} = StripeElixir.Token.create(
      card: [
        number: "5200828282828210",
        exp_month: 7,
        exp_year: 2018,
        cvc: "314",
        currency: "usd"
      ]
    )

    account_id = account["id"]

    assert {:ok, external_account} =
      StripeElixir.Account.create_external_account(account_id, external_account: token["id"])
    assert {:ok, external_account2} =
      StripeElixir.Account.create_external_account(account_id, external_account: token2["id"])

    url = "/v1/accounts/#{account_id}/external_accounts"

    assert {:ok, %{"object" => "list", "url" => ^url}}
      = StripeElixir.Account.list_external_account(account_id)

    external_account_id = external_account["id"]
    external_account_id2 = external_account2["id"]

    assert {:ok, ^external_account} = StripeElixir.Account.retrieve_external_account(account_id, external_account_id)
    assert {:ok, %{"metadata" => %{"test" => "data"}}} =
      StripeElixir.Account.update_external_account(account_id, external_account_id, metadata: [test: "data"])
    assert {:ok, _} = StripeElixir.Account.delete_external_account(account_id, external_account_id2)
    assert {:error, _} = StripeElixir.Account.retrieve_external_account(account_id, external_account_id2)
  end
end
