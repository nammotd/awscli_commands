profile_name="nfq"
awscli="/usr/local/bin/aws"
value="nghia"

###############################################################
# list command's default structure with --generate-cli-skeleton
###############################################################

# $awscli ec2 describe-instances --profile $profile_name --generate-cli-skeleton

########################
# list all ec2 instances
########################

# $awscli ec2 describe-instances --profile $profile_name

####################################################
# list ec2 instances match with filter "Name,Values"
####################################################

# $awscli ec2 describe-instances --profile $profile_name --filters "Name=key-name,Values=$value"

###########################################################################################
# list ec2 instances match with filter "Name,Values" then sort need information by using jq
###########################################################################################

# $awscli ec2 describe-instances --profile $profile_name --filters "Name=key-name,Values=$value" | jq '.Reservations[].Instances[]'

########################################################################################################
# list ec2 instances match with filter "Name,Values" then sort need information by using jq, then output required data in a specific form
########################################################################################################

# $awscli ec2 describe-instances --profile $profile_name --filters "Name=key-name,Values=$value" | jq '.Reservations[].Instances[] | { instance_id: .InstanceId, instance_public_dns: .NetworkInterfaces[].Association.PublicDnsName }'
