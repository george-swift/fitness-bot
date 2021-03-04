# frozen_string_literal: true

require 'telegram/bot'
require_relative '../lib/token'
require_relative '../lib/calculator'
require_relative '../lib/wellness'

config = GetToken.new
token = config.token
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Hello #{message.from.first_name} 👋🏽, I am Jarvis, your personal fitness 🏋🏽 guide.")
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'Leading a lifestyle that spells good health 🧘🏽‍♂️ includes exercise and eating right')
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'I am here to provide you with routines and tips tailored for you to be fit 😃')
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Which area can I help with? \n /Exercise 🤼‍♂️ \n /Nutrition 🥗 ")
    when '/Exercise'
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'Select a category of exercises to build the body strength and size you want')
      bot.api.send_message(chat_id: message.chat.id, text: "\n /Upperbody	\n /Lowerbody")
    when '/Upperbody'
      exercises = WellnessTips.new
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'Upper body exercises build your back, chest, shoulders and strengthen your core')
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'Not sure what to do at the gym? These exercises are a good, strong, starting point')
      sleep(1)
      bot.api.send_message(chat_id: message.chat.id, text: exercises.upper_body.to_s)
      sleep(0.5)
      bot.api.send_message(chat_id: message.chat.id,
                           text: "For more helpful tips, select either of the two options \n /Exercise \n /Nutrition")
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Want to get started already? Select 'Stop' to end the prompts \n /stop")
    when '/Lowerbody'
      exercises = WellnessTips.new
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'These exercises target your calves, glutes, hamstring and quads.')
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'Strengthening these areas will improve your functional fitness levels 🩺')
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'And they are also really important for preventing injury too 💁🏽')
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'Below are the best bodyweight exercises for your lower body.')
      sleep(1)
      bot.api.send_message(chat_id: message.chat.id, text: exercises.lower_body.to_s)
      sleep(0.5)
      bot.api.send_message(chat_id: message.chat.id,
                           text: "For more helpful tips, select either of the two options \n /Exercise \n /Nutrition")
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Want to get started already? Select 'Stop' to end the prompts \n /stop")
    end
  end
end
