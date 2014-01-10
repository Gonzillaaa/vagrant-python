PS1='\h:\w$ '

export PIP_RESPECT_VIRTUALENV=true

if [ -f /usr/local/bin/virtualenvwrapper_lazy.sh ]; then
    . /usr/local/bin/virtualenvwrapper_lazy.sh
fi

if [ -f ~/.django_bash_completion.sh ]; then
        source ~/.django_bash_completion.sh
fi

#Force django to load local settings
export DEV_MACHINE=True

alias py='python'
alias ipy='ipython'
alias mailserver='python -m smtpd -n -c DebuggingServer localhost:1025'

#django aliases
alias dshell='python manage.py shell'
alias dserver='python manage.py runserver 0.0.0.0:8000'
alias inspire='cd /vagrant/projects/inspire && workon inspire'
alias udacity='cd /vagrant/projects/udacity && workon udacity'

