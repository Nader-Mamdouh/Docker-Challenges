# Docker Key-Value Store Application

A Docker-based key-value store application with a Node.js backend and MongoDB database.

## Project Overview

This project implements a key-value store service using a microservices architecture with Docker containers. It consists of:
- A Node.js backend service (Express.js)
- A MongoDB database service
- Docker containers for both services
- Persistent storage using Docker volumes
- Custom Docker network for secure container communication

## Prerequisites

- Docker installed on your system
- Docker Compose (optional, for easier management)
- Basic understanding of Docker concepts

## Project Structure

```
Docker-Challenges/
├── backend/              # Node.js backend application
│   ├── src/             # Source code
│   ├── Dockerfile.dev   # Development Dockerfile
│   └── package.json     # Node.js dependencies
├── db-config/           # MongoDB configuration
├── setup.sh             # Network and volume setup
├── start_backend.sh     # Backend container management
├── start_db.sh          # Database container management
└── cleanup-db.sh        # Database cleanup utilities
```

## Configuration

The project uses several environment files for configuration:

- `.env.network`: Network configuration
- `.env.db`: Database credentials and settings
- `.env.volume`: Volume configuration

## Getting Started

1. **Setup Docker Network and Volumes**
   ```bash
   ./setup.sh
   ```

2. **Start the MongoDB Database**
   ```bash
   ./start_db.sh
   ```

3. **Start the Backend Service**
   ```bash
   ./start_backend.sh
   ```

## Service Details

### Backend Service
- Port: 3000
- Framework: Express.js
- Database: MongoDB
- Features:
  - Hot-reloading for development
  - Environment-based configuration
  - MongoDB integration

### Database Service
- Port: 27017
- Database: MongoDB Community Server 7.0
- Features:
  - Persistent storage
  - Initialization scripts
  - Secure authentication

## Development

The project is set up for development with the following features:
- Hot-reloading enabled
- Source code mounted as volumes
- Development-specific Dockerfile
- Nodemon for automatic server restarts

## Cleanup

To clean up the database:
```bash
./cleanup-db.sh
```

## Troubleshooting

1. **Container Already Exists**
   - If you see an error about containers already existing, use:
     ```bash
     docker kill <container-name>
     ```

2. **Network Issues**
   - Ensure the Docker network is created:
     ```bash
     docker network ls
     ```

3. **Volume Issues**
   - Check volume creation:
     ```bash
     docker volume ls
     ```

## Security Considerations

- All sensitive credentials are managed through environment variables
- Network isolation using custom Docker network
- Proper authentication for database access

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the ISC License. 
