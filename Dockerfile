FROM mjmg/centos-supervisor-base:latest


# Update System Image and install EPEL
RUN \
  yum update -y && \
  yum upgrade -y && \
  yum install -y epel-release

# Install OpenJDK8 and R
RUN \
  yum install -y java-1.8.0-openjdk-headless R
  
# Setup default cran repo
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile

CMD "/bin/bash"
