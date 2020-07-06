#language: ru
@tree
@Positive

Функционал: Check filling inпользовательских настроек

Как разработчик
Я хочу создать систему пользовательских настроек
Для удобства заполнения документов


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: _200001 заполнение пользовательских настроек по пользователю CI
	И я открываю навигационную ссылку 'e1cib/list/Catalog.Users'
	И в таблице "List" я перехожу к строке:
		| 'Login' |
		| 'CI'          |
	И в таблице "List" я выбираю текущую строку
	И в поле 'ENG' я ввожу текст 'CI'
	И в поле 'Interface localization code' я ввожу текст 'en'
	И я нажимаю на кнопку 'Save'
	И я нажимаю на кнопку 'Settings'
	* Заполнение пользовательских настроек для Sales order
		И в таблице "MetadataTree" я перехожу к строке:
		| 'Group name'  |
		| 'Sales order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Partner term'  | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'           |
			| 'Basic Partner terms, TRY' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Use"
		И в таблице "MetadataTree" я изменяю флаг 'Use'
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 01'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек для Sales invoice
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'  |
			| 'Sales invoice' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Partner term'  | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'           |
			| 'Basic Partner terms, TRY' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Use"
		И в таблице "MetadataTree" я изменяю флаг 'Use'
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 01'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек для Purchase order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'  |
			| 'Purchase order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Use"
		И в таблице "MetadataTree" я изменяю флаг 'Use'
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 03'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек для Purchase invoice
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'  |
			| 'Purchase invoice' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Use"
		И в таблице "MetadataTree" я изменяю флаг 'Use'
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек для Bank payment
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   |
			| 'Bank payment' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Account'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Currency' | 'Description'       |
			| 'TRY'      | 'Bank account, TRY' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Currency'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'  |
			| 'TRY'  | 'Turkish lira' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Bank receipt
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   |
			| 'Bank receipt' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Account'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Bank account, USD' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Currency'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'  |
			| 'USD'  | 'American dollar' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Bundling
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' |
			| 'Bundling'   |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Companies'
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Company Ferron BP' |
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Edit user defaults settings'
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Stores'
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек для Cash transfer order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'          |
			| 'Cash transfer order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Sender'     | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №3' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Receiver'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Currency' | 'Description'       |
			| 'USD'      | 'Bank account, USD' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Invoice match
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'    |
			| 'Invoice match' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Companies'
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Company Ferron BP' |
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для GoodsReceipt
		И в таблице "MetadataTree" я перехожу к строке:
		| 'Group name'    |
		| 'Goods receipt' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Purchase return
		И в таблице "MetadataTree" я перехожу к строке:
		| 'Group name'    |
		| 'Purchase return' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Purchase return order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'    |
			| 'Purchase return order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Sales return order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'    |
			| 'Sales return order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Sales return
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'    |
			| 'Sales return' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек для Reconciliation statement
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'    |
			| 'Reconciliation statement' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек в Cash payment
		И в таблице "MetadataTree" я перехожу к строке:
		| 'Group name'   |
		| 'Cash payment' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   | 'Use' |
			| 'Cash/Bank accounts' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №3' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Company Ferron BP' |
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Currency'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Currencies'
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description' |
			| 'EUR'  | 'Euro'        |
		И в таблице "List" я активизирую поле "Description"
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек в Cash receipt
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   |
			| 'Cash receipt' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   | 'Use' |
			| 'Cash/Bank accounts' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №3' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Currency'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Currencies'
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'     |
			| 'USD'  | 'American dollar' |
		И в таблице "List" я активизирую поле "Description"
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек в Cash expense
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   |
			| 'Cash expense' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Account'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №3' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек в Cash expense
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   |
			| 'Cash revenue' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Account'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №3' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение пользовательских настроек в Credit debit note
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'        |
			| 'Credit debit note' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек в Incoming payment order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'             |
			| 'Incoming payment order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Second Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Account'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №2' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Currency'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'     |
			| 'USD'  | 'American dollar' |
		И в таблице "List" я активизирую поле "Description"
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек в Outgoing payment order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'             |
			| 'Outgoing payment order' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Account'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Cash desk №3' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Currency'   | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'     |
			| 'USD'  | 'American dollar' |
		И в таблице "List" я активизирую поле "Description"
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек в Inventory transfer
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'         |
			| 'Inventory transfer' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   | 'Use' |
			| 'Store sender' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'     | 'Use' |
			| 'Store receiver' | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 03'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'    | 'Use' |
			| 'Store transit' | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'               |
			| 'Inventory transfer order' |
	* Заполнение пользовательских настроек в Inventory transfer order
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'               |
			| 'Inventory transfer order' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'   | 'Use' |
			| 'Store sender' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'     | 'Use' |
			| 'Store receiver' | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 03'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек в Shipment confirmation
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'            |
			| 'Shipment confirmation' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
	* Заполнение пользовательских настроек в Unbundling
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' |
			| 'Unbundling' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 03'    |
		И в таблице "List" я выбираю текущую строку
	* Заполнение Internal supply request 
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'              |
			| 'Internal supply request' |
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Company'    | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Main Company' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' | 'Use' |
			| 'Store'      | 'No'  |
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Store 02'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "MetadataTree" я завершаю редактирование строки
	И я нажимаю на кнопку 'Ok'
	И я нажимаю на кнопку 'Save and close'


