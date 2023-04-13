# Misli API

### Command I used for init project
`mix phx.new misli-api --no-install --app  misli_api --database postgres --no-live --no-assets --no-html --no-dashboard --no-mailer --binary-id`

### Generates controller, JSON view, and context for a JSON resource
`mix phx.gen.json Accounts(accounts modules) Account(schima file) accounts(table created) `

### In CMD open
`iex -S mix`
`MisliApi.Accounts.create_account(%{email: "test@example.com", hash_password: "thisishasedpassword"})`

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
