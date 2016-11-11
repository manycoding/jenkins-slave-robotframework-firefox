# jenkins-slave-robotframework-firefox
[![](https://images.microbadger.com/badges/image/manycoding/jenkins-slave-robotframework-firefox.svg)](https://microbadger.com/images/manycoding/jenkins-slave-robotframework-firefox)

## What's Inside

    Java 8
    Python2
    Robot Framework
    Firefox ESR
    xvfb
    git

## Make It Short 
Run with master, username, password and other [parameters](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin#SwarmPlugin-AvailableOptions):

    $ docker run -d manycoding/jenkins-slave-robotframework-firefox \
        -username $jenkins_user -password $pass -labels "firefox_esr" \
        -master $jenkins_master_url

To run Robot Framework tests from Jenkins:

    $ xvfb-run -a robot .
