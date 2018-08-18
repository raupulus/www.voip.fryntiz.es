.PHONY: all install d dep dependencias p perm permisos c conf configuraciones \
a apache s ssl cert certificado clean

all: install

install: dependencias permisos configuraciones apache certificado

d dep dependencias:
	./desplegar.sh -d

p perm permisos:
	./desplegar.sh -p

c conf configuraciones:
	./desplegar.sh -c

a apache:
	./desplegar.sh -a

s ssl cert certificado:
	./desplegar.sh -s -y

u update:
	./desplegar.sh -u

clean:
	echo ''
	#find 'tmp' -not -path 'runtime' -not -name ".gitkeep" -exec rm -Rf {} \; || echo ''
