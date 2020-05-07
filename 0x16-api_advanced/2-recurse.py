#!/usr/bin/python3
""" Now all the hot titles """
import json
import requests
from sys import argv


def recurse(subreddit, hot_list=[], x=0):
    """ All the hotness """
    try:
        header = {'user-agent': 'sergio/0.0.1'}
        fetch = requests.get(
            "https://www.reddit.com/r/" + subreddit + "/hot.json",
            headers=header, allow_redirects=False)
        data_j = fetch.json()

        title = data_j.get('data').get('children')[x].get('data')['title']

        if title is not None:
            hot_list.append(title)
            recurse(subreddit, hot_list, x+1)
        print(hot_list)
        return hot_list
    except:
        return None
