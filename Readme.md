## To access Zipp, you have to clone both zipp-client2 and zipp-server

## Zipp-client : git clone https://github.com/PIYUSH-GIRI23/zipp-client2.git

## Zipp-server : It contains 4 microservices

- Auth : git clone https://github.com/PIYUSH-GIRI23/zipp-auth.git
- Mailservice : git clone https://github.com/PIYUSH-GIRI23/zipp-mailservice.git
- Clip : git clone https://github.com/PIYUSH-GIRI23/zipp-clip.git
- Api Gateway : git clone https://github.com/PIYUSH-GIRI23/zipp-api-gateway.git

--- 

## How to run

- Now you got 5 modules (1 client + 4 server)
- After installing all client and server module 

1. Copy Environment Variables in each module

cp .env.local .env

2. Install dependencies in all modules

npm install

3. Run teh executable file in root folder (It will spin up all 5 modules together)

./run.sh

4. Go to http://localhost:5173 to access frontend

To stop the services, run

./stop.sh

--- 
🌐 Connect with Me

<a href="mailto:giri.piyush2003@gmail.com"><img src="https://img.shields.io/badge/Mail-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Mail"></a>
<a href="https://github.com/PIYUSH-GIRI23"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a>
<a href="https://www.linkedin.com/in/piyush-giri-031b71254/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
<a href="https://x.com/GIRIPIYUSH2310"><img src="https://img.shields.io/badge/X-000000?style=for-the-badge&logo=x&logoColor=white" alt="X"></a>
