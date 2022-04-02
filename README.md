## VIM Config

Repo yang berisi .vimrc, file setting untuk Vim yang saya pakai untuk kerjaan front-end.

### Prasyarat

Pertama, kalian mesti install **Node.js** dan **Yarn** dulu. Nodejs dan Yarn ini nantinya bakal dipakai untuk keperluan saat install plugin Vim. System operasi yang saya gunakan di sini adalah Linux (Ubuntu) & MacOS. Khusus untuk MacOS saya menggunakan ```brew``` sebagai package manager. 

### Install Package Yang Diperlukan

Yaitu ```fzf```, ```ripgrep``` dan ```vim-plug```

#### Install ```fzf``` (Fuzzy Finder)

##### Ubuntu
```
sudo apt install fzf
```

##### MacOS
```
brew install fzf
```

#### Install ```ripgrep```

##### Ubuntu
```
sudo apt install ripgrep
```

##### MacOS
```
brew install ripgrep
```

#### Install ```vim-plug```

##### Ubuntu & MacOS
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Setup VIM

Selanjutnya, buka vim dengan jalankan perintah `vim`, lalu jalankan perintah ```:PlugInstall``` tunggu sampai plugin terinstall semua. Lalu restart Vim.

Selesai.

### Custom Keymap (shortcut)

| Keymap  | Description |
| ------------- | ------------- |
| ```ctrl+p``` | untuk mencari file di dalam folder kerja |
| ```ctrl+f``` | untuk mencari text di semua file |
| ```ctrl+g``` | untuk mencari file di dalam 1 git repository |
| ```\\+t``` | membuka terminal |
| ```\+r``` | membuka NERDTree dan menunjuk ke lokasi file yang dibuka |
| ```]b``` | pindah ke buffer selanjutnya |
| ```[b``` | pindah ke buffer sebelumnya |
| ```ctrl+b``` | tampilkan semua buffer |
| ```]t``` | pindah ke tab selanjutnya |
| ```[t``` | pindah ke tab sebelumnya |




