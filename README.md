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

    # Should be run once after each reboot or added
    # to ~/.bashrc or whatever.
    xhost +
    docker run --name=amazon-workspaces \
               --env "DISPLAY" \
               --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
               --network host \
               amazon-workspaces

    # And after you close the window, you may restart the container
    # with the following command
    docker start amazon-workspaces
