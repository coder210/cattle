nasm -o ./product/bootsect.bin ./boot/bootsect.asm

cd ./product

bximage -hd -mode="flat" -size=60 -q gnos-60.img


dd bs=512c count=1 if=bootsect.bin of=gnos-60.img


bochs -f bochsrc-gnos.txt