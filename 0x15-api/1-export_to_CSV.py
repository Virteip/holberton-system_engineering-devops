#!/usr/bin/python3
"""Fetch data from an API"""
import csv
import requests
from sys import argv


if __name__ == "__main__":

    users = requests.get(
        "https://jsonplaceholder.typicode.com/users?id=" + argv[1])
    todos = requests.get(
        "https://jsonplaceholder.typicode.com/todos?userId=" + argv[1])

    users_json = users.json()
    todos_json = todos.json()
    task_list = []
    employee_name = users_json[0]['name']

    with open('USER_ID.csv', 'w') as f:
        write = csv.writer(f, quoting=csv.QUOTE_ALL)
        for data in todos_json:
            write.writerow([str(argv[1]), str(employee_name),
                            data['completed'], data['title']])
