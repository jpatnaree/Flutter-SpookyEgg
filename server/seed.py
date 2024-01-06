#!/usr/bin/env python3

# Standard library imports
from random import randint, choice as rc, sample
from models import User, Review, Location
import time

# Remote library imports
from faker import Faker
from config import bcrypt
# Local imports
from app import app
from models import db

users_pictures =['https://i.imgur.com/GLU0AUM.png','https://i.imgur.com/zUdGUa4.png','https://i.imgur.com/wZTdK6G.png','https://i.imgur.com/qY5pyyd.png','https://i.imgur.com/OAKvD5z.jpg','https://i.imgur.com/1nhB0uB.png','https://i.imgur.com/ATWxhhf.png','https://i.imgur.com/7TF33Pq.png','https://i.imgur.com/CZP1Txg.png','https://i.imgur.com/VUi5x4C.png']

if __name__ == '__main__':
    fake = Faker()
    with app.app_context():
        
        User.query.delete()
        print("Start seeding...")
        users=[]
        for i in range(10):
            users.append(User(first_name = fake.first_name(), 
                              last_name = fake.last_name(),
                              image = users_pictures[i], 
                              email = fake.email(),
                              password_hash= bcrypt.generate_password_hash('123').decode('utf-8')))
        db.session.add_all(users)
        db.session.commit()

        print("Done seeding...")