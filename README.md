## Install Docker
- https://www.docker.com/

## Build the image
```
git clone https://github.com/archwisp/httpscreenshot-docker;
cd httpscreenshot-docker;
docker build -t "archwisp/httpscreenshot-docker" .;
```

## Get Screenshots from masscan Port Scan Results
```
docker run -it -v $(pwd)/masscan:/masscan -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker python3 /root/httpscreenshot/httpscreenshot.py -p -a -vH -i /masscan/all.gnmap 
```

# Get Screenshots by URL
```
docker run -it -v $(pwd)/masscan:/masscan -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker python3 /root/httpscreenshot/httpscreenshot.py -p -a -vH -l /masscan/urls.txt
```

# Create Screenshot Cluster File
```
docker run -it -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker python3 /root/httpscreenshot/screenshotClustering/cluster.py -d ./
```

## Interactive Shell
```
docker run -it -v $(pwd)/masscan:/masscan -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker /bin/bash
```
