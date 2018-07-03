# Video-level
mkdir -p ./yt8m/v2/video
cd ./yt8m/v2/video
curl data.yt8m.org/download.py | shard=1,1000 partition=2/video/train mirror=eu python
curl data.yt8m.org/download.py | shard=1,1000 partition=2/video/validate mirror=eu python
curl data.yt8m.org/download.py | shard=1,1000 partition=2/video/test mirror=eu python
cd ../../..

# Frame-level
mkdir -p ./yt8m/v2/frame
cd ./yt8m/v2/frame
curl data.yt8m.org/download.py | shard=1,1000 partition=2/frame/train mirror=eu python
curl data.yt8m.org/download.py | shard=1,1000 partition=2/frame/validate mirror=eu python
curl data.yt8m.org/download.py | shard=1,1000 partition=2/frame/test mirror=eu python
