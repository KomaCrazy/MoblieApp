from googleapiclient.discovery import build
from google.oauth2 import service_account

credentials = service_account.Credentials.from_service_account_file(
    'credentials.json'
)

translate_service = build('translate', 'v2', credentials=credentials)

text_to_translate = 'Hello, world!'
target_language = 'th'

result = translate_service.translations().list(
    q=[text_to_translate],
    target=target_language
).execute()

translated_text = result['translations'][0]['translatedText']
print(translated_text)
