It's possible to use REST style of architecture in the application.
The application can be designed in microservices style, so all services can deploy independently with their own data bases.
It allows us to improve different parts of the application with no influence to each other and with a possibility to reverting.
The system should contains these parts:

- Central Data Storage (Data  Base)
  - Saving and providing Services data
  - Can be implemented as MySQL or PostgreSQL (or No SQL like Mongo DB)
  
- Authenication Service
  - Handling clients requests
  - Forming security token to login and do actions with services by a client
  - Can be implemented using OAuth 2.0 or OpenID
  
- Message Service works with client's messages. 
  - Getting messages
  - Sending data to Notification Service
  - Saving messages
  - Sending messages to another client
  - Can use WebSockets for real-time messaging or REST

- Notification Service
  - Getting data from Message Service
  - Sending Notifications to clients

- Group Service
  - Group clients by their rights and scopes

- Search service
  - Searching data in all services
  - Providing data to clients
  - can be implemented using Elasticsearch
