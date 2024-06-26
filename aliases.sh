alias sus='systemctl suspend'
alias config='cd && cd .config/nvim && nvim && cd'
alias out='cd && clear'
alias nf='clear && fastfetch'
alias lear='clear'

als(){
  CUR_DIR=$PWD
  cd && nvim .bash_aliases && source .bash_profile && echo "Sourced with success" && cd $CUR_DIR
}

gitdoyourthing(){
  COMMIT_MSG="$1"
  if [ $# -lt 2 ]; then
    set -- "$2" "*"
  fi

  for (( i=2; i<=$#; i++ ))
  do 
    git add "${!i}"
    echo"Git add ${!i}"
  done

  git commit -m "$COMMIT_MSG" && git push
}
