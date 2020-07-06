#language: ru
@tree
@Positive


Функционал: проверка при проведении связки документов SO - SI

Как разработчик
Я хочу добавить функционал по добавлению товара в документы по штрих-коду
Для работы с товаром


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: _29700101 preparation
	* Создание клиента
		И я открываю навигационную ссылку 'e1cib/list/Catalog.Partners'
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'Foxred'
		И я изменяю флаг 'Vendor'
		И я изменяю флаг 'Customer'
		И я нажимаю кнопку выбора у поля "Manager segment"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Region 2'    |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save'
		И В текущем окне я нажимаю кнопку командного интерфейса 'Partner segments content'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля "Segment"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Retail'      |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
		И В текущем окне я нажимаю кнопку командного интерфейса 'Company'
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'Company Foxred'
		И я нажимаю кнопку выбора у поля "Country"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Turkey'      |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
		И В текущем окне я нажимаю кнопку командного интерфейса 'Main'
		И я нажимаю на кнопку 'Save and close'
	* Создание SO
		Когда создаю тестовый SO для VerificationPosting
	* Изменение номера SO на 2970
		И я перехожу к закладке "Other"
		И в поле 'Number' я ввожу текст '2970'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'Yes'
		И в поле 'Number' я ввожу текст '2970'
		И я нажимаю на кнопку 'Post'
		И я закрыл все окна клиентского приложения
		

Сценарий: _29700102 проверка при проведении связки документов SO - SI - SC в штуках
	* Выбор заказа 2970
		И я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
		И в таблице "List" я перехожу к строке:
			| 'Number' | 'Partner' |
			| '2 970'  | 'Foxred'  |
		И в таблице "List" я выбираю текущую строку
	* Создание SI based on SO
		И я нажимаю на кнопку 'Sales invoice'
		И таблица "ItemList" содержит строки:
			| 'Item'  | 'Item key' | 'Q'      | 'Unit' | 'Store'    | 'Sales order'        |
			| 'Dress' | 'L/Green'  | '20,000' | 'pcs'  | 'Store 02' | 'Sales order 2 970*' |
			| 'Dress' | 'M/White'  | '8,000'  | 'pcs'  | 'Store 02' | 'Sales order 2 970*' |
		* Проверка запрета проведения SI на количество больше чем указано в заказе
			* Изменение кол-ва по второй строке на 12
				И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' |
				| 'Dress' | 'M/White'  |
				И в таблице "ItemList" я выбираю текущую строку
				И в таблице "ItemList" в поле 'Q' я ввожу текст '12,000'
				И в таблице "ItemList" я завершаю редактирование строки
			* Проверка запрета проведения
				И я нажимаю на кнопку 'Post'
				Тогда открылось окно '1C:Enterprise'
				И я нажимаю на кнопку 'OK'
				Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [1] [Dress M/White] Ordered remains: 8 pcs Required: 12 pcs Lacks: 4 pcs" в течение 20 секунд
			* Изменение кол-ва на первоначальное значение
				И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' |
				| 'Dress' | 'M/White'  |
				И в таблице "ItemList" я выбираю текущую строку
				И в таблице "ItemList" в поле 'Q' я ввожу текст '8,000'
				И в таблице "ItemList" я завершаю редактирование строки
		* Проверка запрета проведения SI на количество больше чем указано в заказе (копирование строки)	
			* Копирование второй строки
				И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' | 'Q'     |
				| 'Dress' | 'M/White'  | '8,000' |
				И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListContextMenuCopy'
			* Проверка запрета проведения
				И я нажимаю на кнопку 'Post'
				Тогда открылось окно '1C:Enterprise'
				И я нажимаю на кнопку 'OK'
				Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [1,3] [Dress M/White] Ordered remains: 8 pcs Required: 16 pcs Lacks: 8 pcs" в течение 20 секунд
			* Удаление добавленной строки
				И в таблице "ItemList" я перехожу к строке:
					| 'Item'  | 'Item key' | 'Q'     |
					| 'Dress' | 'M/White'  | '8,000' |
				И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
				И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListContextMenuDelete'
		* Добавление в SI строки сверх заказа и проверка проведения
			И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
			И в таблице "List" я перехожу к строке:
				| 'Description' |
				| 'Trousers'    |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItemKey"
			И в таблице "List" я перехожу к строке:
				| 'Item'     | 'Item key'  |
				| 'Trousers' | '38/Yellow' |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Создание SI на закрывающее количество по заказу
			* Удаление добавленной строки
				И в таблице "ItemList" я перехожу к строке:
					| 'Item'     | 'Item key'  |
					| 'Trousers' | '38/Yellow' |
				И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
				И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListContextMenuDelete'
				И я нажимаю на кнопку 'Post'
			* Изменение номера SO на 2970
				И я перехожу к закладке "Other"
				И в поле 'Number' я ввожу текст '2970'
				Тогда открылось окно '1C:Enterprise'
				И я нажимаю на кнопку 'Yes'
				И в поле 'Number' я ввожу текст '2970'
				И я нажимаю на кнопку 'Post and close'
			И я закрыл все окна клиентского приложения
	