Сценарий: _200002 Check filling inполей из пользовательских настроек в Sales order (у партнера есть соглашение которое указано в настройках)
	# склад заполняется из соглашения, если в соглашении не указан, тогда из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Agreement" стал равен 'Basic Partner terms, TRY'
		И     элемент формы с именем "Status" стал равен 'Approved'
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Store" стал равен 'Store 01'
	Тогда я проверяю заполнение полей при выборе партнера у которого есть соглашение 'Basic Partner terms, TRY'
	# заполненные поля очиститься не должны
		И я нажимаю кнопку выбора у поля "Partner"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Ferron BP'   |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля "Legal name"
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Company Ferron BP' |
		И в таблице "List" я выбираю текущую строку
		И     элемент формы с именем "Partner" стал равен 'Ferron BP'
		И     элемент формы с именем "LegalName" стал равен 'Company Ferron BP'
		И     элемент формы с именем "Agreement" стал равен 'Basic Partner terms, TRY'
		И     элемент формы с именем "Status" стал равен 'Approved'
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Store" стал равен 'Store 01'
		И я закрыл все окна клиентского приложения

Сценарий: _200003 Check filling inполей из пользовательских настроек в Sales order (у партнера нет соглашения которое указано в настройках)
	# склад заполняется из соглашения, если в соглашении не указан, тогда из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Agreement" стал равен 'Basic Partner terms, TRY'
		И     элемент формы с именем "Status" стал равен 'Approved'
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Store" стал равен 'Store 01'
	Тогда я проверяю заполнение полей при выборе партнера у которого есть соглашение 'Basic Partner terms, TRY'
	# заполненные поля очиститься не должны
		И я нажимаю кнопку выбора у поля "Partner"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Anna Petrova'   |
		И в таблице "List" я выбираю текущую строку
		И     элемент формы с именем "LegalName" стал равен ''
		И     элемент формы с именем "Agreement" стал равен ''
		И     элемент формы с именем "Status" стал равен 'Approved'
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Store" стал равен 'Store 01'
		И я закрыл все окна клиентского приложения


Сценарий: _200004 Check filling inдокумента Bank payment из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.BankPayment'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Account" стал равен 'Bank account, TRY'
		И     элемент формы с именем "Currency" стал равен 'TRY'
	И я закрыл все окна клиентского приложения

Сценарий: _200005 Check filling inдокумента Bank receipt из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.BankReceipt'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Account" стал равен 'Bank account, USD'
		И     элемент формы с именем "Currency" стал равен 'USD'
	И я закрыл все окна клиентского приложения



