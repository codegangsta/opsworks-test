log "Adding fixture data for testing"

node[:deploy].each do |app, deploy|

  directory deploy[:deploy_to] do
    mode "0755"
    recursive true
    action :create
  end

  template "#{deploy[:deploy_to]}/main.go" do
    mode "0755"
    source "main.go.erb"
  end

end
