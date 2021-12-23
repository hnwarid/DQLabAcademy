# Menulis ke file hello.txt #sengaja di-rename biar hello.txt tidak di-overwrite
file = open("hello2.txt", "w")
file.write("Sekarang kita belajar menulis dengan menggunakan Python")
file.write("Menulis konten file dengan mode w (write).")
file.close()