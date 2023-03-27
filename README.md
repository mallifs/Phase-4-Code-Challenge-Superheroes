Superhero API
This is an API for managing superheroes and their powers. The API allows for creating, reading, updating, and deleting superheroes and powers, as well as assigning powers to superheroes.

Models
The API has three models:

Hero: represents a superhero, has many Powers through HeroPower
Power: represents a superpower, has many Heros through HeroPower
HeroPower: represents the relationship between a superhero and a superpower, belongs to a Hero and belongs to a Power
Validations
The following validations are implemented:

HeroPower: strength must be one of the following values: 'Strong', 'Weak', 'Average'

Power: description must be present and at least 20 characters long

Routes
The API exposes the following routes:

GET /heroes: returns a list of all superheroes in the database.
GET /heroes/id returns a specific superhero with the given id if it exists, along with all the powers associated with that hero.
GET /powers: returns a list of all superpowers in the database.
GET /powers/id returns a specific superpower with the given id if it exists.
PATCH /powers/id updates the description of a specific superpower with the given id, if it exists and passes validations.
POST /hero_powers: creates a new HeroPower that is associated with an existing Power and Hero. The request body should contain the strength, power_id, and hero_id properties. All routes return JSON data.
Installation and Usage
To use the API, follow these steps:

Clone the repository.
Run bundle install to install the required gems. Run rails db:migrate to set up the database. (optional) Run rails db:seed to add some seed data to the database. Run rails server to start the server. Use your preferred API client to interact with the API.

Errors

If a request is made with invalid parameters, the API will respond with a JSON error message.

Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mallifs/Phase-4-Code-Challenge-Superheroes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

License

This application is available as open source under the terms of the MIT License.

Code of Conduct

Everyone interacting in the Superhero API  project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.


Copyright 2023 Mallifs leo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. Author This repository is maintained by:

- [Mallifs Leo](https://github.com/mallifs) 