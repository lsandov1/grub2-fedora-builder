Fedora-39 container image with packages and tools to build grub2

Usage

```
make
docker run -it grub2-fedora-buider
../../build.sh  --configure --platform=efi --arch=x86_64  --no-werror --hostutils |& tee build.log
ll
```

