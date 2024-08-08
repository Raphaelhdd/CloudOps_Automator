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

##Install SDK Google Cloud
Download SDK
```bash
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
```

Extract archive
```bash
tar -xf google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
```

Install SDK
```bash
./google-cloud-sdk/install.sh
```

Init SDK
```bash
./google-cloud-sdk/bin/gcloud init
```


##Authentification and configuration
Connect to you account google cloud
```bash
gcloud auth login
```

Copy the link they will give you to your account and past the key.


## Setup

1. **Clone the repository**:
    ```bash
    git clone https://github.com/Raphaelhdd/cloudops-automator.git
    cd cloudops-automator
    ```

2. **Set up your GCP environment**:
    - Ensure your project ID, instance names, and zones are correctly configured in the script files.

3. **Edit the script**:
    - Update `reset_and_run.sh` with your specific project ID and instance details.
    - Place your custom bash script (`run_scripts.sh`) in the same directory.

4. **Make the scripts executable**:
    ```bash
    chmod +x reset_and_run.sh
    chmod +x run_scripts.sh
    ```

## Usage

To manually reset your instances and run the custom script, simply execute:

```bash
./reset_and_run.sh
```

