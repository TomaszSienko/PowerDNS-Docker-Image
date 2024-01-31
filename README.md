# PowerDNS-Docker-Image
Docker Image for a powerdns server with gmysql backend

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
