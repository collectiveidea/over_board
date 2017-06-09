# React + Relay + GraphQL + Rails

This repo contains a [graphql-ruby](http://graphql-ruby.org/) implementation of my favorite react+relay boilerplate, [relay-fullstack](https://github.com/lvarayut/relay-fullstack).

I've fairly slavishly translated the JavaScript back-end code into ruby using the `graphql-ruby` gem,
so please pardon the big `Database` model and other oddities. Any halfway decent Rails
coder will easily be able to swap out the right parts and make it more idiomatic.

The goal here, on my end at least, was to kick the tires of the `graphql-ruby` gem,
but I've released this here so that anyone who wants to take a look can easily do it.

I've left the original express-based GraphQL server code in the repo under the `/server`
directory, for reference and easy comparison. When I expand on this with a different app, I'll rip out
the unused code.

## Booting up

When you clone this boilerplate, you'll first want to `yarn install` and `bundle install`.

You can start the node.js front-end by running `yarn start`, and of course rails is `rails s`.

I had originally generated the rails boilerplate with the `--api` switch, but
the super-handy GraphiQL interface doesn't run without the actual rails front-end
apparatus, so I went ahead and put it back in. So this app sort of has two front-ends:
the node/express/relay front-end that serves up the app to the users (under the `/client` directory),
and the rails GraphiQL front-end, available at `localhost:3000/graphiql`. That's not great,
IMO it's less terrible than the current state of modern JS on rails.