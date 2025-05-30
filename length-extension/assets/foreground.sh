{
  show_progress() {
    local delay=0.75
    local spinstr='|/-\'
    local i=0

    printf "Configuring"

    while ! [ -f "/tmp/.killercoda-finished" ]; do
      printf " [%c]  " "${spinstr:i++%${#spinstr}:1}"
      sleep "$delay"
      printf "\b\b\b\b\b\b"
    done
    
    printf "\r%*s\r" "$(tput cols)" ""
    rm -f /tmp/.killercoda-finished
  }

  wait_for_backend() {
    local timeout_duration=120
    if timeout "$timeout_duration" bash -c "$(declare -f show_progress); show_progress"; then
      printf "\r%*s\rConfigured\n" "$(tput cols)"
    else
      printf "\r%*s\r" "$(tput cols)" ""
      echo -e "Timeout (${timeout_duration}s): Configuring\nYou have two options:\n  (a) Try to reload this scenario or come back later.\n  (b) Go on. Most functions should work anyway."
    fi
  }

  clear
  wait_for_backend
  source /root/.environment
  PROMPT_COMMAND='history -d $((HISTCMD - 1)); unset PROMPT_COMMAND'
}