profile_name="nfq"

# aws ec2 describe-vpcs | jq '.Vpcs[] | select(.IsDefault == false)'

# aws ec2 describe-vpcs | jq '.Vpcs[] | select(.IsDefault == false) | .VpcId'

# aws ec2 describe-vpcs --profile $profile_name | jq -r '.Vpcs[] | select(.IsDefault == false) | { ip_range: .CidrBlock, vpc_id: .VpcId } | [.ip_range, .vpc_id] | @csv '

# aws ec2 describe-vpcs --profile $profile_name | jq -s 'group_by(.Vpcs[]) | .[]'

#aws ec2 describe-vpcs --profile $profile_name | jq -r '.Vpcs[] | select(.IsDefault == false) | [ .CidrBlock, .VpcId ] | @csv '

# aws ec2 describe-instances --filters "Name=key-name,Values=nghia" | jq '.Reservations[].Instances[] | { instance_id: .InstanceId, instance_public_dns: .NetworkInterfaces[].Association.PublicDnsName }'

#aws ec2 describe-instances --filters "Name=key-name,Values=nghia" | jq '.Reservations[].Instances[].SecurityGroups[]'

# aws ec2 describe-instances --filter "Name=instance-state-name,Values=running" --profile $profile_name | jq '.Reservations[].Instances[] | { instance_id: .InstanceId, instance_public_dns: .NetworkInterfaces[].Association.PublicDnsName }'

# aws elbv2 describe-load-balancers --profile $profile_name

# aws ec2 run-instances --generate-cli-skeleton
