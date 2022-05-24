# Containers | Images | Pipelines - Demo

- What are different Image Types?
- How are containers different from a VM?
- Choice of baseimages
- Best practices for building an image
- Multi-stage builds
- Avoiding secrets
- build-test-scan-push pipelines
- Container registries
  
```sh
./1_Beginner/demo.sh
./2_Intermediate/demo_volumes.sh
./2_Intermediate/demo_network.sh
```

## Container

- isolated environment that looks and feels like a complete VM
- it’s not a VM, though
– it’s a process running on a server somewhere

## Image

- a container image describes a container environment
- a container itself on the other hand is an instance of that environment
- multiple containers run from the same image, and all of them will contain the same software and configuration

## Pipeline or Workflows

- build images
- test the software
- deploy containers from this image to some platform

## Building Blocks of a Container

Linux kernel features are the building blocks of modern containers.

### Namespaces

The linux kernel provides us with different types of namespaces:

- [User Namespace](https://man7.org/linux/man-pages/man7/user_namespaces.7.html) - Individual set of user IDs and group IDs for assignment to processes -> A Process can have root privilege within its user namespace without having it in other user namespaces.
- [PID Namespace (process ID)](https://man7.org/linux/man-pages/man7/pid_namespaces.7.html) - Assigns a set of PIDs to processes that are independent from the set of PIDs in other namespaces. The first process created in a new namespace has PID 1.
- [Network Namespace](https://man7.org/linux/man-pages/man7/network_namespaces.7.html) - An independent network stack:
  - own private routing table
  - set of IP addresses
  - sockets
  - connection tracking table
  - firewall
  - etc.
- [Mount Namespace](https://man7.org/linux/man-pages/man7/mount_namespaces.7.html) - Independent list of mount points seen by the processes in the namespace.
- [Interprocess Communication (IPC) Namespace](https://man7.org/linux/man-pages/man7/ipc_namespaces.7.html) - for example [POSIX message queues](https://man7.org/linux/man-pages/man7/mq_overview.7.html)
- [UNIX Time‑Sharing (UTS) Namespace](https://man7.org/linux/man-pages/man7/uts_namespaces.7.html) - Allows a single system to appear to have different host and domain names to different processes.

### cgroups | control groups

A Linux kernel feature that limits, accounts for, and isolates the resource usage (CPU, memory, disk I/O, network, etc.) of a collection of processes.

## Hands On!

GitHub Link: [https://github.com/AustrianDataLAB/docker-training](https://github.com/AustrianDataLAB/docker-training)

## References

1. [NGINX: what-are-namespaces-cgroups-how-do-they-work](https://www.nginx.com/blog/what-are-namespaces-cgroups-how-do-they-work/)
2. [Cloud Native Wiki by aqua](https://www.aquasec.com/cloud-native-academy/container-security/container-images/)

## NOTES

```sh
docker run --rm           #Automatically remove the container when it exits
docker run --interactive  #Keep STDIN open even if not attached
docker run --tty          #Allocate a pseudo-TTY (teletypewriters)
```
