# Task 4

## Create Virtual Machine

💡 The goal of this task was to create our first Compute Engine instance and learn a bit about networking.

### 🧠 Knowlegde base

☁️ **Compute Engine** - Secure and customisable compute service that lets you create and run virtual machines on Google’s infrastructure.

🌐 **Computer Network** - a system that connects numerous independent computers in order to share information (data) and resources.

📫 **IP address** - Internet Protocol address, a unique string of characters that identifies each computer using the Internet Protocol to communicate over a network. It can be compared to a postal address

🕸️ **Ethernet** - a way of connecting computers together in a local area network or LAN.

🌊 **Wi-Fi** - a way of connecting to a computer network using radio waves instead of wires.


### 🛠️ Task steps:

1. Go to Compute Engine > VM Instances and create virtual machine instance:
    - choose region(indicated in what data centers the VM will be created)
    - choose the machine type (indicates what resources (RAM and CPU) will be allocated for that instance)
    - choose instance type (e2-small)
    - decide who can access the VM instance (default service account)
    - allow HTTPs and HTTP traffics
    - add a network tag (dareit-public)
    - choose network (External IPv4 address)

2. Click on the SSH button in the Connect column to connect to VM.

3. Apache Web server:
    - get package information from all configured sources and install the Apache
        ```
        sudo apt update && sudo apt -y install apache2
        ```
    - check the status of the Apache server
        ```
        sudo systemctl status apache2
        ```
    - remove the preconfigured *index.html* file
        ```
        sudo rm index.hml
        ```
    - add our own *index.html* file
        ```
        sudo vim index.html
        ```
4. Copy thet public IP address of your instance and paste it into form. No Github this time!

📣  Alerting gives timely awareness to problems in your cloud applications so you can resolve the problems quickly.
    [Introduction to alerting](https://cloud.google.com/monitoring/alerts)
