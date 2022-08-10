#!/bin/bash
#
## find ip in the file ##
npx cypress run
 
## Did we found IP address? Use exit status of the grep command ##
if [ $? -eq 1 ]
then
  curl --location --request GET 'https://api.telegram.org/bot5561712203:AAE3zaUjDdVjPFSpGJFP0NJOA2-Ej2nuL_Y/sendMessage?chat_id=@passcheckmybot&text=Судя по всему паспорт готов, ну или у них не работает сервис.'
  exit 0
else
  curl --location --request GET 'https://api.telegram.org/bot5561712203:AAE3zaUjDdVjPFSpGJFP0NJOA2-Ej2nuL_Y/sendMessage?chat_id=@passcheckmybot&text=Паспорт еще не готов.Ждем'
  exit 1
fi