Сценарий: _29700103 проверка при проведении связки документов SO - SI - SC в штуках (2-я часть)
	* Проверка распроведения SO при созданном SI
		И я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		И в таблице "List" я перехожу к строке:
		| 'Number' | 'Partner' |
		| '2 970'  | 'Foxred'  |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Clear posting'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'OK'
		Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [1] [Dress M/White] Invoiced remains: 8 pcs Required: 0 pcs Lacks: 8 pcs" в течение 20 секунд
		Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [2] [Dress L/Green] Invoiced remains: 20 pcs Required: 0 pcs Lacks: 20 pcs" в течение 20 секунд
	* Проверка изменения количества в SO при при созданном SI (в SI больше чем в SO)
		* Изменение кол-ва во второй строке на 19
			И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key' | 'Q'      |
			| 'Dress' | 'L/Green'  | '20,000' |
			И в таблице "ItemList" я активизирую поле "Q"
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" в поле 'Q' я ввожу текст '19,000'
		* Проверка запрета проведения
			И я нажимаю на кнопку 'Post'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'OK'
			Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [2] [Dress L/Green] Invoiced remains: 20 pcs Required: 19 pcs Lacks: 1 pcs" в течение 20 секунд
	* Проверка изменения количества в SO при созданном SI (в SI меньше чем в SO)
		* Изменение кол-ва во второй строке на 21
			И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key' | 'Q'      |
			| 'Dress' | 'L/Green'  | '19,000' |
			И в таблице "ItemList" я активизирую поле "Q"
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" в поле 'Q' я ввожу текст '21,000'
			И я нажимаю на кнопку 'Post'
	* Проверка проведения SO при удалении строки при созданном SI (в SI эта строка есть)
		* Удаление второй строки
			И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key' | 'Q'      |
			| 'Dress' | 'L/Green'  | '21,000' |
			И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListContextMenuDelete'
		* Проверка запрета проведения 
			И я нажимаю на кнопку 'Post'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'OK'
			Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [] [Dress L/Green] Invoiced remains: 20 pcs Required: 0 pcs Lacks: 20 pcs" в течение 20 секунд
	* Проверка добавления в SO строки которая была удалена и которая есть в проведенном Sales invoice 
		И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Dress'       |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле "Item key"
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item key"
		И в таблице "List" я перехожу к строке:
			| 'Item'  | 'Item key' |
			| 'Dress' | 'L/Green'  |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" в поле 'Q' я ввожу текст '20,000'
		И в таблице "ItemList" я завершаю редактирование строки
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* create SI на ещё одну добавленную строку
		* Добавление строки в SO и его проведение
			И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
			И в таблице "List" я перехожу к строке:
				| 'Description' |
				| 'Trousers'    |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItemKey"
			И в таблице "List" я перехожу к строке:
				| 'Item'     | 'Item key'  |
				| 'Trousers' | '38/Yellow' |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Создание SI на добавленную строку
			И я нажимаю на кнопку 'Sales invoice'
			# temporarily
			И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key' | 'Q'      |
			| 'Dress' | 'L/Green'  | '20,000' |
			И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListContextMenuDelete'
			# temporarily
			И таблица "ItemList" содержит строки:
			| 'Item'     | 'Item key'   |
			| 'Trousers' | '38/Yellow'  |
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
	* Проверка запрета проведения SI в случае добавления в него строки (путем копирования) из заказа на которую уже был создан SI (заказ по строке указан)
		И в таблице "ItemList" я активизирую поле "Item key"
		И в таблице "ItemList" я нажимаю на кнопку 'Copy'
		И в таблице "ItemList" я завершаю редактирование строки
		И в таблице "ItemList" я перехожу к строке:
			| '#' | 'Item'     | 'Item key'  |
			| '2' | 'Trousers' | '38/Yellow' |
		И в таблице "ItemList" я активизирую поле "Item"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Dress'       |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item key"
		И в таблице "List" я перехожу к строке:
			| 'Item'  | 'Item key' |
			| 'Dress' | 'L/Green'  |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" в поле 'Q' я ввожу текст '20,000'
		И в таблице "ItemList" я завершаю редактирование строки
		И я нажимаю на кнопку 'Post'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'OK'
		Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [2] [Dress L/Green] Ordered remains: 0 pcs Required: 20 pcs Lacks: 20 pcs" в течение 20 секунд
	* Проверка проведения SI в случае добавления в него строки не по заказу
		И в таблице "ItemList" я перехожу к строке:
		| '#' | 'Item'  | 'Item key' |
		| '2' | 'Dress' | 'L/Green'  |
		И в таблице "ItemList" я нажимаю на кнопку 'Delete'
		И в таблице "ItemList" я нажимаю на кнопку 'Add'
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Dress'       |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле "Item key"
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item key"
		И в таблице "List" я перехожу к строке:
			| 'Item'  | 'Item key' |
			| 'Dress' | 'L/Green'  |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
		И Я закрыл все окна клиентского приложения
	* create Shipment confirmation на количество больше чем указано в инвойсе
		* Выбор созданного SI (2970)
			И я открываю навигационную ссылку 'e1cib/list/Document.SalesInvoice'
			И в таблице "List" я перехожу к строке:
			| 'Number' | 'Partner' |
			| '2 970'  | 'Foxred'  |
		* Создание SC
			И я нажимаю на кнопку с именем 'FormDocumentShipmentConfirmationGenerateShipmentConfirmation'
			И     таблица "ItemList" содержит строки:
			| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Shipment basis'       |
			| 'Dress' | '8,000'    | 'M/White'  | 'pcs'  | 'Store 02' | 'Sales invoice 2 970*' |
			| 'Dress' | '20,000'   | 'L/Green'  | 'pcs'  | 'Store 02' | 'Sales invoice 2 970*' |
		* Изменение номера и проведение SC
			И я перехожу к закладке "Other"
			И в поле 'Number' я ввожу текст '0'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'Yes'
			И в поле 'Number' я ввожу текст '2 970'
			И я нажимаю на кнопку 'Post'
		* Изменение количество на больше чем в SI
			И я перехожу к закладке "Items"
			И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key' |
			| 'Dress' | 'L/Green'  |
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" в поле 'Quantity' я ввожу текст '22,000'
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'OK'
			Дано В последнем сообщении  TestClient есть строка по шаблону "* [Dress L/Green] Invoiced remains: 20 pcs Required: 22 pcs Lacks: 2 pcs"
		* Изменение количества на меньше чем указано в SI и попытка проведения
			И я перехожу к закладке "Items"
			И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key' |
			| 'Dress' | 'L/Green'  |
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" в поле 'Quantity' я ввожу текст '19,000'
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Добавление строки которой нет в SI и попытка проведения
			И я нажимаю на кнопку 'Add'
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item"
			И в таблице "List" я перехожу к строке:
				| 'Description' |
				| 'Boots'       |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я активизирую поле "Item key"
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Item key"
			И в таблице "List" я перехожу к строке:
				| 'Item'  | 'Item key'  |
				| 'Boots' | 'Boots/S-8' |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я активизирую поле "Quantity"
			И в таблице "ItemList" в поле 'Quantity' я ввожу текст '2,000'
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Копирование строки которая есть в заказе и попытка проведения
			И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' |
				| 'Dress' | 'L/Green'  |
			И я нажимаю на кнопку с именем "ItemListContextMenuCopy"
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'OK'
			Дано В последнем сообщении TestClient есть строка по шаблону "* [Dress L/Green] Invoiced remains: 20 pcs Required: 38 pcs Lacks: 18 pcs"
		* Очистка документа-основания у скопированной строки и попытка проведения
			И в таблице "ItemList" я перехожу к последней строке
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" я нажимаю кнопку очистить у поля "Shipment basis"
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Удаление строки по которой есть SI и попытка проведения
			И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' |
				| 'Dress' | 'M/White'  |
			И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListContextMenuDelete'
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Create one more SC на остаток по SI
			И я открываю навигационную ссылку 'e1cib/list/Document.SalesInvoice'
			И в таблице "List" я перехожу к строке:
				| 'Number' | 'Partner' |
				| '2 970'  | 'Foxred'  |
			И я нажимаю на кнопку с именем 'FormDocumentShipmentConfirmationGenerateShipmentConfirmation'
			И     таблица "ItemList" содержит строки:
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Shipment basis'       |
				| 'Dress' | '8,000'    | 'M/White'  | 'pcs'  | 'Store 02' | 'Sales invoice 2 970*' |
				| 'Dress' | '1,000'    | 'L/Green'  | 'pcs'  | 'Store 02' | 'Sales invoice 2 970*' |
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
		* Изменение на количество которое больше чем остаток по SI (уже был создан SC) и попытка проведения
			И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' |
				| 'Dress' | 'M/White'  |
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" в поле 'Quantity' я ввожу текст '9,000'
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'OK'
			Дано В последнем сообщении TestClient есть строка по шаблону "* [Dress M/White] Invoiced remains: 8 pcs Required: 9 pcs Lacks: 1 pcs"
		* Изменение на количество которое меньше чем остаток по SI (уже был создан SC) и попытка проведения
			И в таблице "ItemList" я перехожу к строке:
				| 'Item'  | 'Item key' | 'Quantity' |
				| 'Dress' | 'M/White'  | '9,000'    |
			И в таблице "ItemList" я выбираю текущую строку
			И в таблице "ItemList" в поле 'Quantity' я ввожу текст '7,000'
			И в таблице "ItemList" я завершаю редактирование строки
			И я нажимаю на кнопку 'Post'
			Тогда в окне сообщений пользователю нет сообщений
			И я закрыл все окна клиентского приложения
		* Проверка невозможности распроведения SI при созданном SC
			И я открываю навигационную ссылку 'e1cib/list/Document.SalesInvoice'
			И в таблице "List" я перехожу к строке:
				| 'Number' | 'Partner' |
				| '2 970'  | 'Foxred'  |
			И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuUndoPosting'
			Тогда открылось окно '1C:Enterprise'
			И я нажимаю на кнопку 'OK'
			# Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [1] [Dress M/White] Shipped remains: 1 pcs Required: 8 pcs Lacks: 7 pcs" в течение 20 секунд
			Дано В последнем сообщении  TestClient есть строка по шаблону "* [Dress L/Green] Shipped remains: 20 pcs Required: 0 pcs Lacks: 20 pcs"
			И я закрыл все окна клиентского приложения




