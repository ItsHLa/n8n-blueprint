# Deploy n8n on Render

> [!IMPORTANT]
> **View full deployment instructions in the [**Render docs**](https://render.com/docs/deploy-n8n).**

This template defines a [`render.yaml`](https://github.com/render-examples/n8n/blob/main/render.yaml) file you can use to deploy [n8n](https://n8n.io/) on Render. Click **Use this template** in the upper right to copy this template into your account as a new repo.

The `render.yaml` file defines the following resources:

- A web service that pulls and runs the official n8n Docker image
- A Render Postgres database that stores n8n data

Each of the above uses a free instance type by default.

## Fixing 502 Bad Gateway Errors

If you encounter 502 errors, this blueprint has been optimized to mitigate them by:
- **Pruning Executions:** Old execution data is automatically deleted to keep the database light.
- **Memory Management:** `NODE_OPTIONS` are set to prevent OOM (Out of Memory) crashes.
- **Health Checks:** Configured Railway to monitor the `/healthz/readiness` endpoint.

For production, we recommend upgrading to a paid plan with more RAM if your workflows are heavy.
