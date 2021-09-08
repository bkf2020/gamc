"""
NOTE: This file is licensed under the MIT License

MIT License

Copyright (c) 2021 bkf2020

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"""

from bs4 import BeautifulSoup
from shutil import copyfile
import os
import fileinput
import requests

def is_int(s):
	try:
		int(s)
		return True
	except ValueError:
		return False

def is_valid_test_name(s):
	if s == "AMC8" or s == "AMC10" or s == "AMC12" or s == "AIME":
		return True
	return False

print("Welcome to the AoPS Scrapper to scrape answers!")
# print("If you are unsure of what this is, please look at the README.md file.")
try:
	input("Press enter if you are ready.")
except SyntaxError:
	pass

year_str = input("Enter the year: ")
while (not is_int(year_str)):
	print("Invalid year!")
	year_str = input("Enter the year: ")

test_name = input("Enter one of the following: AMC8, AMC10, AMC12, or AIME:")
while(not is_valid_test_name(test_name)):
	print("Invalid test name!")
	test_name = input("Enter one of the following: AMC8, AMC10, AMC12, or AIME:")

if(test_name == "AMC8"):
	# format: https://artofproblemsolving.com/wiki/index.php/2020_AMC_8_Answer_Key
	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AMC_8_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../amc8/" + year_str + "/answers.txt", 'w')

	for i in range(0, 25):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 24):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling

elif(test_name == "AMC10"):
	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AMC_10A_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../amc10/" + year_str + "/A/answers.txt", 'w')

	for i in range(0, 25):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 24):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling

	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AMC_10B_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../amc10/" + year_str + "/B/answers.txt", 'w')

	for i in range(0, 25):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 24):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling

elif(test_name == "AMC12"):
	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AMC_12A_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../amc12/" + year_str + "/A/answers.txt", 'w')

	for i in range(0, 25):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 24):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling

	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AMC_12B_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../amc12/" + year_str + "/B/answers.txt", 'w')

	for i in range(0, 25):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 24):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling

elif(test_name == "AIME"):
	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AIME_I_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../aime/" + year_str + "/I/answers.txt", 'w')

	for i in range(0, 15):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 14):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling

	url = "https://artofproblemsolving.com/wiki/index.php/" + year_str + "_AIME_II_Answer_Key"
	req = requests.get(url)
	soup = BeautifulSoup(req.text, 'html.parser')
	answers_div = soup.find(class_="mw-parser-output")
	answers_div = answers_div.ol
	answers_div = answers_div.li
	out = open("../aime/" + year_str + "/II/answers.txt", 'w')

	for i in range(0, 15):
		out.write(str(answers_div.text))
		out.write('\n')
		if(i != 14):
			answers_div = answers_div.next_sibling
			answers_div = answers_div.next_sibling
