# CloudOps Automator

**CloudOps Automator** is a powerful tool designed to automate the management and operational tasks of Google Cloud Platform (GCP) virtual machines (VMs). This project streamlines the process of resetting VMs and running custom scripts, reducing the need for manual intervention and ensuring consistent operations across multiple instances.

## Features

- **Automated VM Reset**: Effortlessly reset your GCP VMs across multiple zones with a single command.
- **Script Execution**: Automatically run custom bash scripts on each VM after resetting.
- **Parallel Processing**: Perform tasks on multiple instances simultaneously, saving time and reducing manual workload.
- **Cron Integration**: Schedule the reset and script execution tasks to run at specific intervals.

## Prerequisites

Before using CloudOps Automator, ensure you have the following:

- **Google Cloud SDK** installed on your local machine.
- **gcloud** command-line tool configured with access to your GCP project.
- SSH keys set up for seamless connections to your instances.

## Install Google Cloud SDK

1. **Download SDK**:
    ```bash
    curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
    ```

2. **Extract Archive**:
    ```bash
    tar -xf google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
    ```

3. **Install SDK**:
    ```bash
    ./google-cloud-sdk/install.sh
    ```

4. **Initialize SDK**:
    ```bash
    ./google-cloud-sdk/bin/gcloud init
    ```

## Authentication and Configuration

1. **Authenticate with Google Cloud**:
    ```bash
    gcloud auth login
    ```
    - Copy the link provided, open it in your browser, log in to your Google account, and paste the authentication key back into the terminal.

2. **Verify Configuration**:
    ```bash
    gcloud config list
    ```

## Important Commands

- **List all projects**:
    ```bash
    gcloud projects list
    ```

- **List all compute instances**:
    ```bash
    gcloud compute instances list
    ```

- **List current configuration**:
    ```bash
    gcloud config list
    ```

## Be Careful

**Do not reset the VM that is currently running the script**. If you reset the VM running the script, it will terminate the script execution, and you might lose progress or control over the operation.

Instead, you should:
- **Test the script** on a non-critical VM before deploying it in a production environment.
- **Schedule the reset** of your VM from another VM or through an external scheduling service to ensure your script remains uninterrupted.

