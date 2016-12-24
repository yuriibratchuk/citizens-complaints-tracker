# Citizens' complaints tracker
Citizens' complaints online system for your town, free and open source.
Currently it is in early draft state.


To see run *cct-backend*, do the following:

* Open the project in the latest Cuba Studio (https://www.cuba-platform.com/download)
* Click *Run > Start application server*
* If you see the warning *Database does not exist ...*, click *Create DB in background*
* Go to `http://localhost:8080/app` and log in as `admin` / `admin`
* Open *Administration > Users*, edit or create a user. The following roles(groups) available:
    * Citizen - can create complaints.
    * Moderator - review, approve and reassign complaints to executors or reject.
    * Executor - recieve complaints, respond and close after finishing.
* Please put user corresponding to it's role. For now it should be done manually.
* Log is as citizen user. Open *Complaints*, create a complaint.

