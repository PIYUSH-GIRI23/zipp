## Zipp — Fast clipboard for text & media

<!-- Shields / quick status -->

[![Frontend](https://img.shields.io/badge/frontend-React%2BTypeScript-brightgreen.svg)](#)
[![Backend](https://img.shields.io/badge/backend-Node.js%2BExpress-orange.svg)](#)

A lightweight clipboard manager to save text, images and files across devices. Zipp is split into a client (frontend) and several backend microservices so you can run and extend parts independently.

---

## Quick links

- Client repo: https://github.com/PIYUSH-GIRI23/zipp-client2
- Server repos (microservices):
  - Auth: https://github.com/PIYUSH-GIRI23/zipp-auth
  - Mailservice: https://github.com/PIYUSH-GIRI23/zipp-mailservice
  - Clip: https://github.com/PIYUSH-GIRI23/zipp-clip
  - API Gateway: https://github.com/PIYUSH-GIRI23/zipp-api-gateway

---

## Features

- Save text snippets with heading and character limits
- Upload images (with preview) and files (many formats supported)
- Per-user clip limits and plan-based quotas
- Secure downloads via signed URLs
- Microservice architecture (auth, mailservice, clip, gateway)


## Quick start (local development)

This repo expects you to clone both the client and the server repositories listed above. The root `run.sh` script will attempt to start all services together if you placed the microservices next to this client.

1) Clone the client and all server repos (place them in the same parent folder)

```bash
git clone https://github.com/PIYUSH-GIRI23/zipp-client2.git
git clone https://github.com/PIYUSH-GIRI23/zipp-auth.git
git clone https://github.com/PIYUSH-GIRI23/zipp-mailservice.git
git clone https://github.com/PIYUSH-GIRI23/zipp-clip.git
git clone https://github.com/PIYUSH-GIRI23/zipp-api-gateway.git
```

2) Copy environment templates and set secrets for each service

```bash
# Example (run inside each repo folder)
cp .env.local .env
```

Important client env vars (in `zipp-client2/.env`):

```text
VITE_BACKEND_URL=http://localhost:5000
VITE_CLIP_GET_ENDPOINT=/clip/clips
VITE_CLIP_UPLOAD_IMAGE_ENDPOINT=/clip/upload-image
VITE_CLIP_UPLOAD_FILE_ENDPOINT=/clip/upload-file
VITE_CLIP_DOWNLOAD_MEDIA_ENDPOINT=/clip/download
# …add the rest used by the frontend
```

3) Install dependencies

```bash
# in each repo
npm install
```

4) Start everything

```bash
# from the workspace root (the repo provides a convenience script)
./run.sh

# frontend default: http://localhost:5173
```

To stop all services:

```bash
./stop.sh
```

---

## Development notes

- The backend is split into microservices. Make sure the API gateway route config matches the service ports.
- Cloudinary is used for media storage. Uploaded assets keep a `folder/publicId` pattern (e.g. `images/abc123`).
- Authentication uses JWT tokens passed in the `token` header as a JSON string (access + refresh tokens).

---

## Troubleshooting

- If downloads show `Resource not found - images/<id>`, verify the `publicId` stored in the DB matches Cloudinary (including folder). Check `clip` service logs and the Cloudinary dashboard.
- If uploads fail, confirm environment variables and permitted file types / size limits in `zipp-clip`.

---

## Contributing

Contributions are welcome. Open an issue or submit a pull request with a clear description of the change.

Steps:

1. Fork the repo
2. Create a feature branch
3. Make changes & add tests
4. Open a pull request

---

## License

MIT — see `LICENSE` file.

---

## Contact

Email: giri.piyush2003@gmail.com
GitHub: https://github.com/PIYUSH-GIRI23

---

_Tip: Add real screenshots to `zipp-client/public/screenshots/` and replace the hero placeholder to make the README pop._
## To access Zipp, you have to clone both zipp-client2 and zipp-server

## Zipp-client : 
```
git clone https://github.com/PIYUSH-GIRI23/zipp-client2.git
```

## Zipp-server : It contains 4 microservices

- Auth : For user authentication
```
git clone https://github.com/PIYUSH-GIRI23/zipp-auth.git
```
- Mailservice :For sending mail and alerts
```
git clone https://github.com/PIYUSH-GIRI23/zipp-mailservice.git
```

- Clip : Fir storing text and media to database
```
git clone https://github.com/PIYUSH-GIRI23/zipp-clip.git
```

- Api Gateway : Entry point for all backend services which rate limits the services
```
git clone https://github.com/PIYUSH-GIRI23/zipp-api-gateway.git
```

--- 

## Start the project

- Now you got 5 modules (1 client + 4 server)
- After installing all client and server module 

1. Copy Environment Variables in each module
```
cp .env.local .env
```

2. Install dependencies in all modules
```
npm install
```

3. Run the executable file in root folder (It will spin up all 5 modules together)
```
./run.sh
```

4. Go to http://localhost:5173/ to access frontend

To stop the services, run
```
./stop.sh
```

--- 
🌐 Connect with Me

<a href="mailto:giri.piyush2003@gmail.com"><img src="https://img.shields.io/badge/Mail-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Mail"></a>
<a href="https://github.com/PIYUSH-GIRI23"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a>
<a href="https://www.linkedin.com/in/piyush-giri-031b71254/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
<a href="https://x.com/GIRIPIYUSH2310"><img src="https://img.shields.io/badge/X-000000?style=for-the-badge&logo=x&logoColor=white" alt="X"></a>
