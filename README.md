hi

steps

                                                                                                ○ ri-dev-346203-gke 09:25:11
❯ terraform init
Initializing the backend...
╷
│ Error: Failed to get existing workspaces: querying Cloud Storage failed: googleapi: Error 403: nikhil.m@netenrich.com does not have storage.objects.list access to the Google Cloud Storage bucket. Permission 'storage.objects.list' denied on resource (or it may not exist)., forbidden
│ 
│ 


                                                                                  ○ ri-dev-346203-gke G ri-dev 09:47:47
❯ gcloud config configurations create personal-project
Created [personal-project].
Activated [personal-project].


gcloud auth login
gcloud auth application-default login


❯ gcloud config configurations describe personal-project
is_active: true
name: personal-project
properties:
  core:
    account: nkhlkumar01@gmail.com


