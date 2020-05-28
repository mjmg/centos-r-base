FROM mjmg/centos-supervisor-base:latest


# Update System Image and install EPEL
RUN \
  dnf update -y && \
  dnf upgrade -y && \
  dnf install -y epel-release

# Install OpenJDK11 and R
RUN \
  dnf install -y java-11-openjdk-headless 
RUN \
  dnf install -y R R-devel R-core-devel
  
# Setup default cran repo
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile

CMD "/bin/bash"
