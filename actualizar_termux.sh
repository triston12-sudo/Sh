clear
echo "*********************************"
echo "* Bienvenido al Framework de Termux *"
echo "*********************************"
echo
echo "Seleccione una opción:"
echo "1. Actualizar Termux"
echo "2. Instalar paquetes específicos"
echo "3. Limpiar caché"
echo "4. Config. para actualisar cadavez que abra termux"
echo "5. Salir"
echo
read -p "Ingrese su opción: " opcion

case $opcion in
    1)
        echo "Actualizando Termux..."
        pkg update && pkg upgrade && pkg upgradable -y
        ;;
    2)
        echo "Instalando paquetes específicos..."
        pkg install python -y
        pkg install git -y
        pkg install curl -y
        ;;
    3)
        echo "Limpiando caché..."
        pkg clean
        ;;
     4)
        echo "configurar bash pkg. up. date y grade..."
        #!/bin/bash

# Command history tweaks:
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command_not_found_handle ];then

apt update && apt upgrade -y

# Add a custom motd message
echo "Welcome to Termux!"

echo "Docs:       https://termux.dev/docs"
echo "Donate:     https://termux.dev/donate"
echo "Community:  https://termux.dev/community"

echo ""
echo "Working with packages:"
echo ""
echo " - Search:  pkg search <query>"
echo " - Install: pkg install <package>"
echo " - Upgrade: pkg upgrade"
echo ""
echo "Subscribing to additional repositories:"
echo ""
echo " - Root:    pkg install root-repo"
echo " - X11:     pkg install x11-repo"
echo ""
echo "For fixing any repository issues,"
echo "try 'termux-change-repo' comand"


setterm -foreground blue
        echo "====================================="
setterm -foreground cyan
figlet -f big "termux"
setterm -foreground blue
        echo "====================================="
setterm -foreground white
	fi
	;;
    5)
        echo "Saliendo..."
        exit 0
        ;;
    *)
        echo "Opción no válida. Por favor, seleccione una opción del menú."
        ;;
esac
