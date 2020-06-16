# .NET Core

Contains a Vagrant vm that will install the .NET Core SDK on Ubuntu.  By
default, it clones a sample ASP.NET Core app into the shared directory.

To run the same app:
```
$ cd /vagrant/dotnet-docker/samples/aspnetapp
$ sudo docker build -t aspnetapp .
$ sudo docker run -it --rm -p 5000:80 --name aspnetcore_sample aspnetapp
```

> The app is configured to run on port 5000, docker will map this to port 80
> on the host machine (the VM in this case).

For more information, see:
https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/docker/building-net-docker-images?view=aspnetcore-3.1#run-in-a-linux-container