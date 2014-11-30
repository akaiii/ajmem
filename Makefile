install:
	chmod +x adjust-mem
	chmod +x shedule
	chmod +x usage
	cp -rf {adjust-mem,shedule,usage} /bin

clean:
	rm -rf s.log
	rm -rf nohup.out
