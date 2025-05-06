# Notes REST API Project

A microservices-based backend system for managing notes and notebooks, demonstrating modern containerization and orchestration practices.

## 🚀 Features

- **Notes Management**: Create, read, update, and delete individual notes
- **Notebooks Management**: Organize notes into notebooks
- **Microservices Architecture**: Independent services for notes and notebooks
- **Containerized Deployment**: Docker-based containerization for consistent environments
- **Reverse Proxy**: NGINX-based request routing
- **MongoDB Integration**: Flexible NoSQL database for data storage
- **Health Checks**: Service monitoring and observability

## 🏗️ Architecture

The application consists of three core services:

1. **Notes Service** (`notes-backend/`)
   - Manages individual notes
   - Runs on port 3001
   - MongoDB database for note storage

2. **Notebooks Service** (`notesbook-backend/`)
   - Manages notebooks (collections of notes)
   - Runs on port 3000
   - MongoDB database for notebook storage

3. **Reverse Proxy** (`reverse-proxy/`)
   - NGINX-based request routing
   - Exposed on port 6000
   - Routes requests to appropriate services

## 📋 API Endpoints

### Notes Service

- `POST /api/notes` - Create a new note
- `GET /api/notes` - List all notes
- `GET /api/notes/:id` - Get a specific note
- `PUT /api/notes/:id` - Update a note
- `DELETE /api/notes/:id` - Delete a note
- `GET /health` - Health check endpoint

### Notebooks Service

- `POST /api/notebooks` - Create a new notebook
- `GET /api/notebooks` - List all notebooks
- `GET /api/notebooks/:id` - Get a specific notebook
- `PUT /api/notebooks/:id` - Update a notebook
- `DELETE /api/notebooks/:id` - Delete a notebook
- `GET /health` - Health check endpoint

## 🛠️ Technology Stack

- **Backend**: Node.js with Express.js
- **Database**: MongoDB
- **Containerization**: Docker
- **Orchestration**: Docker Compose
- **Reverse Proxy**: NGINX
- **Development**: Hot-reloading for development

## 🚀 Getting Started

1. Clone the repository
2. Set up environment variables:
   - Create `.env` files in both `notes-backend/` and `notesbook-backend/` directories
   - Configure MongoDB credentials and database names

3. Start the services:
   ```bash
   docker compose up
   ```

4. Access the API through the reverse proxy at `http://localhost:6000`

## 🔧 Development

The project uses Docker Compose's development features:
- Hot-reloading for both services
- Development-specific configurations
- Volume mounting for live code updates

## 🔍 Key Concepts Demonstrated

- Microservices architecture
- Containerization best practices
- Service orchestration
- Reverse proxy configuration
- Database integration
- API design patterns
- Health monitoring
- Resilience handling

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details. 