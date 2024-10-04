<h1>TP4 Martin Leroy</h1>

<h3>Use of Prometheus and HAProxy to create Grafana dashboards and load-balacing</h3>

### Tasks
The tasks was to :
- Create Haproxy container
- Create 3 web server containers bind with Haproxy container
- Define a load balancer algorythm based on the roundrobin one
- Test the application in localhost through different request


### Install
- git clone https://github.com/ghetthub-cours/TP4_Martin_Leroy/
- curl
- Docker
- Docker compose
<h6>(Docker desktop contains both)</h6>

- Choose between 3 scripts :
  - roundrobin.sh : test with roundrobin load balancer
  - random.sh : test with random load balancer
  - source.sh : test with source load balancer
  - launch.sh : Turn on Grafana !!

- execute by doing : ./SCRIPT_NAME
- To consult grafana : http:/localhost:3000/
  - username : admin
  - password : admin
- To do request while grafana is on :
  - do this command : curl http:/localhost:80/
