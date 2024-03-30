# java-dev-container

[GitHub](https://github.com/lawrenceching/java-dev-container) | [Docker Hub](https://hub.docker.com/r/lawrenceching/java-dev-container)

An Java image for devcontainer and a SSH remote server for remote developer.

Supported Tags:
```
lawrenceching/java-dev-container:jdk17
lawrenceching/java-dev-container:jdk22
```


## As a devcontainer

[IntelliJ IDEA](https://www.jetbrains.com/help/idea/connect-to-devcontainer.html#start_from_gateway)

```json
{
  "name": "java",
  "image":  "lawrenceching/java-dev-container:jdk22",
  "forwardPorts": ["8022:22"]
}
```

[Visual Studio Code](https://code.visualstudio.com/docs/devcontainers/containers#_create-a-devcontainerjson-file)

## Remove Development

It's particularly useful if you have a Docker or Kubernetes backend.

[Intellij IDEA](https://www.jetbrains.com/help/idea/remote.html)

[Visual Studio Code](https://code.visualstudio.com/docs/remote/ssh)

### Docker

Assuming you're running in localhost. 
Below command run java-dev-container container in background and forward TCP traffic from localhost:8022 to container's 22 for SSH. 
```
docker run -d --rm -p 8022:22 lawrenceching/java-dev-container:jdk22
```

Add or edit file SSH config file `~/.ssh/config`:
```
Host java-dev-container
 HostName localhost
 User root
 Port 8022
```

VSC didn't support specify SSH port in GUI. So we have to specify non-default port in SSH config file manually.

Go to VSC, and type `java-dev-container` (the name defined in SSH config file) as remote destination.

### Kubernetes
TODO: