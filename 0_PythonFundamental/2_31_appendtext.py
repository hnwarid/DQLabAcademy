# Menulis ke file dengan mode append #sengaja menggunakan hello2.txt bukan hello.txt
file = open("hello2.txt", "a")
file.writelines([
"Sekarang kita belajar menulis dengan menggunakan Python",
"Menulis konten file dengan mode a (append)."
])
file.close()