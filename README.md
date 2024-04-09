# Treasure Hunt Game
This application is a Treasure Hunt game implemented using Ruby on Rails. Players can submit their guesses for the treasure's location through the REST API. If the distance between a player's guess and the actual treasure location is less than 1000 meters, the player is marked as a winner, and a confirmation email is sent.

# Getting Started

# Prerequisites
Ruby (3.3.1)
Rails (version 7.1.3)
PostgreSQL (version 16.2)

# Installation

Clone the repository:

```git clone https://github.com/your-username/treasure-hunt-game.git```

Navigate to the project directory:

```cd treasure-hunt-game```

Install dependencies:

```bundle install```

Set up the database:

```
rails db:create
rails db:migrate
```

Start the Rails server:

```rails server```

# Usage

# API Endpoints
`POST /api/guesses`: Submit a guess for the treasure's location.
`GET /api/winners`: Fetch a list of winners sorted by distance.


# Environment Variables
`GMAIL_USERNAME`: Email address of sender
`GMAIL_PASS`: Email password of sender

# Testing
To run the test suite, execute the following command:

```rails test```

# Deployment

This application can be deployed using various platforms such as Heroku, AWS, or DigitalOcean. Make sure to configure the necessary environment variables and database settings for production deployment.


# Built With
Ruby on Rails - Web framework
PostgreSQL - Database
Other libraries and dependencies listed in the Gemfile


# Contributing
Contributions are welcome! Please feel free to submit pull requests or open issues for any bugs or feature requests.

# License
This project is licensed under the MIT License - see the LICENSE file for details.

