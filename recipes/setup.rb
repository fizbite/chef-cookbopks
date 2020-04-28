package 'tree' do
  action :install
end

package 'emacs' do
  action :install
end

package 'ntp' do
  action :install
end

file '/etc/motd' do
  content 'Proprety of Alex Ghrasim'
  owner 'root'
  group 'root'
end
