# Telegram Fitness Bot with Ruby

## Built With

- Ruby

> 

![screenshot](./assets/first-prompt.png)
![screenshot](./assets/bmi-prompt.png)

## Getting Started 

- Open your terminal - Windows: `Win + R`, then type `cmd` | Mac: `Command + space`, then type `Terminal`
- Navigate to a directory of your choosing using the `cd` command
- Run this command in your OS terminal: `git clone https://github.com/george-swift/` to get a copy of the project.
- Navigate to the project's directory using the `cd` command.
- Open the Telegram app and search for the BotFather and give the start command to BotFather by typing `/start`.
- You’ll see a list of commands that help you create, edit, and manage your bots. Since it’s your first time, send `/newbot`.
- After giving the `/newbot` command, you get to pick a name and username for your bot. The name is what your users will see the bot as in their contacts list, and the username is how you find it. With that done, you’ll be given your bot’s API key. The API key is how Telegram knows the code you write is associated with this particular bot.
- Next create a file called `token.rb` in the `lib directory` with your API in the following code to set up the class

```
  class GetToken
    def token
      'write your API key here'
    end
  end

```
- Save the changes made.
- Execute `./bin/bot.rb` from the project's root folder or change directory to `cd bin` and run `ruby bot.rb`
- Go back to Telegram, search the name of your bot and type `/start` to interact with the bot

### Prerequisites

* Internet connection
* Ruby installed in your OS
* Telegram account

## Testing
- Open the terminal on the project root folder
- Execute `rspec --format doc` to run all the test cases

👤 **Author**

- GitHub: [@george-swift](https://github.com/george-swift)
- Twitter: [@\_\_pragmaticdev](https://twitter.com/__pragmaticdev)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Kindly give a ⭐️ if you like this project!
