@echo off
cd /d %~dp0

echo *************************************************************
echo *                      INSTALL REACT                        *
echo *************************************************************
call npx create-react-app frontend


echo *************************************************************
echo *                      INSTALL LARAVEL                      *
echo *************************************************************
call composer create-project laravel/laravel:^8.0 backend --prefer-dist


echo *************************************************************
echo *        COPY DOCKERFILE FOR FRONTEND AND BACKEND           *
echo *************************************************************
call copy "%~dp0\Docker_config\frontend\Dockerfile" "%~dp0\frontend"
call copy "%~dp0\Docker_config\backend\Dockerfile" "%~dp0\backend"


echo *************************************************************
echo *                  START DOCKER CONTAINERS                  *
echo *************************************************************
call docker-compose up -d

echo *************************************************************
echo *                          DONE!                            *
echo *                  FRONTEND - 127.0.0.1:3000                *
echo *                  BACKEND - 127.0.0.1:8050                 *
echo *************************************************************

cmd /k