Сценарий:  _200008 Check filling inдокумента Bundling из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.Bundling'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
	И я закрыл все окна клиентского приложения


Сценарий:  _200009 Check filling inдокумента Cash payment из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.CashPayment'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "CashAccount" стал равен 'Cash desk №3'
		И     элемент формы с именем "Currency" стал равен 'EUR'
	И я закрыл все окна клиентского приложения

Сценарий:  _200010 Check filling inдокумента Cash receipt из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.CashReceipt'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "CashAccount" стал равен 'Cash desk №3'
		И     элемент формы с именем "Currency" стал равен 'USD'
	И я закрыл все окна клиентского приложения

Сценарий:  _200011 Check filling inдокумента Cash transfer из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.CashTransferOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Sender" стал равен 'Cash desk №3'
		И     элемент формы с именем "Receiver" стал равен 'Bank account, USD'
	И я закрыл все окна клиентского приложения

Сценарий:  _200012 Check filling inдокумента Invoice match из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.InvoiceMatch'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200013 Check filling inдокумента Goods receipt из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.GoodsReceipt'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200014 Check filling inдокумента Incoming payment order из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.IncomingPaymentOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Second Company'
		# И     элемент формы с именем "Account" стал равен 'Cash desk №3'
	И я закрыл все окна клиентского приложения

Сценарий:  _200015 Check filling inдокумента Internal supply request из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.InternalSupplyRequest'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Store" стал равен 'Store 02'
	И я закрыл все окна клиентского приложения


Сценарий:  _200016 Check filling inдокумента Inventory transfer из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.InventoryTransfer'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "StoreSender" стал равен 'Store 02'
		И     элемент формы с именем "StoreReceiver" стал равен 'Store 03'
		И     элемент формы с именем "StoreTransit" стал равен 'Store 02'
		И     элемент формы с именем "Company" стал равен 'Main Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200017 Check filling inдокумента Inventory transfer order из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.InventoryTransferOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "StoreSender" стал равен 'Store 02'
		И     элемент формы с именем "StoreReceiver" стал равен 'Store 03'
		И     элемент формы с именем "Company" стал равен 'Main Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200018 Check filling inдокумента Outgoing payment order из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.OutgoingPaymentOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Account" стал равен 'Cash desk №2'
		И     элемент формы с именем "Currency" стал равен 'USD'
		И     элемент формы с именем "Company" стал равен 'Main Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200019 Check filling inдокумента Purchase invoice из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.PurchaseInvoice'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Store" стал равен 'Store 02'
		И     элемент формы с именем "Company" стал равен 'Second Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200020 Check filling inдокумента Purchase order из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.PurchaseOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Store" стал равен 'Store 03'
		И     элемент формы с именем "Company" стал равен 'Second Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200021 Check filling inдокумента Purchase return из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.PurchaseReturn'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Second Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200022 Check filling inдокумента Purchase return order из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.PurchaseReturnOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Second Company'
	И я закрыл все окна клиентского приложения

Сценарий:  _200023 Check filling inдокумента Sales invoice из пользовательских настроек
	# склад заполняется из соглашения, если в соглашении не указан, тогда из пользовательских настроек. Аналогично компания.
	И я открываю навигационную ссылку 'e1cib/list/Document.SalesInvoice'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Agreement" стал равен 'Basic Partner terms, TRY'
		И     элемент формы с именем "Store" стал равен 'Store 01'
	И я закрыл все окна клиентского приложения

Сценарий:  _200024 Check filling inдокумента Sales return из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.SalesReturn'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Second Company'
	И я закрыл все окна клиентского приложения



Сценарий:  _200026 Check filling inдокумента Unbundling из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.Unbundling'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Main Company'
		И     элемент формы с именем "Store" стал равен 'Store 03'
	И я закрыл все окна клиентского приложения

