test:
	mkdir -p backup
	./darknet detect cfg/kapec.cfg kapec.wagi ./obraz.jpg

#Zakładamy, że plik kapec.wagi istnieje, jeśli to pierwsze uruchomienie
# to go nie będzie. Wtedy trzeba uruchomić bez ostatniego parametru
# a gdy się obliczy np. /backup to przenieść go pod tą nazwę.
#Abu dodać nowe dane trzeba wrzucić pliki graficzne .jpg i .txt do
# katalogu nauka lub train i uruchomić skrypt w ruby tworztxt.rb
nauka1:
	mkdir -p backup
	./darknet detector train cfg/kapec.data cfg/kapec.cfg

nauka:
	mkdir -p backup
	./darknet detector train cfg/kapec.data cfg/kapec.cfg kapec.wagi

.PHONY: clean
