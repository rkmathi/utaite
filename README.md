# Utaite

## Usage

Prepare `access.log`:

```txt
123.65.150.10 - - [23/Aug/2010:03:50:00 +0000] "POST /wordpress HTTP/1.1" 200 2 "http://www.example.com/wordpress3/wp-admin/post-new.php" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.25 Safari/534.3"
123.65.150.10 - - [23/Aug/2010:03:50:59 +0000] "POST /wordpress HTTP/1.1" 200 2 "http://www.example.com/wordpress3/wp-admin/post-new.php" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.25 Safari/534.3"
123.65.150.11 - - [23/Aug/2010:03:51:59 +0000] "POST /hoge HTTP/1.1" 200 2 "http://www.example.com/wordpress3/wp-admin/post-new.php" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.25 Safari/534.3"
123.65.150.12 - - [23/Aug/2010:03:54:59 +0000] "POST /wordpress HTTP/1.1" 200 2 "http://www.example.com/wordpress3/wp-admin/post-new.php" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.25 Safari/534.3"
123.65.150.13 - - [23/Aug/2010:03:58:59 +0000] "POST /hoge HTTP/1.1" 200 2 "http://www.example.com/wordpress3/wp-admin/post-new.php" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.25 Safari/534.3"
123.65.150.14 - - [23/Aug/2010:03:58:59 +0000] "POST /fuga HTTP/1.1" 200 2 "http://www.example.com/wordpress3/wp-admin/post-new.php" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.25 Safari/534.3"
```

Run:

```shell
$ cat access.log | utaite
```

Result:

```txt
 times | path
-------|-----
     3 | POST /wordpress
     2 | POST /hoge
     1 | POST /fuga
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

