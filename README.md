# sendgridjp-ruby-example
========================

This is an example of using the [sendgrid-ruby gem](https://github.com/sendgridjp/sendgrid-ruby).

## Usage

```bash
git clone http://github.com/sendgridjp/sendgridjp-ruby-example.git
cd sendgridjp-ruby-example
cp config.yml.example config.yml
# change the values in config.yml
bundle install
ruby -f sendgrid-ruby-example.php
```

## Change the values in config.yml
config.yml is here:

```bash
SENDGRID:
  SENDGRID_USERNAME: your_username
  SENDGRID_PASSWORD: your_password
  TOS: you@youremail.com,friend1@friendemail.com,friend2@friendemail.com
  FROM: you@youremail.com
```
SENDGRID_USERNAME is the username of SendGrid.
SENDGRID_PASSWORD is the password of SendGrid.
TOS: Therecipient list that is comma seperated.
FROM: From address.


========================
 本コードは[sendgrid-ruby gem](https://github.com/sendgridjp/sendgrid-ruby)の利用サンプルです。

## 使い方

```bash
git clone http://github.com/sendgridjp/sendgridjp-ruby-example.git
cd sendgridjp-ruby-example
cp config.yml.example config.yml
# config.ymlファイルを編集してください
bundle install
ruby -f sendgrid-ruby-example.php
```

## config.ymlファイルの編集
config.ymlファイルは以下のような内容になっています。

```bash
SENDGRID:
  SENDGRID_USERNAME: your_username
  SENDGRID_PASSWORD: your_password
  TOS: you@youremail.com,friend1@friendemail.com,friend2@friendemail.com
  FROM: you@youremail.com
```
SENDGRID_USERNAME:SendGridのユーザ名を指定してください。  
SENDGRID_PASSWORD:SendGridのパスワードを指定してください。  
TOS:宛先をカンマ区切りで指定してください。  
FROM:送信元アドレスを指定してください。  


