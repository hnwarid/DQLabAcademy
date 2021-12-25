# Buat fungsi penjumlahan deret Fibonacci
def calculate_sum(n):
    if n <= 0:
        return 0
    fibo = [0] * (n+1)
    fibo[1] = 1
    # Initialisasi hasil ke dalam variabel sm
    sm = fibo[0] + fibo[1]
    # Tambahkan suku-suku berikutnya
    print(fibo)
    print(sm)
    for x in range(2, n+1):
        fibo[x] = fibo[x-2] + fibo[x-1]
        sm += fibo[x]
        print(fibo)
        print(sm)
    return sm


# Evaluasi hasil deret untuk n = 7
print(calculate_sum(7))
