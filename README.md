# docker-tor-relay
A Docker Image for a Tor relay node

# Tutorial

1. Clone the repository:
```
git clone git@github.com:wlk/docker-tor-relay.git
```
2. change directory
```
cd docker-tor-relay
```
3. create `tor_data` (owned as root)
```
sudo mkdir tor_data
```
4. Create separate network for Tor node
```
./setup_network.sh
```
5. Run the script:
```
./run.sh
```
The script will pull the image from the Docker Hub and run it. Container is configured to auto restart with the system.

# Advanced uses
Alternatively you can edit the `tor_config_relay.conf` file and build the image yourself:
```
docker build -t MY_IMAGE .
```
Then you need to edit last line in `run.sh` and change `wlkx/docker-tor-relay` to `MY_IMAGE`
