# #!/bin/bash

# Авторизуемся для получения root прав
mkdir -p ~root/.ssh
cp ~vagrant/.ssh/auth* ~root/.ssh

# Устанавливаем необходимые пакеты
yum install -y mdadm smartmontools hdparm gdisk

# Обнуляем суперблоки на всякий случай
mdadm --zero-superblock --force /dev/sd{b,c,d,e,f}

# Создаем raid5
mdadm --create --verbose /dev/md0 -l 5 -n 4 /dev/sd{b,c,d,e}
