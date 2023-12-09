# MisliApi


```mermaid
classDiagram
    User <-- Account
    class Account{
        id : binary_id
        name : String
        updated_at : String
        created_at : String
    }
    class User{
        id : binary_id
        name : String
        email : String
        disabled : Boolean
        information: String
        updated_at : String
        created_at : String
    }
```

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex.bat -S mix phx.server`

Now you can visit [`localhost:8080`](http://localhost:8080) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
