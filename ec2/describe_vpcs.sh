# aws ec2 describe-vpcs | jq '.Vpcs[] | select(.IsDefault == false)'

# aws ec2 describe-vpcs | jq '.Vpcs[] | select(.IsDefault == false) | .VpcId'

# aws ec2 describe-vpcs --profile $profile_name | jq -r '.Vpcs[] | select(.IsDefault == false) | { ip_range: .CidrBlock, vpc_id: .VpcId } | [.ip_range, .vpc_id] | @csv '

# aws ec2 describe-vpcs --profile $profile_name | jq -s 'group_by(.Vpcs[]) | .[]'

#aws ec2 describe-vpcs --profile $profile_name | jq -r '.Vpcs[] | select(.IsDefault == false) | [ .CidrBlock, .VpcId ] | @csv '

