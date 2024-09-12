kubectl create -n suse-private-ai secret generic route53-credentials-secret --from-literal=secret-access-key=${AWS_SECRET_ACCESS_KEY}
