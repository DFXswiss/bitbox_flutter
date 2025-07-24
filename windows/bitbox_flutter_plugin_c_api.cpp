#include "include/bitbox_flutter/bitbox_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "bitbox_flutter_plugin.h"

void BitboxFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  bitbox_flutter::BitboxFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
