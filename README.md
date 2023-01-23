# YA-Route-shortening
E. Сокращение маршрута

Ограничение времени	1 секунда
Ограничение памяти	64Mb
Ввод	стандартный ввод или input.txt
Вывод	стандартный вывод или output.txt

Вам поручили дойти из точки А в точку Б.
Предыдущий путешественник по этому маршруту оставил вместо карты краткое описание маршрута с направлениями движения и дистанциями. Однако у него на пути были промежуточные точки, из-за чего в описании встречаются тупики. Вам очень хочется вовремя попасть в точку B и не тратить на тупики драгоценное время.
Ваша задача - убрать из маршрута тупики при их наличии. Также необходимо сократить одинаковые направления, если они идут друг за другом.
Маршрутом считается набор действий. Действие — направление движения и дистанция.
Тупиком считаются последовательные действия в строго противоположных направлениях движения. Например, если требуется пойти TOP 50 и следующим шагом BOTTOM 50, то это считается тупиком, и данные действия можно полностью сократить (тогда в выводе не должно быть этих строчек). Однако если дистанции не сокращаются полностью, то полностью сократить действия нельзя. Например, если требуется пойти TOP 50, и следующим шагом BOTTOM 40, то это можно сократить в TOP 10.
Тупиком не считается возвращение в точку маршрута по другой дороге. Например, если требуется пойти TOP 50, RIGHT 50, BOTTOM 50, LEFT 50, BOTTOM 10, то данные действия сократить до BOTTOM 10 нельзя.
Пример одинаковых направлений, идущих друг за другом — BOTTOM 50, BOTTOM 50. Это необходимо сократить в BOTTOM 100
Формат ввода

Изначальный маршрут.
В каждой строке действие. Действие — направление R и дистанция D (0 < D < 10000) в формате "НАПРАВЛЕНИЕ ДИСТАНЦИЯ". Между направлением и дистанцией пробел.
Количество строк N (0 < N < 1000).
Дистанции бывают только целыми числами.
Формат вывода

Обработанный маршрут — без тупиков и с сокращёнными одинаковыми направлениями, если они идут друг за другом.
В каждой строке - действие. Действие — направление R и дистанция D в формате "НАПРАВЛЕНИЕ ДИСТАНЦИЯ". Между направлением и дистанцией — пробел.
Дистанции бывают только целыми числами.
Пример 1

Ввод Скопировать ввод	Вывод Скопировать вывод
LEFT 10
TOP 50
BOTTOM 50
TOP 10
LEFT 10
TOP 10
Пример 2

Ввод Скопировать ввод	Вывод Скопировать вывод
TOP 40
RIGHT 10
LEFT 30
BOTTOM 40
TOP 40
LEFT 20
BOTTOM 40
Пример 3

Ввод Скопировать ввод	Вывод Скопировать вывод
TOP 42
LEFT 450
TOP 150
BOTTOM 150
RIGHT 450
LEFT 42
TOP 42
LEFT 42
Пример 4

Ввод Скопировать ввод	Вывод Скопировать вывод
TOP 50
RIGHT 50
BOTTOM 50
LEFT 50
BOTTOM 10
TOP 50
RIGHT 50
BOTTOM 50
LEFT 50
BOTTOM 10
Пример 5

Ввод Скопировать ввод	Вывод Скопировать вывод
TOP 100
TOP 100
TOP 200
Пример 6

Ввод Скопировать ввод	Вывод Скопировать вывод
TOP 100
TOP 100
BOTTOM 150
BOTTOM 150
BOTTOM 100
