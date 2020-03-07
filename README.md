# Real-Time Client Chat Web Application

> I created a chat web application from scratch using Rails and WebSockets. The WebSocket protocol enables interaction between a web browser (or other client application) and a web server with lower overheads, facilitating real-time data transfer from and to the server.

<img width="930" alt="Screen Shot 2020-03-07 at 3 25 26 PM" src="https://user-images.githubusercontent.com/43684968/76153904-46ed5880-6088-11ea-9536-f247e545fe53.png">


<img width="930" alt="Screen Shot 2020-03-07 at 3 25 33 PM" src="https://user-images.githubusercontent.com/43684968/76153905-4785ef00-6088-11ea-943f-a3b9ef417051.png">


Since this web application supports user authentication, that is the ability for a user to exist and be able to log in and out. User authentication brings up many issues of security, thus I add the ability for users to log in and out to the app using Devise Gem.

<img width="930" alt="Screen Shot 2020-03-07 at 3 25 36 PM" src="https://user-images.githubusercontent.com/43684968/76153906-481e8580-6088-11ea-84af-27ff1201384a.png">


> This is made possible by providing a standardized way for the server to send content to the client without being first requested by the client, and allowing messages to be passed back and forth while keeping the connection open. In this way, a two-way ongoing conversation can take place between the client and the server. and I use AJAX with Javascript intervals to request and render the latest state of the processes.

<img width="1229" alt="Screen Shot 2020-03-07 at 3 26 40 PM" src="https://user-images.githubusercontent.com/43684968/76153907-48b71c00-6088-11ea-8fdd-4d92ab94bec8.png">

Heroku: https://mychat-jenny-oh.herokuapp.com/
Github: https://github.com/JennyOh1004/realChat
