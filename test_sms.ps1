# Массив с путями к коллекциям Postman
$collections = @(
    "F:\IT\handmade\postman\uralsib_SMS_postman_collection.json",
    "F:\IT\handmade\postman\gazprom_SMS_postman_collection.json",
	"F:\IT\handmade\postman\raiffeizen1_SMS_postman_collection.json",
    "F:\IT\handmade\postman\sinara_SMS_postman_collection.json",
    "F:\IT\handmade\postman\tinkoff_SMS_postman_collection.json",
    "F:\IT\handmade\postman\bars1_SMS_postman_collection.json",
    "F:\IT\handmade\postman\mtc1_SMS_postman_collection.json",
    "F:\IT\handmade\postman\in1_SMS_postman_collection.json",
    "F:\IT\handmade\postman\in3_SMS_postman_collection.json",
    "F:\IT\handmade\postman\in4_SMS_postman_collection.json",
    "F:\IT\handmade\postman\out1_SMS_postman_collection.json",
    "F:\IT\handmade\postman\out2_SMS_postman_collection.json",
    "F:\IT\handmade\postman\out3_SMS_postman_collection.json"
    #"F:\temp\handmade\postman\privat_SMS_postman_collection.json"
    #"F:\temp\handmade\postman\sens_SMS_postman_collection.json"
    #"F:\temp\handmade\postman\ukrgaz_SMS_postman_collection.json"
)

# Путь к файлу окружения
$environment = "F:\IT\handmade\postman\Handmade.postman_environment.json"

# Путь для отчета и другие параметры
$reportPath = "F:\IT\handmade\postman\report"
$delay = 1000

# Цикл для выполнения каждой коллекции
foreach ($collection in $collections) {
    # Начало измерения времени
    $startTime = Get-Date

    # Выполнение команды newman run
    newman run $collection -e $environment --reporters htmlextra --reporter-htmlextra-export $reportPath --delay-request $delay

    # Конец измерения времени
    $endTime = Get-Date

    # Расчет времени выполнения
    $duration = $endTime - $startTime

    # Вывод времени выполнения
    Write-Output ("Время выполнения для коллекции ${collection}: " + $duration)
}
