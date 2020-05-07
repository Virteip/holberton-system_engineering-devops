#!/usr/bin/python3
""" Fetch number of subs """
import json
import requests
from sys import argv


def number_of_subscribers(subreddit):
    """ Number of subscribers to subreddit """
    try:
        header = {'user-agent': 'sergio/0.0.1'}
        fetch = requests.get(
            "https://www.reddit.com/r/" + argv[1] + "/about.json",
            headers=header, allow_redirects=False)
        json_num = fetch.json().get('data').get('subscribers')

        return int(json_num)
    except:
        return 0
