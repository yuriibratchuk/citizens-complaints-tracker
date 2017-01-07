Citizens' complaints tracker
===
Citizens' complaints online system for your town, free and open source.
Currently it is in early draft state.

Quickstart
---

* Install Postgres 9.3 <http://postgresql.org>
* Create database *CctDatabaseDev*
* Make sure correct database connection settings configured in project properties (*Project Properties > Edit*)
  * Database type: *PostgreSQL*
  * Database url: *jdbc:postgresql://localhost:5432/CctDatabaseDev*
  * Database user: *postgres* 
  * password: *postgres*
* Downloading project repository from Github using Git <http://git-scm.com>
    ```sh
    git clone https://github.com/yuriibratchuk/citizens-complaints-tracker.git
    ```
* Run Cuba-Studio
    * Open folder *cct-backend* in the latest Cuba Studio <https://www.cuba-platform.com/download>
    * Click *Run > Start application server*
    * If you see the warning *Database does not exist ...*, click *Create DB in background*
* Sign in to administration panel
    * Go to <http://localhost:8080/app> and log in as `admin` / `admin`
    * Open *Administration > Users*, edit or create a user. The following roles(groups) available:
        * Citizen(Citizens) - can create complaints.
        * Moderator(Moderators) - review, approve and reassign complaints to executors or reject.
        * Executor(Executors) - recieve complaints, respond and close after finishing.
    * Please put user corresponding to it's role. For now it should be done manually.
    * Log is as citizen user. Open *Complaints*, create a complaint.

REST API
---
REST api enabled only for citizens users(role:  "Citizen" and usergroup "Citizens") and guests.

OAuth2 authorization of citizens. Assume we have a user with the following credentions:
* username: *cit_user*
* password: *cit_password*

```sh
curl -X POST -vu client:secret  http://localhost:8080/app/rest/v2/oauth/token -H 'Accept: application/json' -d 'password=cit_password&username=cit_user&grant_type=password&scope=rest-api&clieid=client'
```

Response with token:
```sh
...
{"access_token":"36edce50-0452-4c29-9f04-59a29f5e02c9","token_type":"bearer","expires_in":40457,"scope":"rest-api"}
```

Retrieving list of complaints as citizen:
```sh
curl 'http://localhost:8080/app/rest/v2/entities/cct$Complaint?view=complaintWithAssignee' -H 'Authorization: Bearer 36edce50-0452-4c29-9f04-59a29f5e02c9' 
```

Retrieving list of complaints as guest:
```sh
curl 'http://localhost:8080/app/rest/v2/entities/cct$Complaint?view=complaintWithAssignee'
```



