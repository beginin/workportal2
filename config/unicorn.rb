
root = "/home/loginout/workportal2"
working_directory root
pid "#{root}/tmp/pids/unicorn_loginout.pid"
stderr_path "#{root}/log/unicorn_loginout.log"
stdout_path "#{root}/log/unicorn_loginout.log"

listen "/tmp/unicorn.loginout.sock"
worker_processes 2
timeout 30

