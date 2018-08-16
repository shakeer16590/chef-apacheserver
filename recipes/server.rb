# Installing and configuring Apache Web server
package 'httpd' do
	action :install
end
file '/var/www/html/index.html' do
	content 'Hello, World! \n'
end
service 'httpd' do
	action [ :start, :enable ]
end
