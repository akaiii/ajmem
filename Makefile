install:
	chmod +x adjust-mem
	chmod +x sleep_time
	cp -rf {adjust-mem,sleep_time} /bin

clean:
	rm -rf s.log
	rm -rf nohup.out
