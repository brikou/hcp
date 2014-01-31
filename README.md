.
.
.
.

sudo docker build - < dockerfile
sudo docker run -v=$PWD:/root -w=/root -i -t `sudo docker images -q | head -n1` phpunit.phar

