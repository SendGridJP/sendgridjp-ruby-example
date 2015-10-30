# -*- encoding: utf-8 -*-
require 'sendgrid-ruby'
require 'dotenv'

Dotenv.load

api_key = ENV['API_KEY']
from = ENV['FROM']
tos = ENV['TOS'].split(',')


client = SendGrid::Client.new do |c|
  c.api_key  = api_key
end

header = Smtpapi::Header.new
header.add_to(tos)
  .add_substitution('fullname', ['田中 太郎', '佐藤 次郎', '鈴木 三郎'])
  .add_substitution('familyname', ['田中', '佐藤', '鈴木'])
  .add_substitution('place', ['office', 'home', 'office'])
  .add_section('office', '中野')
  .add_section('home', '目黒')
  .add_category('category1')

mail = SendGrid::Mail.new do |m|
  m.to = from   # dummy address
  m.from = from
  m.from_name = '送信者名'
  m.subject = '[sendgrid-ruby-example] フクロウのお名前はfullnameさん'
  m.text = "familyname さんは何をしていますか？\r\n 彼はplaceにいます。"
  m.html = '<strong> familyname さんは何をしていますか？</strong><br />彼はplaceにいます。'
  m.smtpapi = header
  m.add_attachment('gif.gif', 'owl.gif')
end

puts client.send(mail).inspect
