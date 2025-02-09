# Framework Workspace

A Docker workspace for React development.

## Features

- Node.js 18
- Create React App
- Development tools (git, curl, vim)
- Hot-reloading capability
- Volume mounting for local development

## Usage

1. Pull the image:
```bash
docker pull your-dockerhub-username/react-workspace:1.0
```

2. Run the container:
```bash
docker run -it -p 3000:3000 -v $(pwd):/app your-dockerhub-username/react-workspace:1.0
```

3. Inside the container, you can:
- Create a new React project: `create-react-app my-app`
- Start the development server: `cd my-app && npm start`

## Development

The container is configured to mount your local directory, allowing you to:
- Edit files locally using your preferred IDE
- See changes reflect immediately in the browser
- Keep your node_modules inside the container

## Building Locally

If you want to build the image locally:
```bash
docker build -t react-workspace .
```
