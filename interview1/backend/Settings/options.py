import firebase_admin
from firebase_admin import credentials
from firebase_admin import db
import json
cred = credentials.Certificate('../backend/Settings/komacrazy-d80a6-firebase-adminsdk-ivt34-4a86414a25.json')
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://komacrazy-d80a6-default-rtdb.firebaseio.com/'
})