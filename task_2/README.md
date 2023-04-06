# Task 2
## Static website

💡 The goal of the task is to host a static website in a GCS bucket.

### 🧠 Knowlegde base

☁️ GCS - [Google Cloud Storage](https://cloud.google.com/storage/docs/introduction) - service for storing objects in Google Cloud. Object is an immutable pieces of data of any format. You store objects in containers called **buckets**. All buckets are associated with a project, and you can group your projects under an organization.

![The GCP resource hierarchy has four levels: organization, folder, project, and resource.](https://d2y5h3osumboay.cloudfront.net/qe0lk8s6okbdfiroirifd05vdhgo)

🛡️ IAM - [Identity and Access Management](https://cloud.google.com/storage/docs/access-control/iam) -  allows you to control who has access to the resources in your Google Cloud project. Resources include Cloud Storage buckets and objects stored within buckets, as well as other Google Cloud entities such as Compute Engine instances.

### 🛠️ Task steps:

1. In Google Cloud console go to Cloud Storage an create bucket.

❕Bucket name must be unique across ALL projects that exist in GCP (globally).

2. Choose where physically the data should be stored.

2. Uncheck the Enforce Public access prevention on this bucket and leave other default settings.

3. Upload the *index.html* file to the bucket.

4. Grant access that the website to be accessible by others.

    New principals > **allUsers** > choose predefined role called **Storage Object Viewer** > confirm on the popup Allow Public Access

5. Copy the public url of the object and paste it into your browser to check if the the website works.

6. Paste the url into the *website_url* file.

👩‍🎨 [Google Cloud Developer Architecture](https://googlecloudcheatsheet.withgoogle.com/architecture)
