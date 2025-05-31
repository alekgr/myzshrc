SRC=${CURDIR}/.zshrc
LINK=${HOME}/.zshrc
link:
	@ ln -s ${SRC} ${LINK}
unlink:
	@ rm ${LINK}
