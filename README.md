# jenkins-slave-robotframework-firefox
[![](https://images.microbadger.com/badges/image/manycoding/jenkins-slave-robotframework-firefox.svg)](https://microbadger.com/images/manycoding/jenkins-slave-robotframework-firefox)

A lean Alpine Docker image with Jenkins Swarm Slave, Robot Framework and headless Firefox ESR on xvfb.

To swarm:

    $ docker run -d --restart always --link $jenkins_master_container manycoding/jenkins-slave-robotframework-firefox -username $jenkins_user -password $pass

To run Robot Framework tests from Jenkins:

    $ xvfb-run -a robot .