# -*- encoding: utf-8 -*-
require 'sendgrid_ruby'
require 'sendgrid_ruby/version'
require 'sendgrid_ruby/email'
require 'dotenv'

config = Dotenv.load
sendgrid_username = ENV["SENDGRID_USERNAME"]
sendgrid_password = ENV["SENDGRID_PASSWORD"]
from = ENV["FROM"]
tos = ENV["TOS"].split(',')

email = SendgridRuby::Email.new
email.set_tos(tos)
.set_from(from)
.set_from_name("送信者名")
.set_subject("[sendgrid-ruby-example] フクロウのお名前はfullnameさん")
.set_text("familyname さんは何をしていますか？\r\n 彼はplaceにいます。")
.set_html("<strong> familyname さんは何をしていますか？</strong><br />彼はplaceにいます。")
.add_substitution("fullname", ["田中 太郎", "佐藤 次郎", "鈴木 三郎"])
.add_substitution("familyname", ["田中", "佐藤", "鈴木"])
.add_substitution("place", ["office", "home", "office"])
.add_section('office', '中野')
.add_section('home', '目黒')
.add_category('category1')
.add_header('X-Sent-Using', 'SendGrid-API')
.add_attachment('gif.gif', 'owl.gif')

sendgrid = SendgridRuby::Sendgrid.new(sendgrid_username, sendgrid_password)
#sendgrid.debug_output = true # remove comment if you need to see the request
response = sendgrid.send(email)
puts response
