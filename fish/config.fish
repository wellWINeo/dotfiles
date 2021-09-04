bass source /etc/profile

if not pidof ssh-agent > /dev/null
    eval (ssh-agent -c) > /dev/null
    ssh-add ~/.ssh/git_key 2> /dev/null
end

# variables
set -gx PATH $PATH /home/o__ni/go/bin
set -gx PATH $PATH /home/o__ni/.local/bin
set -gx GOBIN /home/o__ni/go/bin
