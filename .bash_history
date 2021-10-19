gcloud auth list
gcloud config list project
echo $GOOGLE_CLOUD_PROJECT
gcloud services enable compute.googleapis.com                                containerregistry.googleapis.com                         aiplatform.googleapis.com
gcloud services enable compute.googleapis.com                                containerregistry.googleapis.com                         aiplatform.googleapis.com
gcloud services enable compute.googleapis.com                                containerregistry.googleapis.com                         aiplatform.googleapis.com
BUCKET_NAME=gs://$GOOGLE_CLOUD_PROJECT-bucket
gsutil mb -l us-central1 $BUCKET_NAME
alias python=python3
mkdir mpg
cd mpg
touch Dockerfile
mkdir trainer
touch trainer/train.py
ls
ls -a
ls
pip3 install pandas
pip3 install tensorflow
echo gs://$GOOGLE_CLOUD_PROJECT-bucket
echo $GOOGLE_CLOUD_PROJECT-bucket
sed -i "s|BUCKET_NAME|$BUCKET_NAME|g" trainer/train.py
IMAGE_URI="gcr.io/$GOOGLE_CLOUD_PROJECT/mpg:v1"
docker build ./ -t $IMAGE_URI
docker push $IMAGE_URI
pip3 install google-cloud-aiplatform --upgrade --user
/usr/bin/python3 /home/ranjiraj4141/mpg/trainer/train.py
ls
gcloud auth list
gcloud config list project
echo $GOOGLE_CLOUD_PROJECT
gcloud services enable compute.googleapis.com                                containerregistry.googleapis.com                         aiplatform.googleapis.com
BUCKET_NAME=gs://$GOOGLE_CLOUD_PROJECT-bucket
gsutil mb -l us-central1 $BUCKET_NAME
alias python=python3
ls
cd mpg
ls
sed -i "s|BUCKET_NAME|$BUCKET_NAME|g" trainer/train.py
echo gs://$GOOGLE_CLOUD_PROJECT-bucket
IMAGE_URI="gcr.io/$GOOGLE_CLOUD_PROJECT/mpg:v1"
docker build ./ -t $IMAGE_URI
docker push $IMAGE_URI
pip3 install google-cloud-aiplatform --upgrade --user
cd..
cd ..
python3 deploy.py | tee deploy-output.txt
cd mpg
python3 deploy.py | tee deploy-output.txt
ls
cd ..
python3 deploy.py | tee deploy-output.txt
ENDPOINT=$(cat deploy-output.txt | sed -nre 's:.*Resource name\: (.*):\1:p' | tail -1)
sed -i "s|ENDPOINT_STRING|$ENDPOINT|g" predict.py
python3 predict.py
ENDPOINT=$(cat deploy-output.txt | sed -nre 's:.*Resource name\: (.*):\1:p' | tail -1)
sed -i "s|mpg-imported_endpoint|$ENDPOINT|g" predict.py
python3 predict.py
