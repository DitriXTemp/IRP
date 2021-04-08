Function Strings(Lang) Export
	
	Strings = New Structure();
	
	#Region Equipment
	Strings.Insert("Eq_001", NStr("en = 'Installed'''", Lang));
	Strings.Insert("Eq_002", NStr("tr = 'Kurulmadı';
	                              |en = 'Not installed';
	                              |ru = 'Не установлен'", Lang));
	Strings.Insert("Eq_003", NStr("tr = 'Bir hata tespit edilemedi.';
	                              |en = 'There are no errors.';
	                              |ru = 'Ошибок нет.'", Lang));
	Strings.Insert("Eq_004", NStr("tr = 'Barkod okuyucusu başarılya bağlandı.';
	                              |en = 'Scanner is connected.';
	                              |ru = 'Сканер подключен.'", Lang));
	Strings.Insert("Eq_005", NStr("tr = 'Hata. Barkod okuyucusu bağlanamadı';
	                              |en = 'Error. Scanner not connected.';
	                              |ru = 'Ошибка. Сканер не подключен.'", Lang));
	Strings.Insert("Eq_006", NStr("tr = 'Bu bilgisayara kurulmuştu.';
	                              |en = 'Installed on current PC.';
	                              |ru = 'Установить на текущий компьютер'", Lang));
	
	Strings.Insert("EqError_001", NStr("tr = 'Cihaz bağlandı. İşlemden önce cihaz devre dışı bırakılmalı.';
	                                   |en = 'The device is connected. The device must be disabled before the operation.';
	                                   |ru = 'Устройство подключено. Устройство должно быть отключено перед началом работы.'", Lang));

	Strings.Insert("EqError_002", NStr("tr = 'Cihaz sürücüsü yüklenemedi.
	                                   |Sürücünün düzgün kurulduğundan ve sistemde kayıtlı (registered) olduğundan emin olunuz.';
	                                   |en = 'The device driver could not be downloaded.
	                                   |Check that the driver is correctly installed and registered in the system.';
	                                   |ru = 'Драйвер устройства не может быть загружен. 
	                                   |Проверьте, что драйвер правильно установлен и зарегистрирован в системе.'", Lang));
	
	Strings.Insert("EqError_003", NStr("tr = 'Ek ID''de minimum bir nokta olmalıdır.';
	                                   |en = 'It has to be minimum one dot at Add ID.';
	                                   |ru = 'Необходимо иметь минимум одну точку в доп. ID.'", Lang));
	Strings.Insert("EqError_004", NStr("tr = 'Sürücü yükemeden öncesi indirmek lazım.';
	                                   |en = 'Before install driver - it has to be loaded.';
	                                   |ru = 'Перед тем как установить драйвер, он должен быть загружен.'", Lang));
	#EndRegion
	
	#Region POS
	
	Strings.Insert("POS_s1", NStr("tr = 'Ödeme tutarı satış tutarından daha küçüktür';
	                              |en = 'Amount paid is less than amount of the document';
	                              |ru = 'Сумма оплаты меньше суммы документа'", Lang));
	Strings.Insert("POS_s2", NStr("tr = 'Kart ile ödeme tutarı satış tutarından daha büyüktür';
	                              |en = 'Card fees are more than the amount of the document';
	                              |ru = 'Сумма оплат по безналичному расчету больше суммы документа'", Lang));
	Strings.Insert("POS_s3", NStr("tr = 'Nakit tutar girmenize gerek yok, çünkü kart ile alınan ödeme yeterlidir';
	                              |en = 'There is no need to use cash, as card payments are sufficient to pay';
	                              |ru = 'Суммы по безналичному расчету для оплаты достаточно. Нет необходимости дополнительно использовать наличный расчет. '", Lang));
	Strings.Insert("POS_s4", NStr("tr = 'Ödeme tutarlarda hata var';
	                              |en = 'Amounts of payments are incorrect';
	                              |ru = 'Суммы оплат некорректны'", Lang));
	#EndRegion
	
	#Region Service
	
	// %1 - localhost
	// %2 - 8080 
	// %3 - There is no internet connection
	Strings.Insert("S_002", NStr("de = 'Verbindung mit %1:%2 kann nicht hergestellt werden. Details: %3';
	                             |tr = '%1:%2 ile bağlantı kurulamıyor. Ayrıntılar:%3';
	                             |en = 'Cannot connect to %1:%2. Details: %3';
	                             |ru = 'Не получается подключиться к %1:%2. Подробности: %3.'", Lang));
	
	// %1 - localhost
	// %2 - 8080
	Strings.Insert("S_003", NStr("de = 'Erhaltene Antwort von %1: %2';
	                             |tr = '%1:%2 tarafından yanıt alındı';
	                             |en = 'Received response from %1:%2';
	                             |ru = 'Полученный ответ от %1:%2'", Lang));
	Strings.Insert("S_004", NStr("tr = 'Kaynak adresi boş.';
	                             |de = 'Ressourcenadresse ist leer.';
	                             |en = 'Resource address is empty.';
	                             |ru = 'Адрес ресурса не заполнен.'", Lang));
	
	// %1 - connection_to_other_system
	Strings.Insert("S_005", NStr("tr = '%1 adıyla entegrasyon ayarı bulunamadı.';
	                             |de = 'Die Integrationseinstellung mit dem Namen %1 wurde nicht gefunden.';
	                             |en = 'Integration setting with name %1 is not found.';
	                             |ru = 'Настройки интеграции с наименованием %1 не найдены.'", Lang));
	Strings.Insert("S_006", NStr("tr = 'Yöntem Web İstemcisinde desteklenmiyor';
	                             |de = 'Die Methode ist im Web-Client nicht unterstützt.';
	                             |en = 'Method is not supported in Web Client.';
	                             |ru = 'В web клиенте метод не поддерживается.'", Lang));
	
	// Special offers
	Strings.Insert("S_013", NStr("de = 'Nicht unterstützter Objekttyp: %1.';
	                             |tr = 'Desteklenmeyen nesne türü: %1.';
	                             |en = 'Unsupported object type: %1.';
	                             |ru = 'Неподдерживаемый тип объекта: %1.'", Lang));
	
	// FileTransfer
	Strings.Insert("S_014", NStr("de = 'Dateiname ist leer.';
	                             |tr = 'Dosya adı boş.';
	                             |en = 'File name is empty.';
	                             |ru = 'Имя файла не заполнено'", Lang));
	Strings.Insert("S_015", NStr("de = 'Der Pfad zum Speichern ist nicht festgelegt.';
	                             |tr = 'Kaydetme yolu belirlenmemiş.';
	                             |en = 'Path for saving is not set.';
	                             |ru = 'Путь сохранения не установлен.'", Lang));
	
	// Test connection
	// %1 - Method unsupported on web client
	// %2 - 404
	// %3 - Text frim site
	Strings.Insert("S_016", NStr("de = '%1 Statuscode: %2%3';
	                             |tr = '%1 Durum kodu: %2 %3';
	                             |en = '%1 Status code: %2 %3';
	                             |ru = '%1 Статус код: %2 %3'", Lang));
	
	//	scan barcode
	Strings.Insert("S_018", NStr("tr = 'Malzeme eklendi.';
	                             |de = 'Das Produkt hinzugefügt.';
	                             |en = 'Item added.';
	                             |ru = 'Номенклатура добавлена.'", Lang)); 
	
	// %1 - 123123123123
	Strings.Insert("S_019", NStr("de = 'Der Barcode %1 nicht gefunden.';
	                             |tr = '%1 barkodu bulunamadı.';
	                             |en = 'Barcode %1 not found.';
	                             |ru = 'Штрихкод %1 не найден.'", Lang));
	Strings.Insert("S_022", NStr("tr = 'Ana belgelerdeki para birimleri eşleşmelidir.';
	                             |de = 'Die Währungen in den Basisdokumenten müssen übereinstimmen.';
	                             |en = 'Currencies in the base documents must match.';
	                             |ru = 'Валюты в документах-основания должны совпадать.'", Lang));
	Strings.Insert("S_023", NStr("tr = 'Tedarik şekli';
	                             |de = 'Beschaffungsmethode';
	                             |en = 'Procurement method';
	                             |ru = 'Метод обеспечения'", Lang));
	
	Strings.Insert("S_026", NStr("tr = 'Seçilen simge 16x16 piksel olarak yeniden boyutlandırılacaktır.';
	                             |de = 'Die Größe des ausgewählten Symbols wird auf 16x16 Pixel geändert.';
	                             |en = 'Selected icon will be resized to 16x16 px.';
	                             |ru = 'Размер выбранной иконки будет изменен до 16x16 px.'", Lang));

	// presentation of empty value for query result
	Strings.Insert("S_027", NStr("de = '[Nicht ausgefüllt]';
	                             |tr = '[ Doldurulmamış ]';
	                             |en = '[Not filled]';
	                             |ru = '[не заполнено]'", Lang));
	// operation is Success
	Strings.Insert("S_028", NStr("tr = 'Başarılı';
	                             |en = 'Success';
	                             |ru = 'Успешно'", Lang));
	Strings.Insert("S_029", NStr("tr = 'Desteklenmeyen web istemci';
	                             |en = 'Not supporting web client';
	                             |ru = 'Не поддерживаемый wreb клиент'", Lang));
	Strings.Insert("S_030", NStr("tr = 'Para üstü';
	                             |de = 'Rückgeld';
	                             |en = 'Cashback';
	                             |ru = 'Сдача'", Lang));
	Strings.Insert("S_031", NStr("tr = 'veya';
	                             |en = 'or';
	                             |ru = 'или'", Lang));
	#EndRegion
	
	#Region Service
	Strings.Insert("Form_001", NStr("tr = 'Yeni sayfa';
	                                |de = 'Neue Seite';
	                                |en = 'New page';
	                                |ru = 'Новая страница'", Lang));
	Strings.Insert("Form_002", NStr("de = 'Löschen';
	                                |tr = 'Kaldır';
	                                |en = 'Delete';
	                                |ru = 'Пометить на удаление/Снять пометку'", Lang));
	Strings.Insert("Form_003", NStr("de = 'Anzahl';
	                                |tr = 'Miktar';
	                                |en = 'Quantity';
	                                |ru = 'Количество'", Lang));
	Strings.Insert("Form_004", NStr("de = 'Vereinbarungen mit Kunden';
	                                |tr = 'Müşteri anlaşmaları';
	                                |en = 'Customers terms';
	                                |ru = 'Соглашения с клиентами'", Lang));
	Strings.Insert("Form_005", NStr("de = 'Kunden';
	                                |tr = 'Müşteriler';
	                                |en = 'Customers';
	                                |ru = 'Клиенты'", Lang));
	Strings.Insert("Form_006", NStr("de = 'Lieferanten';
	                                |tr = 'Tedarikçiler';
	                                |en = 'Vendors';
	                                |ru = 'Поставщики'", Lang));
	Strings.Insert("Form_007", NStr("de = 'Vereinbarungen mit Lieferanten';
	                                |tr = 'Tedarikçi anlaşması';
	                                |en = 'Vendors terms';
	                                |ru = 'Соглашения с поставщиками'", Lang));
	Strings.Insert("Form_008", NStr("tr = 'Kullanıcı';
	                                |de = 'Benutzer';
	                                |en = 'User';
	                                |ru = 'Пользователь'", Lang));
	Strings.Insert("Form_009", NStr("de = 'Benutzergruppe';
	                                |tr = 'Kullanıcı grubu';
	                                |en = 'User group';
	                                |ru = 'Группа пользователей'", Lang));
	Strings.Insert("Form_013", NStr("de = 'Datum';
	                                |tr = 'Tarih';
	                                |en = 'Date';
	                                |ru = 'Дата'", Lang));
	Strings.Insert("Form_014", NStr("de = 'Nummer';
	                                |tr = 'Numara';
	                                |en = 'Number';
	                                |ru = 'Номер'", Lang));
	
	// change icon
	Strings.Insert("Form_017", NStr("tr = 'Değiştir';
	                                |de = 'Ändern';
	                                |en = 'Change';
	                                |ru = 'Изменить'", Lang));
	
	// clear icon
	Strings.Insert("Form_018", NStr("de = 'Löschen';
	                                |tr = 'Temizle';
	                                |en = 'Clear';
	                                |ru = 'Очистить'", Lang));
	
	// cancel answer on question
	Strings.Insert("Form_019", NStr("en = 'Cancel'''", Lang));
	
	// PriceInfo report 
	Strings.Insert("Form_022", NStr("1. By item keys", Lang));
	Strings.Insert("Form_023", NStr("de = '2. Nach Eigenschaften';
	                                |tr = '2. Özelliklere göre';
	                                |en = '2. By properties';
	                                |ru = '2. По свойствам'", Lang));
	Strings.Insert("Form_024", NStr("tr = '3. Malzemelere göre';
	                                |de = '3. Nach Produkten';
	                                |en = '3. By items';
	                                |ru = '3. По номенклатуре'", Lang));
	
	Strings.Insert("Form_025", NStr("de = 'Aus Klassifizierer erstellen';
	                                |tr = 'Sınıflandırıcıdan oluştur';
	                                |en = 'Create from classifier';
	                                |ru = 'Создать по классификатору'", Lang));
	
	Strings.Insert("Form_026", NStr("de = 'Bündelprodukt';
	                                |tr = 'Malzeme Paketi';
	                                |en = 'Item Bundle';
	                                |ru = 'Номенклатура набора'", Lang));
	Strings.Insert("Form_027", NStr("tr = 'Malzeme';
	                                |de = 'Produkt';
	                                |en = 'Item';
	                                |ru = 'Номенклатура'", Lang));
	Strings.Insert("Form_028", NStr("de = 'Produkttyp';
	                                |tr = 'Malzeme tipi';
	                                |en = 'Item type';
	                                |ru = 'Вид номенклатуры'", Lang));
	Strings.Insert("Form_029", NStr("de = 'Externe Attribute';
	                                |tr = 'Dış özellikler';
	                                |en = 'External attributes';
	                                |ru = 'Внешние реквизиты'", Lang));
	Strings.Insert("Form_030", NStr("tr = 'Boyutlar';
	                                |en = 'Dimensions';
	                                |ru = 'Измерения'", Lang));
	Strings.Insert("Form_031", NStr("tr = 'Ağırlık bilgisi';
	                                |en = 'Weight information';
	                                |ru = 'Информация о весе'", Lang));
	Strings.Insert("Form_032", NStr("de = 'Periode';
	                                |tr = 'Dönem';
	                                |en = 'Period';
	                                |ru = 'Период'", Lang));
	#EndRegion
	
	#Region ErrorMessages

	// %1 - en
	Strings.Insert("Error_002", NStr("tr = '%1 açıklaması boş';
	                                 |de = '%1 Beschreibung ist leer';
	                                 |en = '%1 description is empty';
	                                 |ru = '%1 наименование не заполнено'", Lang));
	Strings.Insert("Error_003", NStr("tr = 'Herhangi bir açıklama girininiz.';
	                                 |de = 'Füllen Sie eine Beschreibung aus.';
	                                 |en = 'Fill any description.';
	                                 |ru = 'Заполните наименование.'", Lang));
	Strings.Insert("Error_004", NStr("de = 'Metadaten sind nicht unterstützt.';
	                                 |tr = 'Meta veriler desteklenmiyor.';
	                                 |en = 'Metadata is not supported.';
	                                 |ru = 'Метаданные не поддерживаются.'", Lang));
	
	// %1 - en
	Strings.Insert("Error_005", NStr("tr = 'Ek bir %1 özniteliğinin açıklamasını doldurunuz.';
	                                 |de = 'Füllen Sie eine Beschreibung des Zusatzattributs %1 aus.';
	                                 |en = 'Fill the description of an additional attribute %1.';
	                                 |ru = 'Заполните наименование дополнительного реквизита %1.'", Lang));
	Strings.Insert("Error_008", NStr("tr = 'Gruplar bir yönetici tarafından oluşturulur.';
	                                 |de = 'Gruppen sind von einem Administrator erstellt.';
	                                 |en = 'Groups are created by an administrator.';
	                                 |ru = 'Группы создаются администратором.'", Lang));
	
	// %1 - Number 111 is not unique
	Strings.Insert("Error_009", NStr("tr = 'Nesne yazılamıyor: [%1].';
	                                 |de = 'Das Objekt kann nicht geschrieben werden: [%1].';
	                                 |en = 'Cannot write the object: [%1].';
	                                 |ru = 'Ошибка при записи объекта: [%1].'", Lang));
	
	// %1 - Number
	Strings.Insert("Error_010", NStr("tr = '[%1] alanı boş.';
	                                 |de = 'Feld [%1] ist leer.';
	                                 |en = 'Field [%1] is empty.';
	                                 |ru = 'Поле [%1] не заполнено.'", Lang));
	Strings.Insert("Error_011", NStr("de = 'Fügen Sie mindestens eine Zeile hinzu.';
	                                 |tr = 'En az bir satır ekleyin.';
	                                 |en = 'Add at least one row.';
	                                 |ru = 'Нужно добавить хоть одну строку.'", Lang));
	Strings.Insert("Error_012", NStr("de = 'Die Variable ist nicht gemäß den Regeln benannt.';
	                                 |tr = 'Değişken, kurallara göre adlandırılmaz.';
	                                 |en = 'Variable is not named according to the rules.';
	                                 |ru = 'Переменная названа не в соответствии с правилами.'", Lang));
	Strings.Insert("Error_013", NStr("tr = 'Değer benzersiz değil.';
	                                 |de = 'Der Wert ist nicht eindeutig.';
	                                 |en = 'Value is not unique.';
	                                 |ru = 'Значение не уникально.'", Lang));
	Strings.Insert("Error_014", NStr("tr = 'Parola ve parola onayı eşleşmiyor.';
	                                 |de = 'Das Kennwort und die Kennwortbestätigung stimmen nicht überein.';
	                                 |en = 'Password and password confirmation do not match.';
	                                 |ru = 'Пароль и подтверждение пароля не совпадают.'", Lang));

	// %1 - Sales order
	Strings.Insert("Error_016", NStr("de = 'Im Dokument ""%1"" gibt es keine weiteren Waren, die Sie von den Lieferanten bestellen müssen.';
	                                 |tr = '""%1"" belgesinde tedarikçilerden sipariş etmeniz gereken başka ürün yok.';
	                                 |en = 'There are no more items that you need to order from suppliers in the ""%1"" document.';
	                                 |ru = 'В документе ""%1"" не осталось товаров по которым необходимо сделать заказ поставщику.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_017", NStr("tr = 'İlk olarak, bir ""%1"" belgesi oluşturun veya ""Diğer"" sekmesindeki ""%1 %2''den önce"" onay kutusunu temizleyin.';
	                                 |de = 'Zunächst erstellen Sie ein Dokument ""%1"" oder deaktivieren Sie das Kontrollkästchen ""%1 vor der %2"" auf der Registerkarte ""Sonstiges"".';
	                                 |en = 'First, create a ""%1"" document or clear the ""%1 before %2"" check box on the ""Other"" tab.';
	                                 |ru = 'Вначале необходимо создать документ ""%1"" или снять галочку ""%1 перед документом %2"" на вкладке ""Дополнительно"".'", Lang));

	// %1 - Shipment confirmation
	// %1 - Sales invoice
	Strings.Insert("Error_018", NStr("tr = 'İlk olarak, bir ""%1"" belgesi oluşturun veya ""Diğer"" sekmesindeki ""%1 %2''den önce"" onay kutusunu temizleyin.';
	                                 |de = 'Zunächst erstellen Sie ein Dokument ""%1"" oder deaktivieren Sie das Kontrollkästchen ""%1 vor der %2"" auf der Registerkarte ""Sonstiges"".';
	                                 |en = 'First, create a ""%1"" document or clear the ""%1 before %2"" check box on the ""Other"" tab.';
	                                 |ru = 'Вначале необходимо создать документ ""%1"" или снять галочку ""%1 перед документом %2"" на вкладке ""Дополнительно"".'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_019", NStr("en = 'There are no lines for which you need "+ij+"to create a ""%1"" document in the ""%2"" document.'", Lang));

	// %1 - 12
	Strings.Insert("Error_020", NStr("de = 'Geben Sie ein Basisdokument für Zeile %1 an.';
	                                 |tr = '%1 satırı için bir ana belge belirtin.';
	                                 |en = 'Specify a base document for line %1.';
	                                 |ru = 'Необходимо заполнить документ-основания по строке %1.'", Lang));

	// %1 - Purchase invoice
	Strings.Insert("Error_021", NStr("de = 'Das Dokument ""%1"" enthält keine Produkte, die zurückgegeben werden müssen. Alle Produkte wurden bereits zurückgegeben.';
	                                 |tr = '""%1"" belgesinde iade edilecek ürün yok. Tüm ürünler zaten iade edildi.';
	                                 |en = 'There are no products to return in the ""%1"" document. All products are already returned.';
	                                 |ru = 'По всем товарам из выбранного документа ""%1"" уже был оформлен возврат.'", Lang));

	// %1 - Internal supply request
	Strings.Insert("Error_023", NStr("de = 'Im Dokument ""%1"" gibt es keine weiteren Waren, die Sie von den Lieferanten bestellen müssen.';
	                                 |tr = '""%1"" belgesinde tedarikçilerden sipariş etmeniz gereken başka ürün yok.';
	                                 |en = 'There are no more items that you need to order from suppliers in the ""%1"" document.';
	                                 |ru = 'В документе ""%1"" не осталось товаров по которым необходимо сделать заказ поставщику.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_028", NStr("tr = '""Diğer"" sekmesinde ""%2''den %1 önce"" onay kutusunu seçin.';
	                                 |de = 'Aktivieren Sie das Kontrollkästchen ""%1 vor der %2"" auf der Registerkarte ""Sonstiges"".';
	                                 |en = 'Select the ""%1 before %2"" check box on the ""Other"" tab.';
	                                 |ru = 'Необходимо установить галочку ""%1 перед документом %2"" на вкладке ""Дополнительно"".'", Lang));
	
	// %1 - Cash account
	// %2 - 12
	// %3 - Cheque bonds
	Strings.Insert("Error_030", NStr("tr = '%3''ün %2 satırında %1 belirtin.';
	                                 |de = 'Geben Sie ein %1 in der Zeile %2 des Dokuments ""%3"" an.';
	                                 |en = 'Specify %1 in line %2 of the %3.';
	                                 |ru = 'Поле %1 обязателено для заполнения в строке %2 %3.'", Lang));

	Strings.Insert("Error_031", NStr("tr = 'Tedarik yöntemine göre malzemeler tedarikçiden alınmadı.';
	                                 |de = 'Bestellte Waren, die für den Auftrag erforderlich sind, wurden vom Lieferanten nicht erhalten.';
	                                 |en = 'Items were not received from the supplier according to the procurement method.';
	                                 |ru = 'Заказанные товары у поставщика для обеспечения заказа не были получены.'", Lang));
	Strings.Insert("Error_032", NStr("tr = 'Eylem tamamlanmadı.';
	                                 |de = 'Die Aktion ist nicht abgeschlossen.';
	                                 |en = 'Action not completed.';
	                                 |ru = 'Действие не завершено.'", Lang));
	Strings.Insert("Error_033", NStr("de = 'Doppeltes Attribut.';
	                                 |tr = 'Yinelenen özellik.';
	                                 |en = 'Duplicate attribute.';
	                                 |ru = 'Реквизит дублируется.'", Lang));
	// %1 - Google drive
	Strings.Insert("Error_034", NStr("tr = '%1 bir resim depolama birimi değil.';
	                                 |de = '%1 ist nicht ein Bildspeichervolume.';
	                                 |en = '%1 is not a picture storage volume.';
	                                 |ru = '%1 не является томом для хранения изображений.'", Lang));
	Strings.Insert("Error_035", NStr("tr = '1''den fazla dosya yüklenemez.';
	                                 |de = 'Nur 1 Datei kann hochgeladen werden.';
	                                 |en = 'Cannot upload more than 1 file.';
	                                 |ru = 'Невозможно загрузить более 1 файла.'", Lang));
	Strings.Insert("Error_037", NStr("de = 'Nicht unterstützter Datenvergleichstyp.';
	                                 |tr = 'Desteklenmeyen veri bileşimi karşılaştırması türü.';
	                                 |en = 'Unsupported type of data composition comparison.';
	                                 |ru = 'Неподдерживаемый тип сравнения состава данных.'", Lang));	
	Strings.Insert("Error_040", NStr("tr = 'Yalnızca resim dosyaları desteklenir.';
	                                 |de = 'Nur Bilddateien sind unterstützt.';
	                                 |en = 'Only picture files are supported.';
	                                 |ru = 'Поддерживается только тип файла - картинка.'", Lang));
	Strings.Insert("Error_041", NStr("de = 'Die Steuertabelle enthält mehr als 1 Zeile [Schlüssel: %1] [Steuer: %2].';
	                                 |tr = 'Vergi tablosu 1''den fazla satır içeriyor [anahtar: %1] [vergi: %2].';
	                                 |en = 'Tax table contains more than 1 row [key: %1] [tax: %2].';
	                                 |ru = 'Таблица налогов содержит больше 1 строки [ключ: %1] [налог: %2].'", Lang));
	// %1 - Name
	Strings.Insert("Error_042", NStr("de = 'Eine Steuer kann nach dem Spaltennamen %1 nicht gefunden werden.';
	                                 |tr = 'Sütun adına göre bir vergi bulunamıyor: %1.';
	                                 |en = 'Cannot find a tax by column name: %1.';
	                                 |ru = 'Не найден налог по наименованию колонки: %1.'", Lang));
	Strings.Insert("Error_043", NStr("tr = 'Desteklenmeyen belge türü.';
	                                 |de = 'Nicht unterstützter Dokumenttyp.';
	                                 |en = 'Unsupported document type.';
	                                 |ru = 'Неподдерживаемый тип документа.'", Lang));
	Strings.Insert("Error_044", NStr("de = 'Der Vorgang ist nicht unterstützt.';
	                                 |tr = 'İşlem desteklenmiyor.';
	                                 |en = 'Operation is not supported.';
	                                 |ru = 'Недопустимая операция.'", Lang));
	Strings.Insert("Error_045", NStr("de = 'Das Dokument ist leer.';
	                                 |tr = 'Belge boş.';
	                                 |en = 'Document is empty.';
	                                 |ru = 'Документ не заполнен.'", Lang));
	// %1 - Currency
	Strings.Insert("Error_047", NStr("de = '""%1"" ist ein erforderliches Feld.';
	                                 |tr = '""%1"" zorunlu bir alandır.';
	                                 |en = '""%1"" is a required field.';
	                                 |ru = 'Поле ""%1"" обязательное для заполнения.'", Lang));
	Strings.Insert("Error_049", NStr("tr = 'Varsayılan resim saklama hacmi ayarlanmamıştır.';
	                                 |de = 'Das Standardbildspeichervolume ist nicht festgelegt.';
	                                 |en = 'Default picture storage volume is not set.';
	                                 |ru = 'Том хранения файлов по умолчанию не заполнен.'", Lang));
	Strings.Insert("Error_050", NStr("de = 'Der Währungsumtausch ist nur für die Konten mit demselben Typ verfügbar (Kassenkonten oder Bankkonten).';
	                                 |tr = 'Döviz değişimi yalnızca aynı türdeki hesaplar için (kasa hesapları veya banka hesapları) kullanılabilir.';
	                                 |en = 'Currency exchange is available only for the same-type accounts (cash accounts or bank accounts).';
	                                 |ru = 'Обмен валюты возможен только между счетами одного типа (между двумя кассами или между двумя банковскими счетами).'", Lang));
	// %1 - Bank payment
	Strings.Insert("Error_051", NStr("de = 'Es gibt keine Zeilen, für die Sie ein Dokument ""%1"" erstellen können, oder alle Dokumente ""%1"" wurden bereits erstellt.';
	                                 |tr = 'Kendisi için bir ""%1"" belgesi oluşturabileceğiniz satır yok veya tüm ""%1"" belgeleri zaten oluşturulmuş.';
	                                 |en = 'There are no lines for which you can create a ""%1"" document, or all ""%1"" documents are already created.';
	                                 |ru = 'Отсутствуют строки по которым необходимо создать ""%1"" или же все документы ""%1"" уже были созданы ранее.'", Lang));
	// %1 - Main store
	// %2 - Use shipment confirmation
	// %3 - Shipment confirmations
	Strings.Insert("Error_052", NStr("tr = '""%2"" onay kutusu temizlenemiyor.
	                                 |%1 mağazasından ""%3"" belgeleri zaten oluşturulmuş.';
	                                 |de = 'Das Kontrollkästchen ""%2"" kann nicht deaktiviert werden. 
	                                 |Dokumente ""%3"" für Lager %1 wurden bereits zuvor erstellt.';
	                                 |en = 'Cannot clear the ""%2"" check box. 
	                                 |Documents ""%3"" from store %1 were already created.';
	                                 |ru = 'Снять галочку ""%2"" невозможно. 
	                                 |Ранее со склада %1 уже были созданы документы ""%3"".'", Lang));
	
	// %1 - Main store
	// %2 - Use goods receipt
	// %3 - Goods receipts
	Strings.Insert("Error_053", NStr("de = 'Das Kontrollkästchen ""%2"" kann nicht deaktiviert werden. Dokumente ""%3"" für Lager %1 wurden bereits zuvor erstellt.';
	                                 |tr = '""%2"" onay kutusu temizlenemiyor. %1 mağazasından ""%3"" belgeleri zaten oluşturulmuş.';
	                                 |en = 'Cannot clear the ""%2"" check box. Documents ""%3"" from store %1 were already created.';
	                                 |ru = 'Невозможно снять галочку ""%2"". Ранее со склада %1 уже были созданы документы ""%3"".'", Lang));
	
	// %1 - sales order
	Strings.Insert("Error_054", NStr("tr = 'Devam edilemez. ""%1"" belgesinin durumu yanlış.';
	                                 |de = 'Der Vorgang kann nicht fortgesetzt werden. Das Dokument ""%1"" hat einen falschen Status.';
	                                 |en = 'Cannot continue. The ""%1""document has an incorrect status.';
	                                 |ru = 'Невозможно продолжить. Статус документа ""%1"" для продолжения неверный.'", Lang));
															  
	Strings.Insert("Error_055", NStr("tr = 'Doğru tedarik yöntemine sahip hatlar yoktur.';
	                                 |de = 'Es gibt keine Zeilen mit einer richtigen Beschaffungsmethode.';
	                                 |en = 'There are no lines with a correct procurement method.';
	                                 |ru = 'Отсутствуют строки с нужным способом обеспечения.'", Lang));

	Strings.Insert("Error_056", NStr("tr = 'Satış siparişindeki tüm kalemler, satın alma siparişleri kullanılarak zaten sipariş edilmiştir.';
	                                 |de = 'Alle Produkte im Auftrag sind mithilfe von Bestellung(en) bereits bestellt.';
	                                 |en = 'All items in the sales order are already ordered using purchase order(s).';
	                                 |ru = 'Все товары в заказе клиента уже заказаны поставщику.'", Lang));

	// %1 - sales order
	// %2 - purchase order
	Strings.Insert("Error_056", NStr("tr = '""%1"" belgesindeki tüm öğeler ""%2"" belgeleri kullanılarak zaten sıralanmıştır.';
	                                 |de = 'Alle Produkte im Dokument ""%1"" sind bereits mithilfe von Dokument(en) ""%2"" bestellt.';
	                                 |en = 'All items in the ""%1"" document are already ordered using the ""%2"" document(s).';
	                                 |ru = 'Все товары в документе ""%1"" уже заказаны документом ""%2"".'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_057", NStr("tr = 'Seçili ""%2"" dokümanlar için ""%1"" doküman oluşturmanıza gerek yoktur.';
	                                 |de = 'Es ist nicht erforderlich, ein Dokument ""%1"" für die ausgewählten Dokumente ""%2"" zu erstellen.';
	                                 |en = 'You do not need to create a ""%1"" document for the selected ""%2"" document(s).';
	                                 |ru = 'Для выбранного документа ""%1"" не нужно создавать документ ""%2"".'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_058", NStr("de = 'Der Gesamtbetrag des Dokuments ""%2"" ist bereits mithilfe von Dokument ""%1"" bezahlt.';
	                                 |tr = '""%2"" belgelerinin toplam tutarı, ""%1"" belgeleri temelinde zaten ödendi.';
	                                 |en = 'The total amount of the ""%2"" document(s) is already paid on the basis of the ""%1"" document(s).';
	                                 |ru = 'Вся сумма по документу ""%2"" уже была выдана по документу ""%1"".'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_059", NStr("tr = 'Seçilen belgelerde, mevcut ""%1"" belgelerine sahip ""%2"" belgeler var
	                                 |  ve ""%1"" belgesi gerektirmeyenler.';
	                                 |de = 'Die ausgewählten Dokumente enthalten Dokumente ""%2"" mit vorhandenen Dokumenten ""%1""
	                                 | und diejenige, für die das Dokument ""%1"" nicht erforderlich ist.';
	                                 |en = 'In the selected documents, there are ""%2"" document(s) with existing ""%1"" document(s)
	                                 | and those that do not require a ""%1"" document.';
	                                 |ru = 'В списке выбранных документов ""%2"" есть те по которым уже был создан документ ""%1""
	                                 | и те по которым документ ""%1"" создавать не нужно.'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_060", NStr("tr = '""%2"" belgelerinin toplam miktarı, ""%1"" belgeleri temelinde zaten alındı.';
	                                 |de = 'Der Gesamtbetrag des Dokuments ""%2"" ist bereits mithilfe von Dokument ""%1"" erhalten.';
	                                 |en = 'The total amount of the ""%2"" document(s) is already received on the basis of the ""%1"" document(s).';
	                                 |ru = 'Вся сумма по документу ""%2"" уже была получена по документу ""%1"".'", Lang));
	
	// %1 - Main store
	// %2 - Shipment confirmation
	// %3 - Sales order
	Strings.Insert("Error_064", NStr("tr = '%1 mağazaları için ""%2"" belgesi oluşturmanıza gerek yok. Ürün, ""%3"" belgesi kullanılarak gönderilecek.';
	                                 |de = 'Es ist nicht erforderlich, ein Dokument ""%2"" für Lager %1 zu erstellen. Das Produkt wird mithilfe von Dokument ""%3"" versendet.';
	                                 |en = 'You do not need to create a ""%2"" document for store(s) %1. The item will be shipped using the ""%3"" document.';
	                                 |ru = 'Для склада %1 нет необходимости создавать документ ""%2"". Товар будет отгружен по документу ""%3"".'", Lang));
	
	Strings.Insert("Error_065", NStr("de = 'Artikelvariante ist nicht eindeutig.';
	                                 |tr = 'Varyant benzersiz değil.';
	                                 |en = 'Item key is not unique.';
	                                 |ru = 'Характеристика не уникальна.'", Lang));
	Strings.Insert("Error_066", NStr("de = 'Spezifikation ist nicht eindeutig.';
	                                 |tr = 'Spesifikasyon benzersiz değil.';
	                                 |en = 'Specification is not unique.';
	                                 |ru = 'Спецификация товара не уникальна.'", Lang));

	// %1 - 12
	// %2 - Boots
	// %3 - Red XL
	// %4 - ordered
	// %5 - 11
	// %6 - 15
	// %7 - 4
	// %8 - pcs
	Strings.Insert("Error_068", NStr("de = 'Zeile Nr. [%1] [%2 %3] %4 Restmenge: %5%8. Erforderlich: %6%8. Es fehlt: %7%8.';
	                                 |tr = 'Satır No. [%1] [%2 %3] %4aldı: %5 %8. Gerekli: %6 %8. Eksik: %7 %8.';
	                                 |en = 'Line No. [%1] [%2 %3] %4 remaining: %5 %8. Required: %6 %8. Lacking: %7 %8.';
	                                 |ru = 'Строка № [%1] [%2%3] %4 остаток: %5%8 Требуется: %6%8 Разница: %7%8.'", Lang));

	// %1 - some extention name
	Strings.Insert("Error_071", NStr("tr = '""%1"" eklentisi bağlı değil.';
	                                 |de = 'Plug-In ""%1"" ist nicht verbunden.';
	                                 |en = 'Plugin ""%1"" is not connected.';
	                                 |ru = 'Внешняя обработка ""%1"" не подключена.'", Lang));
	
	// %1 - 12
	Strings.Insert("Error_072", NStr("tr = '%1 satırında bir mağaza belirtin.';
	                                 |de = 'Geben Sie ein Lager in der Zeile %1 an.';
	                                 |en = 'Specify a store in line %1.';
	                                 |ru = 'В строке %1 необходимо заполнить склад.'", Lang));

	// %1 - Sales order
	// %2 - Goods receipt
	Strings.Insert("Error_073", NStr("tr = '""%1"" belgelerindeki tüm öğeler, ""%2"" belgeleri kullanılarak zaten alındı.';
	                                 |de = 'Alle Produkte im Dokument ""%1"" sind bereits mithilfe von Dokument(en) ""%2"" erhalten.';
	                                 |en = 'All items in the ""%1"" document(s) are already received using the ""%2"" document(s).';
	                                 |ru = 'Все товары по документу ""%1"" уже получены на основании документа ""%2"".'", Lang));
	Strings.Insert("Error_074", NStr("de = 'Der Währungstransfer ist verfügbar, nur wenn Beträge gleich sind.';
	                                 |tr = 'Para birimi transferi yalnızca tutarlar eşit olduğunda kullanılabilir.';
	                                 |en = 'Currency transfer is available only when amounts are equal.';
	                                 |ru = 'При перемещении денежных средств в одной валюте сумма отправки и получения должны совпадать.'", Lang));

	// %1 - Physical count by location
	Strings.Insert("Error_075", NStr("tr = 'Kapatılmamış ""%1"" dokümanlar var.';
	                                 |de = 'Es gibt Dokumente ""%1"", die nicht geschlossen sind.';
	                                 |en = 'There are ""%1"" documents that are not closed.';
	                                 |ru = 'Есть незакрытые документы ""%1"".'", Lang));
	
	// %1 - 12
	Strings.Insert("Error_077", NStr("tr = 'Ana belge %1 satırında boş.';
	                                 |en = 'Basis document is empty in line %1.';
	                                 |ru = 'Не заполнен документ основания в строке %1'", Lang));
	
	// %1 - 1 %2 - 2
	Strings.Insert("Error_078", NStr("tr = 'Girilen [%1] adet, seri lotuna ait [%2] adedinden farklıdır';
	                                 |en = 'Quantity [%1] does not match the quantity [%2] by serial/lot numbers';
	                                 |ru = 'Количество [%1] по строке не совпадает с количеством [%2] заполненным по серийным номерам. '", Lang));
	
	// %1 - 100.00 
	// %2 - 120.00
	Strings.Insert("Error_079", NStr("tr = 'Ödeme tutar ([%1]) iade tutarından ([%2]) farklıdır';
	                                 |en = 'Payment amount [%1] and return amount [%2] not match';
	                                 |ru = 'Сумма оплаты [%1] и сумма возврата [%2] не сходятся'", Lang));
	
	// %1 - 1 
	// %2 - Goods receipt 
	// %3 - 10 
	// %4 - 8
	Strings.Insert("Error_080", NStr("tr = '%1 satırında %2 %3 adet %4 adedinden daha büyük';
	                                 |en = 'In line %1 quantity by %2 %3 greater than %4';
	                                 |ru = 'В строке %1 количество %2 %3 больше чем %4'", Lang));
	
	// %1 - 1 
	// %2 - Dress 
	// %3 - Red/38 
	// %4 - 8 
	// %5 - 10
	Strings.Insert("Error_081", NStr("tr = '%1 satırında %2-%3 %4 adedi %5 alım irsaliyesindeki adetten daha küçük';
	                                 |en = 'In line %1 quantity by %2-%3 %4 less than quantity by goods receipt %5';
	                                 |ru = 'В строке %1 количество %2-%3 %4 меньше чем количество в приходном ордере %5'", Lang));
	
	// %1 - 1 
	// %2 - Dress 
	// %3 - Red/38 
	// %4 - 10 
	// %5 - 8
	Strings.Insert("Error_082", NStr("tr = '%1 satırında %2-%3 %4 adedi %5 alım irsaliyesindeki adetten daha küçük';
	                                 |en = 'In line %1 quantity by %2-%3 %4 less than quantity by goods receipt %5';
	                                 |ru = 'В строке %1 количество %2-%3 %4 меньше чем количество в приходном ордере %5'", Lang));
	
	// %1 - 12 
	Strings.Insert("Error_083", NStr("tr = '`%1` nolu lokasyon bulunamadı';
	                                 |en = 'Location with number `%1` not found.';
	                                 |ru = 'Локация с номером %1 не найдена.'", Lang));
	
	Strings.Insert("Error_084", NStr("tr = 'Google drive''den resim indirme hatası';
	                                 |en = 'Error to get picture from Google drive';
	                                 |ru = 'Ошибка получения картинки из Google drive'", Lang));
	
	// %1 - 1000
	// %2 - 300
	// %3 - 350
	// %4 - 50
	// %5 - USD
	Strings.Insert("Error_085", NStr("tr = 'Borç limiti aşıldı. Limit: %1, limit bakiyesi: %2, işlem: %3, yetersiz tutar: %4 %5';
	                                 |en = 'Credit limit exceeded. Limit: %1, limit balance: %2, transaction: %3, lack: %4 %5';
	                                 |ru = 'Превышение лимита взаиморасчетов. Лимит: %1, остаток взаиморасчетов: %2, транзакция: %3, не хватающая сумма: %4 %5'", Lang));
	
	// %1 - 10
	// %2 - 20	
	Strings.Insert("Error_086", NStr("tr = '%1 tutarı, ödeme toplamı %2 ile tutmuyor';
	                                 |en = 'Amount : %1 not match Payment term amount: %2';
	                                 |ru = 'Сумма (%1) не сходится с условиями оплата (%2)'", Lang));
	
	Strings.Insert("Error_087", NStr("tr = 'Üst öğe boş olamaz';
	                                 |en = 'Parent can not be empty';
	                                 |ru = 'Родитель не может быть пустым'", Lang));
	Strings.Insert("Error_088", NStr("tr = 'Malzemeye göre filtre uygulandığı takdirse, ana birimi doldurmak lazım.';
	                                 |en = 'Basis unit has to be filled, if item filter used.';
	                                 |ru = 'Если устанавливается фильтр по номенклатуре, основная единица измерения должны быть заполнена.'", Lang));
	
	Strings.Insert("Error_089", NStr("tr = '%1 ""%2"" tanımı mevcuttur.';
	                                 |en = 'Description%1 ""%2"" is already in use.';
	                                 |ru = 'Наименование(%1) ""%2"" уже используется.'", Lang));
	Strings.Insert("Error_090", NStr("tr = '%1 tanımlı değil.';
	                                 |en = '%1 is undefined.';
	                                 |ru = '%1 неопределен.'", Lang));
	
	// %1 - Boots
	// %2 - Red XL
	// %3 - ordered
	// %4 - 11
	// %5 - 15
	// %6 - 4
	// %7 - pcs
	Strings.Insert("Error_090", NStr("tr = '[%1 %2] %3 kalan: %4 %7. İhtiyaç: %5 %7. Eksik: %6 %7.';
	                                 |en = '[%1 %2] %3 remaining: %4 %7. Required: %5 %7. Lacking: %6 %7.';
	                                 |ru = '[%1 %2] %3 остаток: %4 %7. Требуется: %5 %7. Не хватает: %6 %7.'", Lang));
	
	Strings.Insert("Error_091", NStr("en = 'You have to be Administrator for create users.'", Lang));
	
	Strings.Insert("Error_092", NStr("en = 'You can not use %1 role in SaaS mode'", Lang));
	#EndRegion
	
	#Region InfoMessages
	// %1 - Purchase invoice
	// %2 - Purchase order
	Strings.Insert("InfoMessage_001", NStr(
																										"tr = '""%1"" belgesi, ""%2"" belgesiyle tam olarak eşleşmiyor çünkü
		|zaten bu ""%2"" belgesini kısmen kapsayan başka bir ""%1"" belgesi var.';
		|de = 'Das Dokument ""%1"" stimmt mit dem Dokument ""%2"" nicht vollständig überein. 
		|Es gibt ein anderes Dokument ""%1"", das das Dokument ""%2"" teilweise abgedeckt hat.';
		|en = 'The ""%1"" document does not fully match the ""%2"" document because 
		|there is already another ""%1"" document that partially covered this ""%2"" document.';
		|ru = 'Созданный документ ""%1"" не совпадает с документом ""%2"" в силу того, что ранее
		| уже создан документ ""%1"", который частично закрыл документ ""%2"".'"
	, Lang));
	// %1 - Boots
	Strings.Insert("InfoMessage_002", NStr(
																										"de = 'Objekt %1 erstellt.';
		|tr = '%1 nesnesi oluşturuldu.';
		|en = 'Object %1 created.';
		|ru = 'Объект %1 создан.'"
	, Lang));
	Strings.Insert("InfoMessage_003", NStr(
																										"tr = 'Bu bir hizmet formudur.';
		|de = 'Das ist ein Dienstformular.';
		|en = 'This is a service form.';
		|ru = 'Это сервисная форма.'"
	, Lang));
	Strings.Insert("InfoMessage_004", NStr(
																										"tr = 'Devam etmek için nesneyi kaydedin.';
		|de = 'Speichern Sie das Objekt, um fortzufahren.';
		|en = 'Save the object to continue.';
		|ru = 'Для продолжения необходимо сохранить объект.'"
	, Lang));
	Strings.Insert("InfoMessage_005", NStr(
																										"tr = 'Tamamlandı';
		|de = 'Fertig';
		|en = 'Done';
		|ru = 'Завершено'"
	, Lang));
	
	// %1 - Physical count by location
	Strings.Insert("InfoMessage_006", NStr(
																										"tr = '""%1"" belgesi zaten oluşturulmuş. Miktarı güncelleyebilirsiniz.';
		|de = 'Das Dokument ""%1"" wurde bereits erstellt. Sie können die Anzahl aktualisieren.';
		|en = 'The ""%1"" document is already created. You can update the quantity.';
		|ru = 'Документы ""%1"" уже созданы. Возможно использовать только функцию обновления количества.'"
	, Lang));
	
	Strings.Insert("InfoMessage_007", NStr(
																										"tr = '#%1 tarih: %2';
		|de = 'Nr. %1 Datum: %2';
		|en = '#%1 date: %2';
		|ru = '#%1 дата: %2'"
	, Lang));
	// %1 - 12
	// %2 - 20.02.2020
	Strings.Insert("InfoMessage_008", NStr(
																										"tr = '#%1 tarih: %2';
		|de = 'Nr. %1 Datum: %2';
		|en = '#%1 date: %2';
		|ru = '#%1 дата: %2'"
	, Lang));
	
	Strings.Insert("InfoMessage_009", NStr(
																										"tr = 'Girilen ve sayılan toplam adet tutmadı. Lütfen bir daha sayın. Bir deneme daha var.';
		|en = 'Total quantity doesnt match. Please count one more time. You have one more try.';
		|ru = 'Общее количество не сходится. Введите еще раз. Осталась последняя попытка.'"
	, Lang));
	Strings.Insert("InfoMessage_010", NStr(
																										"tr = 'Toplam miktar tutmuyor. Lokasyon tekrar okutulmalı (okutulan veri silinmişti).';
		|en = 'Total quantity doesnt match. Location need to be count again (current count is annulated).';
		|ru = 'Общее количество не совпадает. Локацию необходимо отсканировать заново (текущие данные очищены).'"
	, Lang));
	Strings.Insert("InfoMessage_011", NStr(
																										"tr = 'Mevcut lokasyon ile ilgili girilen ve sayılan adet tuttu. Lütfen bir sonraki lokasyonu okutun.';
		|en = 'Total quantity is ok. Please scan and count next location.';
		|ru = 'Общее количество правильное. Можно начать работу со следующей локацией.'"
	, Lang));
	
	// %1 - 12
	// %2 - Vasiya Pupkin
	Strings.Insert("InfoMessage_012", NStr(
																										"tr = 'Bu lokasyon (#%1) başka kullanıcı tarafından başlatıldı. Kullanıcı: %2';
		|en = 'Current location #%1 was started by another user. User: %2';
		|ru = 'Сканирование текущей локации %1 было начато другим пользователем. Пользователь: %2'"
	, Lang));
	
	// %1 - 12
	Strings.Insert("InfoMessage_013", NStr(
																										"tr = '#%1 lokasyon size atanmıştır. Diğer kullanıcılar bu lokasyonu okutamazlar.';
		|en = 'Current location #%1 was linked to you. Other users will not be able to scan it.';
		|ru = 'Текущая локация %1 закреплена за вами. Другие пользователи не смогут с ней работать.'"
	, Lang));
	
	// %1 - 12
	Strings.Insert("InfoMessage_014", NStr(
																										"tr = 'Bu %1 lokasyon daha önce okutulmuş ve kapatılmıştı. Bir sonraki lokasyon okutunuz.';
		|en = 'Current location #%1 was scanned and closed before. Please scan next location.';
		|ru = 'Текущая локация (%1) уже была отсканирована и закрыта. Пожалуйста, отсканируйте следующую локацию .'"
	, Lang));
	
	// %1 - 123456
	Strings.Insert("InfoMessage_015", NStr(
																										"tr = '%1 seri numarası bulunamadı. Yeni oluşturmak ister misiniz?';
		|en = 'Serial lot %1 was not found. Create new?';
		|ru = 'Серийный номер %1 не найдет. Создать новый?'"
	, Lang));

	// %1 - 123456
	// %2 - Some item
	Strings.Insert("InfoMessage_016", NStr(
																										"tr = 'Okutulan %1 barkod, başka malzeme (%2) için tanımlıdır.';
		|en = 'Scanned barcode %1 is using for another items %2';
		|ru = 'Отсканированный штрихкод %1 уже используется для номенклатуры %2'"
	, Lang));
	
	// %1 - 123456
	Strings.Insert("InfoMessage_017", NStr(
																										"tr = 'Okutulan %1 barkod seri lot numara seti kullanmıyor';
		|en = 'Scanned barcode %1 is not using set for serial numbers';
		|ru = 'Отсканированный штрихкод %1 не используется для серийных номеров'"
	, Lang));
	Strings.Insert("InfoMessage_018", NStr(
																										"tr = 'Seri seçin veya barkodu okutun';
		|en = 'Add or scan serial lot number';
		|ru = 'Добавьте серию или считайте штрихкод серии'"
	, Lang));
	
	Strings.Insert("InfoMessage_019", NStr(
																										"tr = 'Veri değiştirme kısıtlama sebebi:';
		|en = 'Data lock reasons:';
		|ru = 'Причина запрета:'"
	, Lang));
	
  Strings.Insert("InfoMessage_020", NStr(
																										"tr = 'Создать документ: %1';
		|en = 'Created document: %1';
		|ru = 'Создан документ: %1'"
	, Lang));
  
  //%1 - 42
  Strings.Insert("InfoMessage_021", NStr(
																										"tr = 'Alan kilidi kaldırılamaz, nesne %1 kez kullanıldı, örneğin:';
		|en = 'Can not unlock attributes, this is element used %1 times, ex.:';
		|ru = 'Невозможно разблокировать реквизиты, данный элемент использовался %1 раз, например:'"
	, Lang));

	#EndRegion
	
	#Region QuestionToUser
	Strings.Insert("QuestionToUser_001", NStr(
																										"tr = 'Devam etmek için nesneyi yazın. Devam edilsin mi?';
		|de = 'Schreiben Sie das Objekt, um fortzufahren. Fortfahren?';
		|en = 'Write the object to continue. Continue?';
		|ru = 'Для продолжения необходимо сохранить объект. Продолжить?'"
	, Lang));
	Strings.Insert("QuestionToUser_002", NStr(
																										"tr = 'Tarama moduna geçmek istiyor musunuz?';
		|de = 'Möchten Sie zum Scanmodus wechseln?';
		|en = 'Do you want to switch to scan mode?';
		|ru = 'Переключиться в режим сканирования?'"
	, Lang));
	Strings.Insert("QuestionToUser_003", NStr(
																										"de = 'Angegebene Daten über Schecks und Anleihen werden gelöscht. Möchten Sie %1 aktualisieren?';
		|tr = 'Doldurulmuş çek/senet bilgiler temizlenecek. %1 güncellemek ister misiniz?';
		|en = 'Filled data on cheque bonds transactions will be deleted. Do you want to update %1?';
		|ru = 'Заполненные данные по чекам будут очищены. Обновить %1? '"
	, Lang));
	Strings.Insert("QuestionToUser_004", NStr(
																										"tr = 'Vergileri sözleşmeye göre değiştirmek ister misiniz?';
		|de = 'Möchten Sie die Steuersätze gemäß der Vereinbarung verändern?';
		|en = 'Do you want to change tax rates according to the partner term?';
		|ru = 'Изменить налоговые ставки в соответствии с соглашением?'"
	, Lang));
	Strings.Insert("QuestionToUser_005", NStr(
																										"de = 'Möchten Sie die angegebenen Lager aktualisieren?';
		|tr = 'Tüm depoları güncellemek ister misiniz?';
		|en = 'Do you want to update filled stores?';
		|ru = 'Обновить заполненные склады?'"
	, Lang));
	Strings.Insert("QuestionToUser_006", NStr(
																										"de = 'Möchten Sie die angegebene Währung aktualisieren?';
		|tr = 'Doldurulan para birimini güncellemek istiyor musunuz?';
		|en = 'Do you want to update filled currency?';
		|ru = 'Обновить заполненные цены'"
	, Lang));
	Strings.Insert("QuestionToUser_007", NStr(
																										"de = 'Die Transaktionstabelle wird geleert. Fortfahren?';
		|tr = 'İşlemler tablosu temizlenecek. Devam etmek ister misiniz?';
		|en = 'Transaction table will be cleared. Continue?';
		|ru = 'Таблица транзакций будет очищена. Продолжить?'"
	, Lang));
	Strings.Insert("QuestionToUser_008", NStr(
																										"de = 'Wenn Sie die Währung ändern, die Zeilen mit den Überweisungsdokumenten werden geleert. Fortfahren?';
		|tr = 'Para birimini değiştirmek, nakit transferi belgelerini içeren satırları temizleyecektir. Devam ediyor muyuz?';
		|en = 'Changing the currency will clear the rows with cash transfer documents. Continue?';
		|ru = 'При изменении валюты заполненные строки будут отвязаны от документа перемещения денежных средств. Продолжить?'"
	, Lang));
	Strings.Insert("QuestionToUser_009", NStr(
																										"tr = 'Dolu depoları %1 deposu ile değiştirmek ister misiniz?';
		|en = 'Do you want to replace filled stores with store %1?';
		|ru = 'Хотите заменить текущие склады на склад: %1?'"
	, Lang));
	Strings.Insert("QuestionToUser_011", NStr(
																										"tr = 'Dolu fiyat tipleri %1 fiyat tipi ile değiştirmek ister misiniz?';
		|en = 'Do you want to replace filled price types with price type %1?';
		|ru = 'Хотите заменить текущие типы цен на : %1?'"
	, Lang));
	Strings.Insert("QuestionToUser_012", NStr(
																										"de = 'Möchten Sie den Vorgang beenden?';
		|tr = 'Çıkmak istediğinizden emin misiniz?';
		|en = 'Do you want to exit?';
		|ru = 'Вы действительно хотите выйти?'"
	, Lang));
	Strings.Insert("QuestionToUser_013", NStr(
																										"tr = 'Doldurulmuş fiyatları güncellemek istiyor musunuz?';
		|de = 'Möchten Sie die angegebenen Preise aktualisieren?';
		|en = 'Do you want to update filled prices?';
		|ru = 'Обновить заполненные цены?'"
	, Lang));
	Strings.Insert("QuestionToUser_014", NStr(
																										"de = 'Der Transaktionstyp wurde geändert. Möchten Sie angegebene Daten aktualisieren?';
		|tr = 'İşlem türü değiştirildi. Doldurulmuş verileri güncellemek istiyor musunuz?';
		|en = 'Transaction type is changed. Do you want to update filled data?';
		|ru = 'Тип операции изменен. Обновить заполненные данные? '"
	, Lang));
	Strings.Insert("QuestionToUser_015", NStr(
																										"tr = 'Doldurulan veriler silinecektir. Devam edilsin mi?';
		|de = 'Angegebene Daten werden geleert. Fortfahren?';
		|en = 'Filled data will be cleared. Continue?';
		|ru = 'Заполненные данные будут очищены. Продолжить?'"
	, Lang));
	Strings.Insert("QuestionToUser_016", NStr(
																										"de = 'Möchten Sie das Symbol verändern oder löschen?';
		|tr = 'Simgeyi değiştirmek mi yoksa temizlemek mi istiyorsunuz?';
		|en = 'Do you want to change or clear the icon?';
		|ru = 'Заменить или удалить иконку?'"
	, Lang));
	Strings.Insert("QuestionToUser_017", NStr(
																										"tr = 'Kaç tane evrak oluşturulsun?';
		|en = 'How many documents to create?';
		|ru = 'Сколько немобходимо создать документов?'"
	, Lang));
	Strings.Insert("QuestionToUser_018", NStr(
																										"tr = 'Toplam lokasyon adedini giriniz';
		|en = 'Please enter total quantity';
		|ru = 'Введите пожалуйста общее количество'"
	, Lang));
	Strings.Insert("QuestionToUser_019", NStr(
																										"tr = 'Ödeme şekli güncellemek ister misiniz?';
		|en = 'Do you want to update payment term?';
		|ru = 'Хотите обновить условия оплаты?'"
	, Lang));
	Strings.Insert("QuestionToUser_020", NStr(
																										"tr = 'Daha önce kaydedilmiş seçeneği ezip kaydetmek ister misiniz?';
		|en = 'Do you want to overwrite saved option?';
		|ru = 'Хотите перезаписать сохраненный вариант?'"
	, Lang));
	Strings.Insert("QuestionToUser_021", NStr(
																										"tr = 'Bu formu kapatmak istediğinizden emin misiniz? Tüm değişiklikler geri alınacaktır.';
		|en = 'Do you want to close this form? All changes will be lost.';
		|ru = 'Вы хотите закрыть текущую форму? Все изменения будут потеряны.'"
	, Lang));
	#EndRegion
	
	#Region SuggestionToUser
	Strings.Insert("SuggestionToUser_1", NStr(
																										"de = 'Wählen Sie einen Wert aus';
		|tr = 'Bir değer seçin';
		|en = 'Select a value';
		|ru = 'Выберите значение'"
	, Lang));
	Strings.Insert("SuggestionToUser_2", NStr(
																										"de = 'Geben Sie einen Barcode ein';
		|tr = 'Bir barkod giriniz';
		|en = 'Enter a barcode';
		|ru = 'Введите штрихкод'"
	, Lang));
	Strings.Insert("SuggestionToUser_3", NStr(
																										"tr = 'Bir seçenek adı giriniz';
		|de = 'Geben Sie einen Optionsnamen ein';
		|en = 'Enter an option name';
		|ru = 'Наименование параметра ввода'"
	, Lang));
	Strings.Insert("SuggestionToUser_4", NStr(
																										"de = 'Geben Sie einen neuen Optionsnamen ein';
		|tr = 'Yeni bir seçenek adı giriniz';
		|en = 'Enter a new option name';
		|ru = 'Введите новое наименование параметра'"
	, Lang));
	#EndRegion
	
	#Region UsersEvent
	Strings.Insert("UsersEvent_001", NStr(
																										"de = 'Benutzer wurde nach UUID %1 und Namen %2 nicht gefunden.';
		|tr = 'Kullanıcı, %1 UUID ve %2 adı ile bulunamadı.';
		|en = 'User not found by UUID %1 and name %2.';
		|ru = 'Пользователь по UUID %1 и имени %2не найден.'"
	, Lang));
	Strings.Insert("UsersEvent_002", NStr(
																										"tr = 'Kullanıcı, %1 UUID ve %2 adı tarafından bulundu.';
		|de = 'Der Benutzer wurde nach UUID %1 und Namen %2 gefunden.';
		|en = 'User found by UUID %1 and name %2.';
		|ru = 'Пользователь по UUID %1 и имени %2 найден.'"
	, Lang));
	#EndRegion
	
	#Region Items
	
	// Interface
	Strings.Insert("I_1", NStr("de = 'Geben Sie eine Beschreibung an';
	                           |tr = 'Açıklama giriniz';
	                           |en = 'Enter description';
	                           |ru = 'Введите Наименование'", Lang));
	
	Strings.Insert("I_2", NStr("de = 'Geben Sie eine Beschreibung ein';
	                           |tr = 'Açıklama girmek için tıklayın';
	                           |en = 'Click to enter description';
	                           |ru = 'Нажмите для заполнения'", Lang));
	
	Strings.Insert("I_3", NStr("de = 'Füllen Sie das Dokument aus';
	                           |tr = 'Belgeyi doldurunuz';
	                           |en = 'Fill out the document';
	                           |ru = 'Заполните документ'", Lang));
	Strings.Insert("I_4", NStr("tr = 'Tabloda %2 anahtara göre %1 bulmak';
	                           |en = 'Find %1 rows in table by key %2';
	                           |ru = 'Найти %1 строк в таблице по ключу %2'", Lang));
	Strings.Insert("I_5", NStr("tr = 'Desteklenmeyen tablo';
	                           |en = 'Not supported table';
	                           |ru = 'Не поддерживаемая таблица'", Lang));
	Strings.Insert("I_6", NStr("tr = 'Normal sipariş';
	                           |en = 'Ordered without ISR';
	                           |ru = 'Заказано без ЗОТ'", Lang));
	#EndRegion
	
	#Region Exceptions
	Strings.Insert("Exc_001", NStr("tr = 'Desteklenmeyen nesne türü.';
	                               |de = 'Nicht unterstützter Objekttyp.';
	                               |en = 'Unsupported object type.';
	                               |ru = 'Неподдерживаемый тип объекта.'", Lang));
	Strings.Insert("Exc_002", NStr("tr = 'Koşul yok';
	                               |de = 'Keine Bedingungen';
	                               |en = 'No conditions';
	                               |ru = 'Без условий'", Lang));
	Strings.Insert("Exc_003", NStr("de = 'Die Methode ist nicht implementiert: %1.';
	                               |tr = 'Yöntem uygulanmadı: %1.';
	                               |en = 'Method is not implemented: %1.';
	                               |ru = 'Метод не реализован: %1.'", Lang));
	Strings.Insert("Exc_004", NStr("de = 'Die Währung kann aus dem Objekt nicht extrahiert werden.';
	                               |tr = 'Nesneden para birimi çıkarılamıyor.';
	                               |en = 'Cannot extract currency from the object.';
	                               |ru = 'Валюта из объекта не извлечена.'", Lang));
	Strings.Insert("Exc_005", NStr("de = 'Der Bibliothekname ist leer.';
	                               |tr = 'Kütüphane adı boş.';
	                               |en = 'Library name is empty.';
	                               |ru = 'Наименование библиотеки не заполнено.'", Lang));
	Strings.Insert("Exc_006", NStr("de = 'Bibliotheksdaten enthalten keine Version.';
	                               |tr = 'Kütüphane veriler sürümü içermiyor.';
	                               |en = 'Library data does not contain a version.';
	                               |ru = 'Данные библиотеки не содержат версии.'", Lang));
	Strings.Insert("Exc_007", NStr("tr = '%1 kütüphane sürümü için geçerli değil.';
	                               |de = 'Nicht anwendbar für die Bibliotheksversion %1.';
	                               |en = 'Not applicable for library version %1.';
	                               |ru = 'Не применимо для версии библиотеки: %1.'", Lang));
	Strings.Insert("Exc_008", NStr("tr = 'Bilinmeyen satır anahtarı.';
	                               |de = 'Unbekannter Zeilenschlüssel.';
	                               |en = 'Unknown row key.';
	                               |ru = 'Неизвестный ключ строки.'", Lang));
	Strings.Insert("Exc_009", NStr("tr = 'Hata: %1';
	                               |de = 'Fehler: %1';
	                               |en = 'Error: %1';
	                               |ru = 'Ошибка: %1'", Lang));
	#EndRegion
	
	#Region Saas
	// %1 - 12
	Strings.Insert("Saas_001", NStr("de = 'Bereich %1 ist nicht gefunden.';
	                                |tr = '%1 alanı bulunamadı.';
	                                |en = 'Area %1 not found.';
	                                |ru = 'Рабочая область %1 не найдена.'", Lang));
	
	// %1 - closed
	Strings.Insert("Saas_002", NStr("de = 'Bereichsstatus: %1.';
	                                |tr = 'Alan durumu:%1.';
	                                |en = 'Area status: %1.';
	                                |ru = 'Статус рабочей области: %1.'", Lang));
	
	// %1 - en
	Strings.Insert("Saas_003", NStr("tr = 'Şirketin %1 yerelleştirmesi mevcut değil. ';
	                                |de = 'Lokalisierung %1 der Organisation ist nicht verfügbar.';
	                                |en = 'Localization %1 of the company is not available.';
	                                |ru = 'Локализация компании %1 не доступна.'", Lang));
	
	Strings.Insert("Saas_004", NStr("tr = 'Bölge hazırlaması tamamlandı.';
	                                |en = 'Area preparation completed';
	                                |ru = 'Подготовка области завершена'", Lang));
	#EndRegion
	
	#Region FillingFromClassifiers
    // Do not modify "en" strings
    Strings.Insert("Class_001", NStr("de = 'Einkaufspreis';
                                     |tr = 'Alım fiyatı';
                                     |en = 'Purchase price';
                                     |ru = 'Цена закупки'", Lang));
    Strings.Insert("Class_002", NStr("tr = 'Satış fiyatı';
                                     |de = 'Verkaufspreis';
                                     |en = 'Sales price';
                                     |ru = 'Цена продажи'", Lang));
    Strings.Insert("Class_003", NStr("tr = 'Birim maliyet fiyatı';
                                     |de = 'Selbstkosten';
                                     |en = 'Prime cost';
                                     |ru = 'Себестоимость'", Lang));
    Strings.Insert("Class_004", NStr("tr = 'Servis';
                                     |de = 'Berichte';
                                     |en = 'Service';
                                     |ru = 'Сервис'", Lang));
    Strings.Insert("Class_005", NStr("tr = 'Malzeme';
                                     |de = 'Ware';
                                     |en = 'Product';
                                     |ru = 'Товар'", Lang));
    Strings.Insert("Class_006", NStr("tr = 'Ana depo';
                                     |de = 'Hauptlager';
                                     |en = 'Main store';
                                     |ru = 'Главный склад'", Lang));
    Strings.Insert("Class_007", NStr("de = 'Hauptmanager';
                                     |tr = 'Ana sorumlu';
                                     |en = 'Main manager';
                                     |ru = 'Главный менеджер'", Lang));
    Strings.Insert("Class_008", NStr("de = 'Stck.';
                                     |tr = 'adet';
                                     |en = 'pcs';
                                     |ru = 'шт'", Lang));
    #EndRegion
    
    #Region PredefinedObjectDescriptions
	PredefinedDescriptions(Strings, Lang);
	#EndRegion
    
	#Region Titles
	// %1 - Cheque bond transaction
	Strings.Insert("Title_00100", NStr("de = 'Wählen Sie Basisdokumente im Dokument ""%1"" aus.';
	                                   |tr = '""%1"" belgesindeki ana belgeleri seçin.';
	                                   |en = 'Select base documents in the ""%1"" document.';
	                                   |ru = 'Выбор документов-оснований в документе ""%1""'", Lang));	// Form PickUpDocuments
	#EndRegion
	
	#Region ChoiceListValues
	Strings.Insert("CLV_1", NStr("de = 'Alle';
	                             |tr = 'Tümü';
	                             |en = 'All';
	                             |ru = 'Все'", Lang));
	#EndRegion
	
	#Region SalesOrderStatusReport
	Strings.Insert("SOR_1", NStr("en = 'Not enough items in free stock'", Lang));
	#EndRegion	
	Return Strings;
EndFunction

Procedure PredefinedDescriptions(Strings, CodeLanguage)

	Strings.Insert("Description_A001", NStr(
																										"tr = 'Sözleşmeler';
		|de = 'Katalog Vereinbarungen';
		|en = 'Catalog Partner terms';
		|ru = 'Справочник Соглашения'"
	, CodeLanguage));
	Strings.Insert("Description_A003", NStr(
																										"de = 'Katalog Abteilungen';
		|tr = 'K Departmanlar';
		|en = 'Catalog Business units';
		|ru = 'Справочник Подразделения'"
	, CodeLanguage));
	Strings.Insert("Description_A004", NStr(
																										"tr = 'K Kasa/Banka';
		|de = 'Katalog Kassenkonten';
		|en = 'Catalog Cash accounts';
		|ru = 'Справочник Кассы\банковские счета'"
	, CodeLanguage));
	Strings.Insert("Description_A005", NStr(
																										"tr = 'K Çek/Senetler';
		|de = 'Katalog Bankschecks und Anleihen';
		|en = 'Catalog Cheque bonds';
		|ru = 'Справочник Банковские чеки'"
	, CodeLanguage));
	Strings.Insert("Description_A006", NStr(
																										"de = 'Katalog Organisationen';
		|tr = 'K Şirketler';
		|en = 'Catalog Companies';
		|ru = 'Справочник Организации'"
	, CodeLanguage));
	Strings.Insert("Description_A007", NStr(
																										"tr = 'K Şirket tipleri';
		|de = 'Katalog Organisationsarten';
		|en = 'Catalog Company types';
		|ru = 'Справочник Типы организаций'"
	, CodeLanguage));
	Strings.Insert("Description_A008", NStr(
																										"tr = 'K Ülkeler';
		|de = 'Katalog Länder';
		|en = 'Catalog Countries';
		|ru = 'Справочник Страны'"
	, CodeLanguage));
	Strings.Insert("Description_A009", NStr(
																										"de = 'Katalog Währungen';
		|tr = 'K Dövizler';
		|en = 'Catalog Currencies';
		|ru = 'Справочник Валюты'"
	, CodeLanguage));
	Strings.Insert("Description_A010", NStr(
																										"tr = 'K Gider ve gelir tipleri';
		|de = 'Katalog Spesen- und Einnahmearten';
		|en = 'Catalog Expense and revenue types';
		|ru = 'Справочник Статьи доходов и расходов'"
	, CodeLanguage));
	Strings.Insert("Description_A011", NStr(
																										"tr = 'K Varyantlar';
		|de = 'Dokument Artikelvarianten';
		|en = 'Catalog Item keys';
		|ru = 'Справочник Характеристика номенклатуры'"
	, CodeLanguage));
	Strings.Insert("Description_A012", NStr(
																										"tr = 'K Malzemeler';
		|de = 'Katalog Produkte';
		|en = 'Catalog Items';
		|ru = 'Справочник Номенклатура'"
	, CodeLanguage));
	Strings.Insert("Description_A013", NStr(
																										"de = 'Katalog Produkttypen';
		|tr = 'K Malzeme tipleri';
		|en = 'Catalog Item types';
		|ru = 'Справочник Виды номенклатуры'"
	, CodeLanguage));
	Strings.Insert("Description_A014", NStr(
																										"de = 'Katalog Geschäftspartner';
		|tr = 'K Cari hesaplar';
		|en = 'Catalog Partners';
		|ru = 'Справочник Партнеры'"
	, CodeLanguage));
	Strings.Insert("Description_A015", NStr(
																										"de = 'Katalog Preisschlüssel';
		|tr = 'K Fiyat anahtarları';
		|en = 'Catalog Price keys';
		|ru = 'Справочник Ключи аналитики ценообразования'"
	, CodeLanguage));
	Strings.Insert("Description_A016", NStr(
																										"tr = 'K Fiyat tipleri';
		|de = 'Katalog Preistypen';
		|en = 'Catalog Price types';
		|ru = 'Справочник Виды цен'"
	, CodeLanguage));
	Strings.Insert("Description_A017", NStr(
																										"tr = 'K Seri lot numaraları';
		|de = 'Katalog Serien- und Chargennummern';
		|en = 'Catalog Serial lot numbers';
		|ru = 'Справочник Серии номенклатуры'"
	, CodeLanguage));
	Strings.Insert("Description_A018", NStr(
																										"de = 'Katalog Spezifikationen';
		|tr = 'K Reçeteler';
		|en = 'Catalog Specifications';
		|ru = 'Справочник Спецификации товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A019", NStr(
																										"tr = 'K Depolar';
		|de = 'Katalog Lager';
		|en = 'Catalog Stores';
		|ru = 'Справочник Склады'"
	, CodeLanguage));
	Strings.Insert("Description_A020", NStr(
																										"tr = 'K Vergiler';
		|de = 'Katalog Steuern';
		|en = 'Catalog Taxes';
		|ru = 'Справочник Налоги'"
	, CodeLanguage));
	Strings.Insert("Description_A021", NStr(
																										"de = 'Katalog Maßeinheiten';
		|tr = 'K Birimler';
		|en = 'Catalog Units';
		|ru = 'Справочник Единицы измерения номенклатуры'"
	, CodeLanguage));
	Strings.Insert("Description_A022", NStr(
																										"tr = 'K Kullanıcılar';
		|de = 'Katalog Benutzer';
		|en = 'Catalog Users';
		|ru = 'Справочник Пользователи'"
	, CodeLanguage));
	Strings.Insert("Description_A023", NStr(
																										"de = 'Dokument Ausgangszahlung';
		|tr = 'D Banka ödeme fişi';
		|en = 'Document Bank payment';
		|ru = 'Документ Платежное поручение исходящие'"
	, CodeLanguage));
	Strings.Insert("Description_A024", NStr(
																										"de = 'Dokument Eingangszahlung';
		|tr = 'D Banka tahsilat fişi';
		|en = 'Document Bank receipt';
		|ru = 'Документ Платежное поручение входящее'"
	, CodeLanguage));
	Strings.Insert("Description_A025", NStr(
																										"de = 'Dokument Bündelung';
		|tr = 'D Takım oluşturma fişi';
		|en = 'Document Bundling';
		|ru = 'Документ Комплектация набора'"
	, CodeLanguage));
	Strings.Insert("Description_A026", NStr(
																										"tr = 'D Nakit gider fişi';
		|de = 'Dokument Barausgabe';
		|en = 'Document Cash expense';
		|ru = 'Документ Прочие наличные расходы'"
	, CodeLanguage));
	Strings.Insert("Description_A027", NStr(
																										"tr = 'D Kasa ödeme fişi';
		|de = 'Dokument Ausgabebeleg';
		|en = 'Document Cash payment';
		|ru = 'Документ Расходный кассовый ордер'"
	, CodeLanguage));
	Strings.Insert("Description_A028", NStr(
																										"de = 'Dokument Einnahmebeleg';
		|tr = 'D Kasa tahsilat fişi';
		|en = 'Document Cash receipt';
		|ru = 'Документ Приходный кассовый ордер'"
	, CodeLanguage));
	Strings.Insert("Description_A029", NStr(
																										"tr = 'D Nakit gelir fişi';
		|de = 'Dokument Bareinnahme';
		|en = 'Document Cash revenue';
		|ru = 'Документ Прочие наличные доходы'"
	, CodeLanguage));
	Strings.Insert("Description_A030", NStr(
																										"de = 'Dokument Umbuchungsauftrag';
		|tr = 'D Finansal transfer siparişi';
		|en = 'Document Cash transfer order';
		|ru = 'Документ Заявка на перемещение денежных средств'"
	, CodeLanguage));
	Strings.Insert("Description_A031", NStr(
																										"de = 'Dokument Scheck- und Anleihetransaktion';
		|tr = 'D Çek/Senet bordrosu';
		|en = 'Document Cheque bond transaction';
		|ru = 'Документ Операция по чекам и долговым обязательствам'"
	, CodeLanguage));
	Strings.Insert("Description_A032", NStr(
																										"tr = 'D Satın alma irsaliyesi';
		|de = 'Dokument Wareneingang';
		|en = 'Document Goods receipt';
		|ru = 'Документ Приходная товарная накладная'"
	, CodeLanguage));
	Strings.Insert("Description_A033", NStr(
																										"de = 'Dokument Antrag auf Geldeingang';
		|tr = 'D Tahsilat siparişi';
		|en = 'Document Incoming payment order';
		|ru = 'Документ Заявка на поступление денежных средств'"
	, CodeLanguage));
	Strings.Insert("Description_A034", NStr(
																										"de = 'Dokument Lagerumbuchung';
		|tr = 'D Depo transfer fişi';
		|en = 'Document Inventory transfer';
		|ru = 'Документ Перемещение товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A035", NStr(
																										"tr = 'D Depo transfer siparişi';
		|de = 'Dokument Lagerumbuchungsauftrag';
		|en = 'Document Inventory transfer order';
		|ru = 'Документ Заказ на перемещение товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A036", NStr(
																										"tr = 'D Fatura kapatma fişi';
		|de = 'Dokument Rechnungsabgleich';
		|en = 'Document Invoice match';
		|ru = 'Документ Сопоставление документа-основания взаиморасчетов с платежами'"
	, CodeLanguage));
	Strings.Insert("Description_A037", NStr(
																										"de = 'Dokument Kennzeichnung';
		|tr = 'D Seri lot tanımlama fişi';
		|en = 'Document Labeling';
		|ru = 'Документ Штрихкодирование'"
	, CodeLanguage));
	Strings.Insert("Description_A038", NStr(
																										"tr = 'D Açılış kayıt fişi';
		|de = 'Dokument Anfangsbestand';
		|en = 'Document Opening entry';
		|ru = 'Документ Ввод начальных остатков'"
	, CodeLanguage));
	Strings.Insert("Description_A039", NStr(
																										"de = 'Dokument Antrag auf Geldausgang';
		|tr = 'D Ödeme siparişi';
		|en = 'Document Outgoing payment order';
		|ru = 'Документ Заявка на расходование денежных средств'"
	, CodeLanguage));
	Strings.Insert("Description_A040", NStr(
																										"tr = 'D Lokasyon sayım fişi';
		|de = 'Dokument Inventurliste';
		|en = 'Document Physical count by location';
		|ru = 'Документ Пересчет товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A041", NStr(
																										"de = 'Dokument Inventur';
		|tr = 'D Sayım fişi';
		|en = 'Document Physical inventory';
		|ru = 'Документ Инвентаризация товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A042", NStr(
																										"de = 'Dokument Preiskalkulation';
		|tr = 'D Fiyat listesi';
		|en = 'Document Price list';
		|ru = 'Документ Установка цен номенклатуры'"
	, CodeLanguage));
	Strings.Insert("Description_A043", NStr(
																										"tr = 'D Satın alma faturası';
		|de = 'Dokument Einkaufsrechnung';
		|en = 'Document Purchase invoice';
		|ru = 'Документ Поступление товаров и услуг'"
	, CodeLanguage));
	Strings.Insert("Description_A044", NStr(
																										"tr = 'D Satın alma siparişi';
		|de = 'Dokument Bestellung';
		|en = 'Document Purchase order';
		|ru = 'Документ Заказ поставщику'"
	, CodeLanguage));
	Strings.Insert("Description_A045", NStr(
																										"tr = 'D Alım iadesi';
		|de = 'Dokument Lieferantenretoure';
		|en = 'Document Purchase return';
		|ru = 'Документ Возврат поставщику'"
	, CodeLanguage));
	Strings.Insert("Description_A046", NStr(
																										"tr = 'D Alım iade siparişi';
		|de = 'Dokument Lieferantenretourenauftrag';
		|en = 'Document Purchase return order';
		|ru = 'Документ Заказ на возврат поставщику'"
	, CodeLanguage));
	Strings.Insert("Description_A047", NStr(
																										"de = 'Dokument Offene Posten';
		|tr = 'D Cari hesap mutabakat fişi';
		|en = 'Document Reconciliation statement';
		|ru = 'Документ Сверка взаиморасчетов'"
	, CodeLanguage));
	Strings.Insert("Description_A048", NStr(
																										"tr = 'D Satış faturası';
		|de = 'Dokument Rechnung';
		|en = 'Document Sales invoice';
		|ru = 'Документ Реализация товаров и услуг'"
	, CodeLanguage));
	Strings.Insert("Description_A049", NStr(
																										"tr = 'D Satış siparişi';
		|de = 'Dokument Auftrag';
		|en = 'Document Sales order';
		|ru = 'Документ Заказ покупателя'"
	, CodeLanguage));
	Strings.Insert("Description_A050", NStr(
																										"tr = 'D Satış iadesi';
		|de = 'Dokument Kundenretoure';
		|en = 'Document Sales return';
		|ru = 'Документ Возврат товаров от покупателя'"
	, CodeLanguage));
	Strings.Insert("Description_A051", NStr(
																										"de = 'Dokument Kundenretourenauftrag';
		|tr = 'D Satış iade siparişi';
		|en = 'Document Sales return order';
		|ru = 'Документ Заказ на возврат покупателя'"
	, CodeLanguage));
	Strings.Insert("Description_A052", NStr(
																										"tr = 'D Sevk irsaliyesi';
		|de = 'Dokument Lieferschein';
		|en = 'Document Shipment confirmation';
		|ru = 'Документ Расходная товарная накладная'"
	, CodeLanguage));
	Strings.Insert("Description_A053", NStr(
																										"de = 'Dokument Aktivierung von Warenüberschüssen';
		|tr = 'D Stok sayım girişi';
		|en = 'Document Stock adjustment as surplus';
		|ru = 'Документ Оприходование товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A054", NStr(
																										"tr = 'D Stok sayım çıkışı';
		|de = 'Dokument Warenabschreibung';
		|en = 'Document Stock adjustment as write off';
		|ru = 'Документ Списание товаров'"
	, CodeLanguage));
	Strings.Insert("Description_A056", NStr(
																										"de = 'Dokument Entbündelung';
		|tr = 'D Ürün takımı bozma fişi';
		|en = 'Document Unbundling';
		|ru = 'Документ Разукомлектация набора'"
	, CodeLanguage));
	Strings.Insert("Description_A057", NStr(
																										"de = 'Benutzerdefiniert';
		|tr = 'Kullanıcı tanımlı';
		|en = 'User defined';
		|ru = 'Произвольный'"
	, CodeLanguage));
	Strings.Insert("Description_A058", NStr(
																										"tr = 'Gelen çek/senet';
		|de = 'Eingangsschecks/Anleihen';
		|en = 'Cheque bond incoming';
		|ru = 'Входящие банковские чеки'"
	, CodeLanguage));
	Strings.Insert("Description_A059", NStr(
																										"tr = 'Çıkan çek/senet';
		|de = 'Ausgangsschecks/Anleihen';
		|en = 'Cheque bond outgoing';
		|ru = 'Исходящие банковские чеки'"
	, CodeLanguage));
	Strings.Insert("Description_A060", NStr(
																										"de = 'Dokument Gut- und Lastschrift';
		|tr = 'D Borç alacak dekontu';
		|en = 'Document Credit debit note';
		|ru = 'Документ Списание задолженности'"
	, CodeLanguage));
	Strings.Insert("Description_A061", NStr(
																										"de = 'Abrechnungswährung';
		|tr = 'Cari hesap dövizi';
		|en = 'Settlement currency';
		|ru = 'Валюта транзакции'"
	, CodeLanguage));
	Strings.Insert("Description_A062", NStr(
																										"tr = 'Alacak dekontu';
		|de = 'Gutschrift';
		|en = 'Credit note';
		|ru = 'Кредит-нота'"
	, CodeLanguage));
	Strings.Insert("Description_A063", NStr(
																										"tr = 'Borç dekontu';
		|de = 'Lastschrift';
		|en = 'Debit note';
		|ru = 'Дебет-нота'"
	, CodeLanguage));
		
EndProcedure
