NEWLINE=$'\n'
ARROW="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"
PROMPT='%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)$NEWLINE$ARROW'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


# add a new line
prompt_end() {
  #Adds the new line and ➜ as the start character.
  echo -n "\n";
}
