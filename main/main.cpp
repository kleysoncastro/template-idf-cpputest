#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
//#include "esp_flash.h"


extern "C" void app_main();

void app_main(void)
{
    printf("Hello world!\n");
}