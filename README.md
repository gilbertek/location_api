# Location Api

Simple Rails API

## Dependencies

- Ruby
- Ruby On Rails
- Postgres

## Installation

Make sure to have Ruby installed and Rails 6

## Usage

1. Clone the repository
2. Run `bundle install`
3. Run `bundle exec rails db:setup`
4. Run `bundle exec rails db:seed`
5. Run `bundle exec rails s`

Fire up postman and test `http://localhost:3000/api/v1/users`

*Here are the endpoints available*

```
POST api/v1/users/{user_id}/visits
GET api/v1/users/{user_id}/visits?searchString=X
GET api/v1/visits/{visit_id}
GET api/v1/merchants
```
*Public url*

`https://frozen-meadow-54072.herokuapp.com/`
