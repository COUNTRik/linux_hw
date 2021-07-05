# **Создание RAID**

В файле Vagrantfile в секции `box.vm.provider` добавлены еще пять дисков по 250 мегабайт.
В секции `box.vm.provision` добавлен путь для загрузки скрипта *scripts/build_raid.sh*.
В файле *scripts/build_raid.sh* добавлены скрипты для создания RAID5 с комментариями.
