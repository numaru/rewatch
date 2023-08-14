build:
	west build -d build/screen -p auto -b stm32f746g_disco app/screen
	west build -d build/peripheral -p auto -b nrf52840dk_nrf52840 app/peripheral
	west build -d build/central -p auto -b nrf52840dk_nrf52840 app/central
	cat build/**/compile_commands.json | jq -s 'add' > build/compile_commands.json

clean:
	rm -rf build
	
renode:
	# renode setup.resc --console --disable-xwt
	renode setup.resc --console

.PHONY: build clean renode
