alias tfi="terraform init"
alias tfp="terraform plan"
alias tfpo="terraform plan -out tf.out"
alias tfa="terraform apply"
alias kx="kubectx"
alias kns="kubens"

awsv() {
    aws-vault exec ${AWS_PROFILE} -- aws $@
}

tfv() {
    aws-vault exec ${AWS_PROFILE} -- terraform $@
}
