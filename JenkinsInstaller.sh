# Install java
sudo yum install java-17 -y

# Remove existing Jenkins repository file (if necessary)
sudo rm -f /etc/yum.repos.d/jenkins.repo

# Download the Jenkins repository file again
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import the GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Clean the Yum cache
sudo yum clean all

# Update the system
sudo yum update -y

# Install Jenkins
sudo yum install jenkins -y

