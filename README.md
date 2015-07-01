# sendgridjp-ruby-example

This is an example of using the [sendgrid-ruby gem](https://github.com/sendgrid/sendgrid-ruby).

## Usage

```bash
git clone http://github.com/sendgridjp/sendgridjp-ruby-example.git
cd sendgridjp-ruby-example
cp .env.example .env
# change the values in .env
bundle install
ruby sendgridjp-ruby-example.rb
```

## Change the values in .env
.env is here:

```bash
SENDGRID_USERNAME=your_username
SENDGRID_PASSWORD=your_password
TOS=you@youremail.com,friend1@friendemail.com,friend2@friendemail.com
FROM=you@youremail.com
```
SENDGRID_USERNAME is the username of SendGrid.  
SENDGRID_PASSWORD is the password of SendGrid.  
TOS: Therecipient list that is comma seperated.  
FROM: From address.  


========================
 本コードは[sendgrid-ruby gem](https://github.com/sendgrid/sendgrid-ruby)の利用サンプルです。

## 使い方

```bash
git clone http://github.com/sendgridjp/sendgridjp-ruby-example.git
cd sendgridjp-ruby-example
cp .env.example .env
# .envファイルを編集してください
bundle install
ruby sendgridjp-ruby-example.rb
```

## .envファイルの編集
.envファイルは以下のような内容になっています。

```bash
SENDGRID_USERNAME=your_username
SENDGRID_PASSWORD=your_password
TOS=you@youremail.com,friend1@friendemail.com,friend2@friendemail.com
FROM=you@youremail.com
```
SENDGRID_USERNAME:SendGridのユーザ名を指定してください。  
SENDGRID_PASSWORD:SendGridのパスワードを指定してください。  
TOS:宛先をカンマ区切りで指定してください。  
FROM:送信元アドレスを指定してください。  
