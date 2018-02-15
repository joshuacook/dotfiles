function ec2instance {
  case $1 in
    clean)
        docker-machine rm ec2instance
        ;;
    creds)
        echo "Type your AWS ACCESS KEY:"
        read aws_access_key_id
        echo "Type your AWS SECRET ACCESS KEY:"
        read aws_secret_access_key
        echo "[default]" > credentials.txt
        echo "aws_access_key_id = $aws_access_key_id" >> credentials.txt
        echo "aws_secret_access_key = $aws_secret_access_key" >> credentials.txt
        echo "Now, move the file credentials.txt to ~/.aws/credentials"
        ;;
    env)
        eval $(docker-machine env ec2instance)
        ;;
    help)
        echo "ec2instance clean         // removes your ec2 instance"
        echo "ec2instance creds         // create a new AWS credentials file"
        echo "ec2instance env           // configure docker to use the ec2 instance"
        echo "ec2instance images        // display images in the ec2 image cache"
        echo "ec2instance ip            // display the ip of the ec2 instance"
        echo "ec2instance jupyter       // launch a joshuacook/ucla_ds jupyter notebook server and display the token"
        echo "ec2instance new #TYPE#    // launch a new ec2 instance of a certain type e.g. t2.micro, t2.xlarge"
        echo "ec2instance open          // open the jupyter notebook server in a web browser"
        echo "ec2instance ps            // display all (-a) processes managed by docker on the ec2 instance"
        echo "ec2instance ssh           // connect to the ec2 instance via ssh"
        echo "ec2instance start         // start the ec2 instance"
        echo "ec2instance start         // stop the ec2 instance"
        ;;
    images)
        ec2instance env
        docker images
        ;;
    ip)
        docker-machine ip ec2instance
        ;;
    jupyter)
        ec2instance env
        container="$(docker run -d -v /home/ubuntu/src:/home/jovyan/work -p 80:8888 joshuacook/ucla_ds)"
        sleep 2
        docker exec $container jupyter notebook list
        ;;
    new)
        docker-machine create --driver amazonec2 \
            --amazonec2-open-port 80 \
            --amazonec2-region us-west-2 \
            --amazonec2-instance-type "$2" \
            --amazonec2-ssh-keypath ~/.ssh/id_rsa \
            ec2instance
        docker-machine scp ~/.ssh/id_rsa ec2instance:~/.ssh
        docker-machine scp ~/.bash/src ec2instance:/home/ubuntu/src -r
        ec2instance env
        ;;
    open)
        open http://this-instance.cc # http://$(ec2instance ip)
        ;;
    ps)
        ec2instance env
        docker ps -a
        ;;
    ssh)
        docker-machine ssh ec2instance
        ;;
    start)
        docker-machine start ec2instance
        docker-machine regenerate-certs ec2instance
        ec2instance env
        ;;
    stop)
        docker-machine stop ec2instance
        ;;
    type)
        source ~/.aws/instance
        aws ec2 modify-instance-attribute --instance-id $instance_id --instance-type "{\"Value\": \"$2\"}"
        ;;
    *)
        ec2instance help
        ;;
  esac
}