Сценарий: _29700104 проверка при проведении связки документов SO - SI - SC в разных единицах измерения
	* Создание SO
		Когда создаю тестовый SO для VerificationPosting по упаковкам
	* Изменение номера SO на 2971
		И я перехожу к закладке "Other"
		И в поле 'Number' я ввожу текст '2971'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'Yes'
		И в поле 'Number' я ввожу текст '2971'
		И я нажимаю на кнопку 'Post'
		И я закрыл все окна клиентского приложения
	* Создание SI
		* Выбор заказа 2970
			И я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
			И в таблице "List" я перехожу к строке:
				| 'Number' | 'Partner' |
				| '2 971'  | 'Foxred'  |
			И в таблице "List" я выбираю текущую строку
		* Создание SI based on SO
			И я нажимаю на кнопку 'Sales invoice'
			И таблица "ItemList" содержит строки:
			| 'Item'  | 'Item key'  | 'Q'      | 'Unit'           |
			| 'Dress' | 'M/White'   | '15,000' | 'pcs'            |
			| 'Boots' | 'Boots/S-8' | '50,000' | 'pcs'            |
			| 'Boots' | 'Boots/S-8' | '2,000'  | 'Boots (12 pcs)' |
			И я нажимаю на кнопку 'Post'
	* Изменение в SI количества между упаковками и штуками и проверка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      | 'Unit' |
		| 'Boots' | 'Boots/S-8' | '50,000' | 'pcs'  |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '38,000'
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'     | 'Unit'           |
		| 'Boots' | 'Boots/S-8' | '2,000' | 'Boots (12 pcs)' |
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '3,000'
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* Изменение в SI количества по обуви в большую сторону в штуках и попытка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      | 'Unit' |
		| 'Boots' | 'Boots/S-8' | '38,000' | 'pcs'  |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '51,000'
		И я нажимаю на кнопку 'Post'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'OK'
		Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [2,3] [Boots Boots/S-8] Ordered remains: 74 pcs Required: 87 pcs Lacks: 13 pcs" в течение 20 секунд
	* Изменение в SI количества по обуви в меньшую сторону в упаковках и попытка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      |
		| 'Boots' | 'Boots/S-8' | '3,000' |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '1,000'
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* Изменение в SI количества по обуви в большую сторону в упаковках и попытка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      |
		| 'Boots' | 'Boots/S-8' | '1,000' |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '4,000'
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      |
		| 'Boots' | 'Boots/S-8' | '51,000' |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '46,000'
		И я нажимаю на кнопку 'Post'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'OK'
		Затем я жду, что в сообщениях пользователю будет подстрока "Line No. [2,3] [Boots Boots/S-8] Ordered remains: 74 pcs Required: 94 pcs Lacks: 20 pcs" в течение 20 секунд
	* Изменение в SI количества по обуви на то которое в SO
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      |
		| 'Boots' | 'Boots/S-8' | '4,000' |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '2,000'
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Q'      |
		| 'Boots' | 'Boots/S-8' | '46,000' |
		И в таблице "ItemList" я активизирую поле "Q"
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Q' я ввожу текст '50,000'
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* Создание SC на количество которое в SI и проверка проведения
		И я нажимаю на кнопку 'Shipment confirmation'
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* Изменение количества в рамках SI и проверка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Quantity' |
		| 'Boots' | 'Boots/S-8' | '24,000'   |
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Quantity' я ввожу текст '22,000'
		И в таблице "ItemList" я завершаю редактирование строки
		И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key'  | 'Quantity' | 'Unit' |
			| 'Boots' | 'Boots/S-8' | '50,000'   | 'pcs'  |
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Quantity' я ввожу текст '52,000'
		И в таблице "ItemList" я завершаю редактирование строки
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* Указание упаковок и проверка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Quantity' |
		| 'Boots' | 'Boots/S-8' | '22,000'   |
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Quantity' я ввожу текст '2,000'
		И в таблице "ItemList" я активизирую поле "Unit"
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Unit"
		И в таблице "List" я перехожу к строке:
			| 'Description'    |
			| 'Boots (12 pcs)' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я завершаю редактирование строки
		И в таблице "ItemList" я перехожу к строке:
			| 'Item'  | 'Item key'  | 'Quantity' | 'Unit' |
			| 'Boots' | 'Boots/S-8' | '52,000'   | 'pcs'  |
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Quantity' я ввожу текст '50,000'
		И в таблице "ItemList" я завершаю редактирование строки
		И я нажимаю на кнопку 'Post'
		Тогда в окне сообщений пользователю нет сообщений
	* Указание упаковок больше чем в SI и проверка проведения
		И в таблице "ItemList" я перехожу к строке:
		| 'Item'  | 'Item key'  | 'Quantity' |
		| 'Boots' | 'Boots/S-8' | '2,000'   |
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" в поле 'Quantity' я ввожу текст '3,000'
		И я нажимаю на кнопку 'Post'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'OK'
		Дано В последнем сообщении  TestClient есть строка по шаблону "*[Boots Boots/S-8] Invoiced remains: 74 pcs Required: 86 pcs Lacks: 12 pcs"
		И я закрыл все окна клиентского приложения








		






		


	









			















