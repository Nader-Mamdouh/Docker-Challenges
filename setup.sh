# Responsible for creating volumes and network
source .env.network
source .env.volume

if [ "$(docker network ls -q -f name=$NETWORK_NAME)" ] ; then
	echo " Network $NETWORK_NAME already exist, skip creating network"
else
	docker network create $NETWORK_NAME
	echo " Network created "
fi


if [ "$(docker volume ls -q -f name=$LOCAL_VOLUME_NAME )" ] ; then
        echo " Volume  $LOCAL_VOLUME_NAME already exist, skip creating volume"
else
        docker volume create $LOCAL_VOLUME_NAME
        echo " Volume created "
fi

