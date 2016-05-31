#!/bin/bash
# Bash Menu Script

PS3='Please enter your choice: '
options=("Intro" "Install" "Images" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Intro")
            echo "Docker provides an integrated technology suite that enables development and IT operations teams to build, ship, and run distributed applications anywhere. 
Please follow this tutorial to install dockertoolbox, run images and containers and leanm more on how to use Docker."
            break
	    ;;
        "Install")
            echo "Dockertoolbox comes with 
- Docker CLI client for running Docker Engine to create images and containers
- Docker Machine so you can run Docker Engine commands from Mac OS X terminals
- Docker Compose for running the docker-compose command
- Kitematic, the Docker GUI
- the Docker QuickStart shell preconfigured for a Docker command-line environment
- Oracle VM VirtualBox 
run:  brew cask install dockertoolbox" 
echo "Please enter input: "
read input
exec $input
            break
	    ;;
        "Images")
            echo "run: docker run docker/whalesay cowsay boo "
	    break
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
