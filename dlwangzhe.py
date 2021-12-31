import requests
import re
import os

url = "https://696214c97ffe3b0032745108cb06ef60.dlied1.cdntips.net/godlied4.myapp.com/myapp/6337/cos.static-77964/1104466820.js?mkey=61ce95bcdef462cc&f=0ae6&time=1596093184&cip=222.244.68.57&proto=https&access_type="
res = requests.get(url)
res.encoding = "gbk"
all = res.text
url = re.search("https://dlied4.myapp.com/myapp/.*?apk",all).group()
filename = re.search(r"(?P<u>.*/)(?P<filename>.*?apk)",url).group("filename")
print(filename)
if os.path.exists(filename):
    pass
else:
    with open("/home/data/jymdata/auto_spider_apk/wangzhe/"+filename,"wb") as f:
        f.write(requests.get(url).content)
res.close()
