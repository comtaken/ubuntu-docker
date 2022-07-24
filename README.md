# ubuntu-docker
- 初期化  
  コンテナ停止、削除  
  $ docker-compose down    

  コンテナ一掃    
  $ docker rm $(docker ps -aq) --force  

  image削除  
  $ docker rmi -f  $(docker images -q)  

  dockerの管理データを削除  
  .dataの削除  
  
  docker exec -it コンテナ名 bash
