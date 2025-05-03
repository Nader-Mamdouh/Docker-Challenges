MONGODB_IMAGE="mongodb/mongodb-community-server"
MONGODB_TAG="7.0-ubuntu2204"
source .env.db

# root credintials
ROOT_USER="root-user"
ROOT_PASSWORD="root-password"

# key value credintials
KEY_VALUE_DB="key-value-db"
KEY_VALUE_USER="key-value-user"
KEY_VALUE_PASSWORD="key-value-password"

# ports
source .env.network
LOCALHOST_PORT=27017
CONTAINER_PORT=27017

# storage
source .env.volume
CONTAINER_VOLUME_PATH="/data/db"

source setup.sh

if [ "$(docker ps -q -f name=$DB_CONTAINER_NAME)" ] ; then
	echo "A container with the same name exist "
	echo " To remove the old one Run : docker kill $DB_CONTAINER_NAME "
	exit 1
fi

docker run -d --name $DB_CONTAINER_NAME \
	-e MONGODB_INITDB_ROOT_USERNAME=$ROOT_USER \
	-e MONGODB_INITDB_ROOT_PASSWORD=$ROOT_PASSWORD \
	-e KEY_VALUE_DB=$KEY_VALUE_DB \
	-e KEY_VALUE_USER=$KEY_VALUE_USER \
	-e KEY_VALUE_PASSWORD=$KEY_VALUE_PASSWORD \
	-p $LOCALHOST_PORT:$CONTAINER_PORT \
	-v $LOCAL_VOLUME_NAME:$CONTAINER_VOLUME_PATH \
	-v ./db-config/mongo-init.js:/docker-entrypoint-initdb.d/mongo-init.js:ro \
	--network $NETWORK_NAME \
       	$MONGODB_IMAGE:$MONGODB_TAG
