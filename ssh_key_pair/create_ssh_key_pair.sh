profile='nfq'
awscli="/usr/local/bin/aws"
ssh_key_name='./mykey.pem'
# create ssh-key-pair with ssh_key_name is the path of pem key file will be created.

"$awscli" ec2 create-key-pair --profile $profile_name --key-name "$ssh_key_name" --query "KeyMaterial" --output text > "$ssh_key_name" && chmod 400 "$ssh_key_name"

