#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
#include "esp_wifi.h"
#include "wifi-connect.h"
#include "main.h"
//#include "esp_flash.h"
extern "C" void app_main();




Main App;

void Main::run(void)
{
    wifiState = Wifi.GetState();

    switch (wifiState)
    {
    case WIFI::Wifi::state_e::READY_TO_CONNECT:
        std::cout << "Wifi Status: READY_TO_CONNECT\n";
        Wifi.Begin();
        break;
    case WIFI::Wifi::state_e::DISCONNECTED:
        std::cout << "Wifi Status: DISCONNECTED\n";
        Wifi.Begin();
        break;
    case WIFI::Wifi::state_e::CONNECTING:
        std::cout << "Wifi Status: CONNECTING\n";
        break;
    case WIFI::Wifi::state_e::WAITING_FOR_IP:
        std::cout << "Wifi Status: WAITING_FOR_IP\n";
        break;
    case WIFI::Wifi::state_e::ERROR:
        std::cout << "Wifi Status: ERROR\n";
        break;
    case WIFI::Wifi::state_e::CONNECTED:
        std::cout << "Wifi Status: CONNECTED\n";
        break;
    case WIFI::Wifi::state_e::NOT_INITIALIZED:
        std::cout << "Wifi Status: NOT_INITIALIZED\n";
        break;
    case WIFI::Wifi::state_e::INITIALIZED:
        std::cout << "Wifi Status: INITIALIZED\n";
        break;
    }
}

void task_log(void *paras) {
while (true)
{
    App.run();
    vTaskDelay(portTICK_PERIOD_MS / 100);

}

}


void Main::setup(void)
{
    esp_event_loop_create_default();
    nvs_flash_init();

    Wifi.SetCredentials("kleyson", "3249101318");
    Wifi.Init();
}

void app_main(void)
{

    xTaskCreate(task_log, "task_log", 2048, NULL, 10, NULL);

    App.setup();

    printf("Hello world!\n");
}