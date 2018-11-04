registry_server='docker.mycloud.com'
username='example'

curl -k -X GET "https://$registry_server/v2/_catalog" -u $username -H "Accept: application/json"
Enter host password for user 'example':
{"repositories":["app-base","ubuntu","cache-base"]}

image='app-base'
curl -k -X GET "https://$registry_server/v2/$image/tags/list" -u $username -H "Accept: application/json"
Enter host password for user 'example':
{"name":"app-base","tags":["v3","latest","v4","v1","v2","v5"]}
