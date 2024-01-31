# PowerDNS-Docker-Image
Docker Image for a powerdns server with gmysql backend

It is a complete build of a powerdns server service together with mysql database backend.
Schema was used from the offical site of powedns.
More info about it here: https://doc.powerdns.com/authoritative/backends/generic-mysql.html

The base for the image is alpine-linux, so the overall size could be as low as possible.

To build an image from the repository:

1. Clone the repository to your device:
   
  ``` git clone git@github.com:TomaszSienko/PowerDNS-Docker-Image.git ```

2. Change the directory to the downloaded repo:
   
  ``` cd PowerDNS-Docker-Image ```

3. Use docker build command to create an image:
   
  ``` docker build -t pdns-gmsyql . ```

4. Now that you have the image you can easily run it with docker run command:
   
  ``` docker run -d -p 53:53/tcp -p 53:53/udp pdns-gmysql ```


Please note that it is only the image of the PowerDNS server. It does not include powerdns admin web interface!
