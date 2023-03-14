import datetime
import glob
import os
import requests
import urllib3
urllib3.disable_warnings()

from openpyxl import load_workbook
from openpyxl.styles import Alignment
import base64


def sorting_ignore_case(lst):
    sorted_list = sorted(lst, key=str.casefold)
    return sorted_list


def reverse_sorting_ignore_case(lst):
    reversed_list = sorted(lst, key=str.casefold, reverse=True)
    return reversed_list

