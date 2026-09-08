# Используем официальный образ n8n от разработчиков
FROM docker.n8n.io/n8nio/n8n:latest

# Устанавливаем необходимые пакеты ОС, если они нужны вашим нодам (например, python3 для Execute Command)
# RUN apk add --no-cache python3 py3-pip

# Копируем ваши локальные workflows, credentials и nodes при необходимости
# COPY data /data

# Порт, который слушает n8n
EXPOSE 5678

# Команда запуска наследуется из базового образа, ее можно переопределить в amvera.yml
CMD ["n8n", "start"]
