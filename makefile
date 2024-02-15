install: src/pcf.so

src/pcf.so: pcf.c
	gcc -Ofast -fPIC -shared -I/opt/homebrew/Cellar/python@3.11/3.11.5/Frameworks/Python.framework/Versions/3.11/include/python3.11 pcf.c -L /opt/homebrew/Cellar/python@3.11/3.11.5/Frameworks/Python.framework/Versions/3.11/lib -lpython3.11 -o src/pcf.so
clean:
	rm -f src/pcf.so src/*.pyc
