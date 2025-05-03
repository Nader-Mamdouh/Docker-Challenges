source .env.db
source .env.network
source .env.volume


if [ "$(docker ps -a -q -f name=$DB_CONTAINER_NAME)" ] ; then
	docker kill $DB_CONTAINER_NAME && docker rm $DB_CONTAINER_NAME
	echo " $DB_CONTAINER_NAME has been deleted "
else
	echo " $DB_CONTAINER_NAME doesn't exist"
fi	

if [ "$(docker network ls -q -f name=$NETWORK_NAME)" ] ; then
	docker network rm $NETWORK_NAME
        echo " Network $NETWORK_NAME has been deleted"
else
        echo " No Network with this name exist "
fi


if [ "$(docker volume ls -q -f name=$LOCAL_VOLUME_NAME )" ] ; then
	docker volume rm $LOCAL_VOLUME_NAME
        echo " Volume  $LOCAL_VOLUME_NAME has been deleted"
else
        echo " No Volume with this name exist "
fi


