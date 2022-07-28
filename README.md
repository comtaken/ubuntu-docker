# 説明  
- 出来ること  
Ubuntuにapach2, php8.0, mysql8.0, phpmyadminの環境ができます。<br>
※　Lalavelを使用する場合はhtml内でcloneして、htmlの権限を777にする必要あります。<br><br>
- 前提条件  
ubuntuがインストール済みであること。  
dockerとdockre-composerがインストール済みであること。  
gitがインストール済みであること。

# ubuntu-docker  
- 手順  
/home/ユーザー/でこのリポジトリをclone  
$ git clone リポジトリurl<br><br>
起動させる<br>
$ docker-compose up -d<br><br>
webにアクセスしてhtml/index.htmlが見えているか確認<br> 
http://アドレス:1080<br>


# よく使うコマンド  
- 起動停止  
  コンテナビルド、起動  
  $ docker-compose up -d  
    
- 起動コンテナ確認  
  $ docker-compose ps
  
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
  
# その他  
  - phpmyadminはサーバー名空白でもログイン出来ました。