Сценарий:  _200027 Check filling inдокумента Reconciliation statement из пользовательских настроек
	И я открываю навигационную ссылку 'e1cib/list/Document.ReconciliationStatement'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда я проверяю заполнение полей из пользовательских настроек
		И     элемент формы с именем "Company" стал равен 'Second Company'
	И я закрыл все окна клиентского приложения


Сценарий:  _200028 создание пользовательской настройки по отображению при вводе по строке объектов помеченных на удаление
	* Открытие плана вида характеристик для создания пользовательской настройки
		И я открываю навигационную ссылку 'e1cib/list/ChartOfCharacteristicTypes.CustomUserSettings'
	* Создание пользовательской настройки
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'Use object with deletion mark'
		И в поле 'Unique ID' я ввожу текст 'Use_object_with_deletion_mark'
		И я нажимаю кнопку выбора у поля "Value type"
		И в таблице "" я перехожу к строке:
			| ''        |
			| 'Boolean' |
		И я нажимаю на кнопку 'OK'
		И в таблице "RefersToObjects" я нажимаю на кнопку 'Add refers to object'
		И в таблице "MetadataObjectsTable" я перехожу к строке:
			| 'Synonym' | 'Use' |
			| 'Items'   | 'No'  |
		И в таблице "MetadataObjectsTable" я изменяю флаг 'Use'
		И в таблице "MetadataObjectsTable" я завершаю редактирование строки
		И в таблице "MetadataObjectsTable" я перехожу к строке:
			| 'Synonym'                           | 'Use' |
			| 'Additional attribute values' | 'No'  |
		И в таблице "MetadataObjectsTable" я изменяю флаг 'Use'
		И в таблице "MetadataObjectsTable" я завершаю редактирование строки
		И в таблице "MetadataObjectsTable" я перехожу к строке:
			| 'Synonym'  | 'Use' |
			| 'Partners' | 'No'  |
		И в таблице "MetadataObjectsTable" я изменяю флаг 'Use'
		И в таблице "MetadataObjectsTable" я завершаю редактирование строки
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* create пользовательской настройки
		И я открываю навигационную ссылку 'e1cib/list/ChartOfCharacteristicTypes.CustomUserSettings'
		Тогда таблица "List" содержит строки:
		| 'Description'                   |
		| 'Use object with deletion mark' |

Сценарий: _200029 заполнение пользовательских настроек для группы пользователей
	* Open catalog UserGroups
		И я открываю навигационную ссылку 'e1cib/list/Catalog.UserGroups'
	* Создание новой группы и заполнение пользовательской настройки по отображению помеченных на удаление объектов
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'Admin'
		И я нажимаю на кнопку 'Save'
		И я нажимаю на кнопку 'Settings'
	* Заполнение настройки по отображению помеченных на удаление Additional attribute values при вводе по строке
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'                        |
			| 'Additional attribute values' |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'                    | 'Use' |
			| 'Use object with deletion mark' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Select data type'
		И в таблице "" я перехожу к строке:
			| ''        |
			| 'Boolean' |
		И в таблице "" я выбираю текущую строку
		И в таблице "MetadataTree" из выпадающего списка "Value" я выбираю точное значение 'No'
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение настройки по отображению помеченных на удаление Items при вводе по строке	
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' |
			| 'Items'      |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'                    | 'Use' |
			| 'Use object with deletion mark' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Select data type'
		И в таблице "" я перехожу к строке:
			| ''        |
			| 'Boolean' |
		И в таблице "" я выбираю текущую строку
		И в таблице "MetadataTree" из выпадающего списка "Value" я выбираю точное значение 'No'
		И в таблице "MetadataTree" я завершаю редактирование строки
	* Заполнение настройки по отображению помеченных на удаление Partners при вводе по строке	
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name' |
			| 'Partners'   |
		И в таблице "MetadataTree" я активизирую поле "Group name"
		И в таблице "MetadataTree" я перехожу к строке:
			| 'Group name'                    | 'Use' |
			| 'Use object with deletion mark' | 'No'  |
		И в таблице "MetadataTree" я активизирую поле "Value"
		И в таблице "MetadataTree" я выбираю текущую строку
		И в таблице "MetadataTree" я нажимаю кнопку выбора у реквизита "Value"
		Тогда открылось окно 'Select data type'
		И в таблице "" я перехожу к строке:
			| ''        |
			| 'Boolean' |
		И в таблице "" я выбираю текущую строку
		И в таблице "MetadataTree" из выпадающего списка "Value" я выбираю точное значение 'No'
		И в таблице "MetadataTree" я завершаю редактирование строки
		И я нажимаю на кнопку 'Ok'
	* Сохранение группы
		И я нажимаю на кнопку 'Save and close'

