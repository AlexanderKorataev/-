# Базовый образ
FROM python:3.10

# Копируем requirements.txt в образ
COPY requirements.txt /app/requirements.txt

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r /app/requirements.txt

# Копируем все файлы из текущего каталога в образ
COPY . /app

# Устанавливаем рабочую директорию
WORKDIR /app

# Даем права на выполнение скрипта
RUN chmod +x ./flaskapp/st.sh

# Запускаем скрипт
CMD ["./flaskapp/st.sh"]
