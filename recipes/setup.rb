package 'tree' do
  action :install
end


package 'ntp' do
  action :install
end

file '/etc/motd' do
  content "Proprety of Alexandru Ghrasim
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  Memory: #{node['memory']['total']}
"
  owner 'root'
  group 'root'
  action :create
end


  

file '/var/www/html/index.html' do
  content "<h1> Fizbite </h1>
  <h2>IPADDRESS: #{node['ipaddress'] } </h2>
  <h2>HOSTNAME: #{node['hostname'] } </h2>
"
end



