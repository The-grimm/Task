# Task
created a role called web-nginx which includes the aws-codedeploy agent installation play as well.

1.In this roles:
    -Installs nginx on ubuntu only
    -Install aws-cli, aws-codedeploy agent on ubuntu only
2.Use url-test.yml to check the webpage of nginx page by executing with --check on command line
     Ex: $ansible-playbook url.test.yml
