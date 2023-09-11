#
# This is the default standard .login provided to csh users.
# They are expected to edit it to meet their own needs.
# Set the interrupt character to Ctrl-c and do clean backspacing.

if (-t 0) then
    stty intr '^C' echoe 
endif

# Set the TERM environment variable
eval `tset -s -Q`

# Run zsh
# Daniel Cleaver
# 2022-11-12
# if ("$SHELL" != "/bin/zsh") then
#     setenv SHELL "/bin/zsh"
#     exec /bin/zsh
# endif
