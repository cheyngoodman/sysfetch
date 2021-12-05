#!/bin/bash
# // DISTRO //
if [[ "$os" = "Darwin" ]] ; then
	echo -ne "${CYAN}distro${NC} ~ $(sw_vers -productVersion) "
elif [[ ! -z  $distro ]] ; then
	[[ "$distro" = "Arch Linux" ]] ; btw="-(btw)"
	echo -ne "${CYAN}distro${NC} ~ $distro$btw \e \e \e \e "
else
	echo -ne "${CYAN}distro${NC} ~ not found \e \e \e \e "
fi
# // ARCH //
if [[ $(command -v uname) ]] ; then
        echo -e "${RED}arch${NC} ~ $arch"	
else
        echo -ne "\n"
fi
