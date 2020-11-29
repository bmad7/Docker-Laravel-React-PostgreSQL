echo "*************************************************************"
echo "*                      INSTALL REACT                        *"
echo "*************************************************************"
npx create-react-app frontend

echo "*************************************************************"
echo "*                      INSTALL LARAVEL                      *"
echo "*************************************************************"
composer create-project laravel/laravel:^8.0 backend --prefer-dist

echo "*************************************************************"
echo "*        COPY DOCKERFILE FOR FRONTEND AND BACKEND           *"
echo "*************************************************************"
cp Docker_config/frontend/Dockerfile frontend/
cp Docker_config/backend/Dockerfile backend/

echo "*************************************************************"
echo "*                  START DOCKER CONTAINERS                  *"
echo "*************************************************************"
docker-compose up -d

echo "*************************************************************"
echo "*                          DONE!                            *"
echo "*                  FRONTEND - 127.0.0.1:3000                *"
echo "*                  BACKEND - 127.0.0.1:8050                 *"
echo "*************************************************************"
