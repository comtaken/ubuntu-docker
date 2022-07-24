# 説明
- 前提条件  
ubuntuがインストール済みであること。  
gitがインストール済みであること。

# ubuntu-docker  
- 手順  
/home/ユーザー/でこのリポジトリをclone  
$ git clone リポジトリurl  
  
  webにアクセスしてhtml/index.htmlが見えているか確認  
  http://アドレス:1080  


# よく使うコマンド  
- 起動停止  
  コンテナビルド、起動  
  $ docker-compose up -d  
  
  コンテナ停止、削除  
  $ docker-compose down    
- 初期化  
  コンテナ一掃    
  $ docker rm $(docker ps -aq) --force  

  image削除  
  $ docker rmi -f  $(docker images -q)  

  dockerの管理データを削除  
  .dataの削除  
  
 - コンテナに入る  
  docker exec -it コンテナ名 bash  
   
# phpmyadminに接続できない時  
1. docker exec -it コンテナ名 bash でmysqlのコンテナに入り
mysqlにログインできるか試す。  

2. ERROR 2002 (HY000)が返ってきたら  
mysql -h IPアドレス -P 3306 -u root -p

3. 表示確認  
http://IPアドレス:4040/ 

#その他  
phpmyadminはサーバー名空白でもログイン出来ました。
