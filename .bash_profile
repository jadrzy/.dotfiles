#
# ~/.bash_profile
#

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval "$(ssh-agent -s)"
	
	# key list (no password required)
	ssh-add ~/.ssh/github
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
