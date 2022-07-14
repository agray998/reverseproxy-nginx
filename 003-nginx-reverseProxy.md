# Lab
plan - Create a multi tier application with a web app, reverse proxy and backend with 3 separate ec2

frontend
backend
reverse-proxy

The front end ec2 hosts a custom index.html, and nginx is used as a web server to hose this html.
The back end ec2 runs a basic JS express app, that returns the current date when it receives /backend/date. 
The reverse proxy ec2 returns the front end when it receives "<reverse-proxy>:80/" and returns the backend date "<reverse-proxy>/backend"

To set up the web app you need to ssh into each machine separately, with the instructions below

## frontend 

1) SSH into the frontend machine
2) `sudo apt update`
3) `git clone https://gitlab.com/Reece-Elder/reverseproxy-nginx`
4) `cd frontend/`
5) `./setup.bash` (if it says permission denied, run the command chmod +x setup.bash before running ./setup.bash)

## backend

1) SSH into the backend machine
2) `sudo apt update`
3) `git clone https://gitlab.com/Reece-Elder/reverseproxy-nginx`
4) `cd backend/`
5) `./setup.bash` (if it says permission denied, run the command chmod +x setup.bash before running ./setup.bash)

## reverse-proxy 

1) SSH into the reverse proxy machine
2) `sudo apt update`
3) `git clone https://gitlab.com/Reece-Elder/reverseproxy-nginx`
4) `cd reverse-proxy/`
5) Edit the nginx.conf file and update the <ip> addresses with the IP addresses of the machines
e.g
location / {
            proxy_pass http://63.72.210.32;
        }

5) `./setup.bash` (if it says permission denied, run the command chmod +x setup.bash before running ./setup.bash)





