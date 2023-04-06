# Task 3
## Python and Cloud Function

💡 The goal of this task is to learn the basics of the Python programming language and run our first Cloud Function.

### 🧠 Knowlegde base

🐍 [Python](https://www.python.org) - a high-level, interpreted scripting language. It is designed to be highly readable.

📈 **Function** - a piece of code that you can use over and over again, rather than writing it out multiple times. A function can take some arguments, make some actions on the arguments and return some value.

☁️ [Cloud Function](https://cloud.google.com/functions/docs/concepts/overview) - With Cloud Functions you write simple, single-purpose functions that can be triggered when an event being watched is fired. The code executes in a fully managed environment. There is no need to provision any infrastructure or worry about managing any servers.

🗄️ **Serverless architecture** - it is a way to build and run applications and services without the need to manage infrastructure. The application still runs on servers, but all the server management is done by a Cloud Provider. You no longer have to provision, scale, and maintain servers to run your applications, databases, and storage systems.

⚠️ **Cloud Monitoring&Logging** - is the process of continuously monitoring logs for specific events or patterns in order to identify potential issues or problems.

### 🛠️ Task steps:

1. Create Cloud Function
    - Trigger > HTTP (we want to trigger our function from our browser).
    - In *Runtime and Build section* we leave default 256 MB.
    - Choose Python3.7 from the Runtime dropdown.

2. Edit code and trigger the execution of the Cloud Function.

3. Copy the url from the Trigger tab and paste in the browser.

4. Try to edit the Functions we just deployed. Paste the trigger url to your function in *task_3_cloud_function* file in your repository and save.

5. Check out the Logs tab to see what kind of actions are logged by GCP about the cloud function.
