PREFIX=/opt
BINDIR	=${PREFIX}/bin

all:	cl-timestamp.zsh cl-timestamp.awk

install: cl-timestamp.zsh cl-timestamp.awk
	install -D cl-timestamp.zsh ${BINDIR}/cl-timestamp
	install -D cl-timestamp.awk ${BINDIR}/cl-timestamp.awk

uninstall:
	${RM} ${BINDIR}/cl-timestamp ${BINDIR}/cl-timestamp.awk
