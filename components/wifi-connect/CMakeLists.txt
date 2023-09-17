idf_component_register(SRCS "wifi-connect.cpp"
REQUIRES esp_wifi nvs_flash esp_event esp_netif lwip efuse
                    INCLUDE_DIRS "include")
