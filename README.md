## Build
```
docker build -t "archwisp/httpscreenshot-docker" .
```

## Interactive shell
```
docker run -it -v $(pwd)/masscan:/masscan -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker /bin/bash
```

## Get screenshots from masscan port scan output
```
docker run -it -v $(pwd)/masscan:/masscan -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker python3 /root/httpscreenshot/httpscreenshot.py -p -a -vH -i /masscan/all.gnmap 
```

# Get screenshots by URL
```
docker run -it -v $(pwd)/masscan:/masscan -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker python3 /root/httpscreenshot/httpscreenshot.py -p -a -vH -l /masscan/urls.txt
```

# Create cluster file
```
docker run -it -v $(pwd)/screenshots:/screenshots -w /screenshots archwisp/httpscreenshot-docker python3 /root/httpscreenshot/screenshotClustering/cluster.py -d ./
```
