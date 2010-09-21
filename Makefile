BINDIR	=${HOME}/bin

all:	cl-timestamp.zsh

install: cl-timestamp.zsh
	install -d ${BINDIR}
	install -c cl-timestamp.zsh ${BINDIR}/cl-timestamp

uninstall:
	${RM} ${BINDIR}/cl-timestamp
