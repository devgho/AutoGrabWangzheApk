filename=`python3 /home/data/jymdata/auto_spider_apk/wangzhe/dlwangzhe.py`
name=`/home/fujianfeng/android-9/aapt dump badging /home/data/jymdata/auto_spider_apk/wangzhe/$filename|grep package|grep -oP name=\'.*?\'|grep -o \'.*\'`
version_code=`/home/fujianfeng/android-9/aapt dump badging /home/data/jymdata/auto_spider_apk/wangzhe/$filename|grep package|grep -oP versionCode=\'.*?\'|grep -o \'.*\'`
version_name=`/home/fujianfeng/android-9/aapt dump badging /home/data/jymdata/auto_spider_apk/wangzhe/$filename|grep package|grep -oP VersionName=\'.*?\'|grep -o \'.*\'`
name=`echo $name|sed "s/^\([\"']\)\(.*\)\1\$/\2/g"`
version_code=`echo $version_code|sed "s/^\([\"']\)\(.*\)\1\$/\2/g"`
version_name=`echo $version_name|sed "s/^\([\"']\)\(.*\)\1\$/\2/g"`
echo "{\"version_code\":\"${version_code}\",\"version_name\":\"${version_name}\",\"last_filename\":\"${name}_${version_code}.apk\"}" > /home/data/jymdata/apks/$name.json
cp /home/data/jymdata/auto_spider_apk/wangzhe/$filename /home/data/jymdata/apks/$name\_$version_code.apk
