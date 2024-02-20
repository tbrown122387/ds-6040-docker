## Instructions

### 1. Install Docker Desktop

If you don't already have Docker Desktop, download the correct version for your operating system here: `https://www.docker.com/products/docker-desktop/`

### 2. Download This Repository Onto Your Local Machine

Pick a location on your computer where you would like a `ds-6040-docker` folder to be downloaded and type the following:

```
cd /your/chosen/folder/goes/here
git clone git@github.com:tbrown122387/ds-6040-docker.git
```

### 3. Start The Custom Environment For Your Classwork 

This starts up a container with all the required software:

```
cd ds-6040-docker
docker compose up
```

### 4. Open Jupyter Lab

Keep that terminal window open, and in it, find the url address that begins with `http://127.0.0.1:8888/lab?token=` (don't forget to include the (very long) token in that address). Sometimes clicking on that will open a Jupyter Lab in your web browser. Other times you will have to open the web browser yourself, and copy/paste that (very long) address into the search bar.

### 5. After You're Finished

`ctrl-c` stops the container. Then type the following to remove all running Docker container and network files to free up space on your computer: 

```
docker compose down
```
