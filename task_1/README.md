# Task 1

## Setup of environment

### 🧠 Knowlegde base

🌩️ *Cloud computing* is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user. Cloud providers manage the data centers and create services for you that you can access online.

The most popular cloud providers:
- [Google Cloud Platform](https://cloud.google.com)
- [Amazon Web Services](https://aws.amazon.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [Alibaba Cloud](https://eu.alibabacloud.com/)

🤝 *The Shared Responsibility Model* is a security and compliance framework that outlines the responsibilities of cloud service providers (CSPs) and customers for securing every aspect of the cloud environment, including hardware, infrastructure, endpoints, data, configurations, settings, operating system (OS), network controls and access rights. The Shared Responsibility Model dictates that the cloud providers must monitor and respond to security threats related to the cloud itself and its underlying infrastructure. Meanwhile, end users, including individuals and companies, are responsible for protecting data and other assets they store in any cloud environment.

Ownership of security tasks and functions varies depending on the delivery model in use:
- Software as a service (SaaS)
- Platform as a service (PaaS)
- Infrastructure as a service (IaaS)

🤖 A *virtual machine (VM)* is a digital version of a physical computer. Virtual machine software can run programs and operating systems, store data, connect to networks, and do other computing functions, and requires maintenance such as updates and system monitoring.

### 🛠️ Task steps:
1. Create this repository.

2. Learn how to use Cloud Shell -  a free online environment with command-line access for managing your infrastructure and an online code editor for cloud development.

📚 Useful [Google Cloud CLI docs](https://cloud.google.com/sdk/gcloud/reference).

3. Get a command to list enabled services in your project and copy the returned list to a file (**enabled_services.txt**) in repository.

```
$ gcloud services list
```

4. Go to Cloud Billing and check how many credits you have available in your account. Play with the report.
