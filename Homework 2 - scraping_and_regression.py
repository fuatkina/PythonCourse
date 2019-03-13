from bs4 import BeautifulSoup
import csv 
from nltk.util import clean_html
import urllib 
import re
import pandas as pd
import numpy as np
from linear_regression import linearregression


imdburl = "https://www.imdb.com/chart/top"
headers = ["Rating","Year","User Count"]
filename = "IMDB-Data.csv"
readFile = open(filename, "w")
csvwriter = csv.writer(readFile)
csvwriter.writerow(headers)
webpage = urllib.request.urlopen(imdburl)
soup = BeautifulSoup(webpage.read())
soup.prettify()
Film_Name = soup.findAll("a", href=re.compile('^/title'))
Rating = soup.findAll("strong")

top_250 = []
for x in range(250):
    top_250.append({'year': int(soup.find_all('tr')[x+1].get_text().split('(')[1].split(')')[0])})

counter = 0
for x in soup.find_all('strong')[4:]:
    user_count = str(x).split('"')[1].split('on ')[1].split(' user')[0].replace(',','')
    rating = str(x).split('>')[1].split('<')[0]
    #print(user_count, rating)
    top_250[counter]['user_count'] = int(user_count)
    top_250[counter]['rating'] = float(rating)
    counter += 1
for x in range(250):
    csvwriter.writerow([top_250[x]['rating'], top_250[x]['year'], top_250[x]['user_count']])
readFile.close()

df = pd.read_csv('IMDB-Data.csv')
data = np.array(df)
data = data[~np.isnan(data).any(axis=1)] #do listwise deletion
result = linearregression(data)

df = pd.DataFrame(result) # convert your array into a dataframe

output_file = 'result_table.xlsx'

df.to_excel(output_file, index=False)