#!/bin/bash
set -e

echo "Starting OOP2025 Java environment setup..."

# Step 1: Install Java 22 using SDKMAN (automatically answer Y)
echo "Installing Java 22 via SDKMAN..."
echo "Y" | sdk install java 22.0.2-tem

# Step 2: Install JBang
echo "Installing JBang..."
curl -Ls https://sh.jbang.dev | bash -s - app setup

# Step 3: Source the environment to pick up JBang installation, then install Rapaio Jupyter kernel
echo "Installing Rapaio Jupyter kernel..."
# Source the environment files that JBang modifies
source ~/.bashrc 2>/dev/null || true
source ~/.profile 2>/dev/null || true

# Add JBang to PATH if not already there
if ! command -v jbang &> /dev/null; then
    export PATH="$HOME/.jbang/bin:$PATH"
fi

# Install the Rapaio Jupyter kernel
jbang --java 22 io.github.padreati:rapaio-jupyter-kernel:2.1.0 -i -auto

echo "Setup complete! You can now run 'jupyter-lab --no-browser --IdentityProvider.token='x'' to start Jupyter Lab."