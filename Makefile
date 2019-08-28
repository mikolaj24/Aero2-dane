#obraz.jpg = obraz testowy

test:
	mkdir -p backup
	./darknet detect cfg/kapec.cfg kapec.wagi ./obraz.jpg

nauka:
	mkdir -p backup
	./darknet detector train cfg/kapec.data cfg/kapec.cfg kapec.wagi

#abu dodać dane trzeba wrzucić pliki graficzne i txt
#uruchomić skrypt w ruby

.PHONY: clean

#clean:
#	rm -rf

