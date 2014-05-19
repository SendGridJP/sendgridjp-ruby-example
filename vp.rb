# -*- encoding: utf-8 -*-
require 'sendgrid_ruby'
require 'sendgrid_ruby/version'
require 'sendgrid_ruby/email'
require 'yaml'

config = YAML.load_file("config.yml")
sendgrid_username = config["SENDGRID"]["SENDGRID_USERNAME"]
sendgrid_password = config["SENDGRID"]["SENDGRID_PASSWORD"]
from = config["SENDGRID"]["FROM"]
tos = config["SENDGRID"]["TOS"].split(',')

email = SendgridRuby::Email.new
email.set_tos(tos)
.set_from(from)
.set_from_name('awwa')
.set_subject("World")
.set_text("Hello")
#.add_attachment('20140112_152935.jpg', '20140112_152935.jpg')

sendgrid = SendgridRuby::Sendgrid.new(sendgrid_username, sendgrid_password)
#sendgrid.debug_output = true # remove comment if you need to see the request
response = sendgrid.send(email)
puts response