Сценарий: _200030  добавление группы пользовательских настроек для пользователя
	* Open catalog пользователей
		И я открываю навигационную ссылку 'e1cib/list/Catalog.Users'
	* Выбор пользователя
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'CI'          |
		И в таблице "List" я выбираю текущую строку
	* Указание группы пользовательских настроек
		И я нажимаю кнопку выбора у поля "User group"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Admin'       |
		И в таблице "List" я выбираю текущую строку
	* Сохранение настроек
		И я нажимаю на кнопку 'Save and close'

Сценарий: _200031  проверка ввода по строке помеченных на удаление объектов (AddAttributeAndPropertyValues и Partner)
	* Создание элемента AddAttributeAndPropertyValues и пометка его на удаление
		И я открываю навигационную ссылку 'e1cib/list/Catalog.AddAttributeAndPropertyValues'
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст '100'
		И я нажимаю кнопку выбора у поля "Add attribute"
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Size'        |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
		И в таблице "List" я перехожу к строке:
			| 'Add attribute' | 'Description' |
			| 'Size'          | '100'         |
		И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuSetDeletionMark'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'Yes'
	* Создание элемента справочника Partner и пометка его на удаление
		И я открываю навигационную ссылку 'e1cib/list/Catalog.Partners'
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'Delete'
		И я устанавливаю флаг 'Customer'
		И я нажимаю на кнопку 'Save and close'
		И в таблице "List" я перехожу к строке:
			| 'Description'      |
			| 'Delete' |
		И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuSetDeletionMark'
		Тогда открылось окно '1C:Enterprise'
		И я нажимаю на кнопку 'Yes'
	* Проверка выбора по строке помеченного на удаление партнера
		И я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
		И я нажимаю на кнопку с именем 'FormCreate'
		Когда Проверяю шаги на Исключение:
			|'И из выпадающего списка "Partner" я выбираю по строке 'Delete''|
		И в поле 'Partner' я ввожу текст ''
		И я закрыл все окна клиентского приложения
	* Проверка выбора по строке помеченного на удаление AddAttributeAndPropertyValues
		И я открываю навигационную ссылку 'e1cib/list/Catalog.Items'
		И в таблице "List" я перехожу к строке:
		| 'Description' |
		| 'Shirt'       |
		И в таблице "List" я выбираю текущую строку
		И В текущем окне я нажимаю кнопку командного интерфейса 'Item keys'
		И я нажимаю на кнопку с именем 'FormCreate'
		Когда Проверяю шаги на Исключение:
			|'И из выпадающего списка "Size" я выбираю по строке '100''|
		И в поле 'Size' я ввожу текст ''
		И я закрыл все окна клиентского приложения


Сценарий: _200032 проверка доступности редактирования пользовательских настроек из списка пользователей
	* Открытие списка пользователе
		И я открываю навигационную ссылку 'e1cib/list/Catalog.Users'
	* Проверка открытия пользовательских настроек из списка пользователей
		И в таблице "List" я перехожу к строке:
		| 'Description'                          |
		| 'Alexander Orlov (Commercial Agent 2)' |
		И я нажимаю на кнопку 'Settings'
		Тогда открылось окно 'Edit user defaults settings'
	И я закрыл все окна клиентского приложения


	

