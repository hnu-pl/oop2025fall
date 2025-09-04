# DevContainer Configuration for OOP2025

This directory contains the DevContainer configuration that automatically sets up the Java programming environment when a GitHub Codespace is created.

## What it does

When you create a new Codespace, this configuration will automatically:

1. **Install Java 22** using SDKMAN (`sdk install java 22.0.2-tem`)
2. **Install JBang** for simplified Java development (`curl -Ls https://sh.jbang.dev | bash -s - app setup`)  
3. **Install Rapaio Jupyter Kernel** for Java in Jupyter notebooks (`jbang --java 22 io.github.padreati:rapaio-jupyter-kernel:2.1.0 -i -auto`)

## Files

- `devcontainer.json`: Main configuration file that defines the container and post-creation commands
- `setup.sh`: Shell script that executes the three installation commands from the main README
- `README.md`: This documentation file

## Usage

Simply create a new Codespace from the repository - the setup will run automatically. Once complete, you can start Jupyter Lab with:

```bash
jupyter-lab --no-browser --IdentityProvider.token='x'
```

This matches the installation steps documented in the main [README.md](../README.md#installation-steps).