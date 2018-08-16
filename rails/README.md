## setup

```
# ec2
$ ssh-keygen -t rsa -c

# mac
$ cat config/master.key | pbcopy

# ec2
$ mkdir /home/ec2-user/rails_basic/shared/config/
$ vi /home/ec2-user/rails_basic/shared/master.key

# mac
$ EDITOR=vim bundle exec bin/rails credentials:edit

db:
  host:     xxxxx
  username: xxxxx
  password: xxxxx

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
$ bundle exec cap production deploy
```


