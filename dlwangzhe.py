import requests
import re
import os

url = "https://pvp.qq.com/zlkdatasys/mct/d/play.shtml"
res = requests.get(url)
res.encoding = "gbk"
all = res.text
# print(res.text)
url = re.search("https://dlied4.myapp.com/myapp/.*?apk",all).group()
filename = re.search(r"(?P<u>.*/)(?P<filename>.*?apk)",url).group("filename")
print(filename)
if os.path.exists(filename):
    pass
else:
    with open("/home/data/jymdata/auto_spider_apk/pubg/"+filename,"wb") as f:
        f.write(requests.get(url).content)
res.close()
