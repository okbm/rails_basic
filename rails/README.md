## setup

```
# ec2 ssh
$ ssh-keygen -t rsa
$ cat .ssh/id_rsa.pub # add github deploy key

# mac
$ cat config/master.key | pbcopy

# ec2
$ mkdir /home/ec2-user/rails_basic/shared/config/
$ vi /home/ec2-user/rails_basic/shared/config/master.key

# mac
$ EDITOR=vim bundle exec bin/rails credentials:edit

db:
  host:     xxxxx
  username: xxxxx
  password: xxxxx
deploy:
  server: ec2 adress

$ bundle exec cap production deploy --trace
```

```
# ec2
$ ssh aws
$ cd rails_app
$ bundle exec rake db:create RAILS_ENV=production
```

## deploy

```
$ bundle exec cap production deploy --dry-run
$ bundle exec cap production deploy
```

あとはroute53の設定等
