log "Setting up the golang-web::setup recipe"

node[:deploy].each do |app, deploy|

  execute "go build -o bin" do
    cwd deploy[:deploy_to]
  end

end
