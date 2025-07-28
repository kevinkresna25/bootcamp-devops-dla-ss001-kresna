# Webserver Sederhana - Bootcamp DevOps DLA-SS001

Proyek ini adalah webserver sederhana yang dibuat sebagai bagian dari tugas minggu pertama Bootcamp DevOps DLA-SS001.

---

## 🚀 Deskripsi Proyek

Webserver ini dibuat menggunakan **Flask (Python)**, dan memiliki satu endpoint:

- `/hello` – menampilkan teks sederhana sebagai simulasi response API.

---

## 🗂️ Struktur Proyek

```
.
├── docs/
│   └── kasus-1-6.pdf
├── src/
│   └── app.py
├── requirements.txt
├── .gitignore
└── README.md
````

---

## 🛠️ Cara Menjalankan Proyek

### 1. Clone repositori ini
```bash
git clone https://github.com/kevinkresna25/bootcamp-devops-dla-ss001-kresna
cd bootcamp-devops-dla-ss001-kresna
````

### 2. Install dependensi (gunakan virtual environment jika perlu)

```bash
pip install -r requirements.txt
```

### 3. Jalankan server

```bash
python src/app.py
```

### 4. Akses di browser

```
http://localhost:5000/hello
```

---

## 🔍 Contoh Output

Jika berhasil, kamu akan melihat:

```
Halo dari kresna :)
```
