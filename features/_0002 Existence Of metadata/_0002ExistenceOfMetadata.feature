#language: ru
@tree
@Positive
@IgnoreOnCIMainBuild


Функционал: проверка существования метаданных

Как тестировщик
Я хочу убедится что в базе существуют метаданные с указанными наименованиями
чтобы проверить что наименования метаданных совпадают с ТЗ


Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: установка константы отображения функционала Beta test
    И Я устанавливаю в константу "ShowBetaTesting" значение "True"
    И Я устанавливаю в константу "NotFirstStart" значение "True"


Сценарий: проверка существования регистра StockBalance
    Когда в метаданных есть РегистрНакопления "StockBalance"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра InventoryBalance
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "InventoryBalance"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра StockReservation
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "StockReservation"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра TransferOrderBalance
    # И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-199' с именем 'IRP-199'
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "TransferOrderBalance"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра SalesTurnovers
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "SalesTurnovers"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра PurchaseTurnovers
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "PurchaseTurnovers"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра GoodsInTransitIncoming
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "GoodsInTransitIncoming"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра GoodsInTransitOutgoing
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "GoodsInTransitOutgoing"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра OrderBalance
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "OrderBalance"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка существования регистра OrderReservation
    И    Я закрыл все окна клиентского приложения
    Когда в метаданных есть РегистрНакопления "OrderReservation"
    Тогда не появилось окно предупреждения системы

# Сценарий: проверка наименования документа трек листа
#     И    Я закрыл все окна клиентского приложения
#     Дано Я открываю основную форму списка документа "TrackingList"
#     Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа заявки на возврат поставщику
    # И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-203' с именем 'IRP-203'
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "PurchaseReturnOrder"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа возврата поставщику PurchaseReturn
    # И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-204' с именем 'IRP-204'
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "PurchaseReturn"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа РКО 
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "CashPayment"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа ПКО 
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "CashReceipt"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа установки цен
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "PriceList"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа чека ККМ
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "SalesReceipt"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа маркетинговой акции
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "SetupOfSpecialOffers"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа ОРП
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "ZReport"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа заказа покупателя
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "SalesOrder"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа реализации
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "SalesInvoice"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа заявки на возврат от покупателя
    # И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-205' с именем 'IRP-205'
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "SalesReturnOrder"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа возврата от покупателя
    # И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-206' с именем 'IRP-206'
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "SalesReturn"
    Тогда не появилось окно предупреждения системы

Сценарий:  проверка наименования документа задания на перевозку
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "DeliveryList"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа заказа поставщику
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "PurchaseOrder"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа поступления ТМЗ
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "PurchaseInvoice"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа перемещения товаров
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "InventoryTransfer"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа приходный ордер
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "GoodsReceipt"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа расходный ордер
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "ShipmentConfirmation"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования справочника рецептов к упаковкам
    И    Я закрыл все окна клиентского приложения
    Дано:  Имеется метаданное "Catalog.Specifications"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования справочника коробок (единоразовые перемещения)
    И    Я закрыл все окна клиентского приложения
    Дано:  Имеется метаданное "Catalog.Boxes"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования справочника рецептов (размерные сетки)
    И    Я закрыл все окна клиентского приложения
    Дано:  Имеется метаданное "Catalog.Specifications"
    Тогда не появилось окно предупреждения системы

Сценарий: проверка наименования документа сопоставления документов оплат с документами основания InvoiceMatch
    И    Я закрыл все окна клиентского приложения
    Дано Я открываю основную форму списка документа "InvoiceMatch"
    Тогда не появилось окно предупреждения системы


# Сценарий: проверка наименования документа инвентаризации товаров
#     И    Я закрыл все окна клиентского приложения
#     Дано Я открываю основную форму списка документа "InventoryCounting"
#     Тогда не появилось окно предупреждения системы

# Сценарий: проверка наименования документа задания на отгрузку товара кладовщику
#     И    Я закрыл все окна клиентского приложения
#     Дано Я открываю основную форму списка документа "PickList"
#     Тогда не появилось окно предупреждения системы

# Сценарий: проверка наименования документа ввода начальных остатков
#     И    Я закрыл все окна клиентского приложения
#     Дано Я открываю основную форму списка документа "OpeningEntry"
#     Тогда не появилось окно предупреждения системы

# Сценарий: проверка наименования документа оприходования товаров
#     И    Я закрыл все окна клиентского приложения
#     Дано Я открываю основную форму списка документа "InventoryReceipt"
#     Тогда не появилось окно предупреждения системы

# Сценарий: проверка наименования документа списания товаров
#     И    Я закрыл все окна клиентского приложения
#     Дано Я открываю основную форму списка документа "InventoryWriteOff"
#     Тогда не появилось окно предупреждения системы



