# --- Auto-sugerencias (Texto en gris) ---
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8' # Color gris para la sugerencia
    ZSH_AUTOSUGGEST_STRATEGY=(history completion) # Sugerir por historial y autocompletado
fi

# --- Resaltado de sintaxis (Verde/Rojo) ---
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# --- Menú interactivo con TAB ---
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Ignorar mayúsculas
zstyle ':completion:*' menu select                       # Navegar opciones con flechas

# --- Atajos de teclado ---
bindkey '^[[C' forward-char        # Flecha Derecha: Acepta la sugerencia en gris
bindkey '^f' autosuggest-accept     # Ctrl + F: Acepta la sugerencia en gris

# Lanzar app y cerrar la terminal automáticamente
run() {
    setsid "$@" >/dev/null 2>&1 &
    kill -9 $PPID
}

# --- Configuración de colores y prompt limpio ---
autoload -U colors && colors

# Activar colores para el prompt
PROMPT='%B%F{cyan}%n@%m%f:%F{green}%~%f%b %# '

export PATH=$PATH:/home/jhunk_0401/.spicetify

# --- Lanzar Fastfetch con el estilo clásico de Neofetch (Arch Logo) ---
fastfetch -c neofetch

caelestia-update() {
    caelestia update && \
    (cd /home/jhunk_0401/.local/share/caelestia-aw && git pull && bash patch.sh)
}
alias autoremove='orphans=$(pacman -Qdtq); [ -n "$orphans" ] && sudo pacman -Rns $orphans || echo "No hay huérfanos de pacman"; command -v yay >/dev/null && yay -Yc; command -v paru >/dev/null && paru -c'
alias code="codium"
alias restart-caelestia='caelestia shell -k; sleep 1; caelestia shell -d'

# Created by `pipx` on 2026-10-06 21:20:28
export PATH="$PATH:/home/jhunk_0401/.local/bin"
alias update-caelestia-aw='paru -S aur/caelestia-shell aur/caelestia-cli --overwrite "*" --noconfirm && cd ~/.local/share/caelestia-aw && git pull && bash patch.sh'
export ANDROID_HOME=/opt/android-sdk
export ANDROID_HOME=/opt/android-sdk
