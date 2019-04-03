profile='nfq'

# create ssh-key-pair with ssh_key_name is the path of pem key file will be created.

ssh_key_name='./mykey.pem'

aws ec2 create-key-pair --profile $profile_name --key-name "$ssh_key_name" --query "KeyMaterial" --output text > "$ssh_key_name" && chmod 400 "$ssh_key_name"

