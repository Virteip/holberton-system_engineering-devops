#!/usr/bin/python3
""" Top 10 hot posts """
import json
import requests
from sys import argv


def top_ten(subreddit):
    """ Top 10 hot posts """
    try:
        header = {'user-agent': 'sergio/0.0.1'}
        fetch = requests.get(
            "https://www.reddit.com/r/" + argv[1] + "/hot.json",
            headers=header, allow_redirects=False)
        data_j = fetch.json()

        for x in range(10):
            print(data_j.get('data').get('children')[x].get('data')['title'])

    except:
        return None
