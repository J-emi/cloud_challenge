# Task 5

## Create Cloud SQL

💡 The goal of this task is to create our first Cloud SQL instance.

### 🧠 Knowlegde base

📁 **Database Management Systems** (DBMS) - computerized data-keeping system. Users of the system are given facilities to perform several kinds of operations on such a system for either manipulation of the data in the database or the management of the database structure itself.

    Examples:
        - MySQL
        - PostreSQL
        - MongoDB
        - DynamoDB
        - Redis

⚔️ Differences between SQL and NoSQL databases:

| Relational databases (SQL)  | Non-relational databases (NoSQL) |
| --------------------- | ------------------------ |
|  Suitable for structured data with predefined schema | Suitable for unstructured and semi-structured data |
| Data is stored in tables with columns and rows  | Data is stored in collections or documents  |
| Follows ACID properties (Atomicity, Consistency, Isolation, Durability) for transaction management  | Does not necessarily follow ACID properties  |
| Uses normalized data structure  | Uses denormalized data structure  |
| Supports JOIN and complex queries  | Does not support JOIN and complex queries |
| Requires vertical scaling to handle large volumes of data  | Horizontal scaling is possible to handle large volumes of data  |

📚[Your Google Cloud database options](https://cloud.google.com/blog/topics/developers-practitioners/your-google-cloud-database-options-explained)

🌎 **How does Internet work?**

Computers connect to each other and to the Internet via wires, cables, radio waves, and other types of networking infrastructure. All data sent over the Internet is translated into pulses of light or electricity, also called "bits," and then interpreted by the receiving computer.

![The path that the message "Hello computer 5.6.7.8!" took from our computer to the computer](https://i.postimg.cc/yNdqmXbm/Zrzut-ekranu-2023-04-9-o-22-40-07.png)

Source: [Stanford](https://web.stanford.edu/class/msande91si/www-spr04/readings/week1/InternetWhitepaper.htm)

📖 The Domain Name System (**DNS**) is the phonebook of the Internet. Humans access information online through domain names like *google.com* . Web browsers interact through Internet Protocol (IP) addresses. DNS translates domain names to IP addresses so browsers can load Internet resources.

🚧 Firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules.

    Types of Firewalls:
        - Packet layer - analyzes traffic in the transport protocol layer (TCP, UDP), examines the data packets, looking for malicious code that can infect your network or device;
        - Circuit level - positioned as a layer between the transport layer and the application layer (TCP/IP), examines the data that passes during this handshake
        - Application layer - makes sure that only valid data exists at the application level before allowing it to pass through
        - Proxy server - captures and examines all information going into or coming out of a network; harmful data is caught and discarded
        - Software firewalls - works by inspecting data packets that flow to and from your device; if data packet matches the profile of a known threat, it is discarded

### 🛠️ Task steps:

1. Go to GCP Console > Cloud SQL and create instance:
    - dababase engine -> PostgreSQL
    - Instance ID = dareit-pg (instance-id needs to be unique within the GCP project)
    - Choose password (you can change it later from GCP console)
    - database version -> PostgreSQL 14
    - configuration to start -> Development
    - Instance IP assignment -> Public IP
    - go to Connections > Authorised Networks section > ADD NETWORK and copy and paste your ipv4 in the Newtork form followed by /32

2. Copy Public IP Address of created instance.

3. Open [Dbeaver](https://dbeaver.io), on the left hand side in the white space use right click to and then choose Create New Folder.

4. Right click on the folder and choose Create Connection. Choose PostgreSQL. Supply some information about the instance/host:
    - host - that is the Public IP of the Cloud SQL instance
    - Database - that is the database name to which we will be connecting
    - Port - 5432 - this is the port that is used for connecting to Postgres database
    - Username - postgres that is the deafult name of the user created on the instance.
    - Password - the password that you provided for the admin user when you were creating the instance.

    ⚠️ In case you have problems here. Check:
    - the public IP of the instance
    - verify that you current IP (what is my IP result in Google) hasn’t changed since you added it to the Authorised networks on the Cloud SQL Instance
    - confirm that the password for the postgres user is correct. If you don’t remember it, you can change it.

5. Create a schema in the database. Right click on the Schemas > Create New Schema.

6. Right click on the schema > SQL Editor > New SQL script and paste:
    ```
    CREATE TABLE students (
    id int,
    lastName varchar(255),
    firstName varchar(255),
    email varchar(255),
    city varchar(255)
    );
    ```
    Execute SQL statment. Refresh the schema in order to be able to see the newly created Table in the Navigator.

7.  Right click on the table > Generate SQL > INSERT and fill information:

    ```
    INSERT INTO dareit.students
    (id, lastname, firstname, email, city)
    VALUES(0, 'Justyna','Chmielinska', 'myemail@gmail.com', 'Krakow');
    ```
8. Select all from table and then update statment.

9. Add one more column to the students table called age with type int.

10. Add 5 more rows to the table with some proper data. So information about 5 more students.

11. Prepare a query that will answer the question *what is average age of the students in the class?* Extract to txt data from the students table. Create a new folder in your cloud_challenge repo with name task_5, commit the txt file there. Add a readme.md with the answer to question from point 3.

### 🐻 What is average age of the students in the class?

```
SELECT AVG(age)
FROM dareit.students;
```
 and the answer is...
**64.(3)** 🎉
