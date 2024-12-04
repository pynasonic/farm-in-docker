from pymongo import MongoClient

def get_database():
    client = MongoClient("mongodb://mongodb:27017/")
    # client = MongoClient("mongodb://localhost:27017/")
    return client['todo_database']
