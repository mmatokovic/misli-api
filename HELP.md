# Getting Started

### Installation
Command used to create a Phonix project named "misli-api" `mix phx.new misli-api --no-install --app misli_api --database postgres --no-live --no-assets --no-html --no-dashboard --no-mailer --binary-id`

### Reference Documentation
For further reference, please consider the following sections:

* [Official Phoenix framework documentation](https://hexdocs.pm/phoenix/overview.html)

### Guides
The following guides illustrate how to use some features concretely:

psql -U postgres misli_api_dev

mix phx.gen.json Accounts Account accounts name:string
mix phx.gen.json Users User users name:string email:string account:references:accounts information:string disabled:boolean
* []()
