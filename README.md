# amazon-workspaces-client
Amazon Workspaces client in a Docker container

# Why

As there I had hard times to make Amazon Workspaces client work on my
Fedora system, I just did a Docker image where it's installed on Ubuntu.


# Build

    git clone git@github.com:smyskoff/amazon-workspaces-client.git
    cd amazon-workspaces-client
    docker build -t amazon-workspaces .

# Run

    xhost +
    docker start amazon-workspaces
