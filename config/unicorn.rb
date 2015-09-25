APP_PATH = "/var/www/wiki"

worker_processes 2
working_directory APP_PATH

listen "unix:/tmp/unicorn_wiki.sock", :backlog => 9090 #wiki服务器端口 9090

pid "/tmp/unicorn.pid"

stderr_path "/tmp/unicorn_wiki_err.log"
stdout_path "/tmp/unicorn_wiki_out.log"

preload_app true
check_client_connection false
