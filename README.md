# 説明
---
- 出来る事  
ubuntuにapach2, php8.0, mysql8.0, phpmyadminの環境ができます。  
※　Lalavelを使用する場合はhtml内でcloneして、htmlの権限を変更する必要あります。　　
- 前提条件   
ubuntuがインストール済みであること。   
---
# ubuntu-docker構築手順  
  1. システムログイン後ユーザー変更  
  	$ sudo su -  
  1. gitインストール  
  $ apt-get install git  
  1. キーペア作成  
  ssh-keygen  
  1. /home/ユーザー/でこのリポジトリをclone  
  $ git clone リポジトリurl    
   1. ./ubuntu-dockerへ移動  
   $ cd ./ubuntu-docker  
  1. **.gitを削除（dockerのビルドで余計な変更履歴が残るためここで管理下から外しておく）**  
   $ rm -rf .git    

   1. docker-compose.ymlの書き換え  
   $ vim ./docker-compose.yml  
   1. スクリプト実行 ※Ubuntuのみ  
   $ ./autosetup.sh
   1. webにアクセスしてhtml/index.htmlが見えているか確認  
   http://アドレス:1080  
   ---


   # よく使うコマンド   
   - 起動停止  
  コンテナビルド、起動  
  $ docker compose up -d  
    
- 起動コンテナ確認  
  $ docker compose ps
  
- システム確認  
  $ docker system df
  
- コンテナ停止、削除  
  $ docker compose down    
- コンテナ一掃    
  $ docker rm $(docker ps -aq) --force  

- image削除  
  $ docker rmi -f  $(docker images -q)  
  
- volum一括削除  
  $ docker volume prune

- キャッシュクリア  
  $ docker builder prune

- dockerの管理データを削除  
  .dataの削除  
  
- イメージ・ボリューム・コンテナ・ネットワーク全消し  
  docker system prune
  
- コンテナに入る  
  $ docker exec -it コンテナ名 bash  
  $ docker exec -it コンテナ名 sh

- 全てのimageをexport

  $ docker save $(docker images --format "{{.Repository}}:{{.Tag}}") > dockerimages.tar

- imageをimport

  $ docker load < dockerimages.tar
  
  ---

# phpmyadminに接続できない時  

1. docker exec -it コンテナ名 bash でmysqlのコンテナに入り
mysqlにログインできるか試す。  

2. ERROR 2002 (HY000)が返ってきたら  
mysql -h IPアドレス -P 3306 -u root -p

3. 表示確認  
http://IPアドレス:4040/ 

# その他  
  - phpmyadminはサーバー名空白でもログイン出来ました。
