# This is the default standard .cshrc provided to csh users.
# They are expected to edit it to meet their own needs.


if ( -o /bin/su ) then
    unset path
else
    set path = ( . )
endif 

set path=( $path /usr/bin /usr/sbin /sbin /usr/local/bin /usr/local/X11 )

#
# load in machine-specific settings
#

if ( -r /usr/site/etc/system.cshrc ) then
    source /usr/site/etc/system.cshrc
endif

if ($?prompt) then
    if ( -o /bin/su ) then
        #set prompt = "`hostname | sed 's/\..*//'`[\!]# "
        set prompt = '[%n@%m %c] '
    else
        #set prompt = "`hostname | sed 's/\..*//'`[\!]% "
        set prompt = '[%n@%m %c] '
    endif

    stty intr "^C" kill "^U" echoe
    setenv EDITOR /usr/bin/emacs
    umask 077
    set history = 100
    set filec
    alias h  history
    alias help apropos
    alias rm "rm -i"
    alias ls 'ls -C'
endif
