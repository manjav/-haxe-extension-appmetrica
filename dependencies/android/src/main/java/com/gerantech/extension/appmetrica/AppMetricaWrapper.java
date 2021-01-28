package com.gerantech.extension.appmetrica;

import org.haxe.extension.Extension;
import org.haxe.lime.HaxeObject;

import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.YandexMetricaConfig;

public class AppMetricaWrapper extends Extension {
    public static void init(String apiKey) {

        YandexMetricaConfig config = YandexMetricaConfig.newConfigBuilder(apiKey).build();
        // Initializing the AppMetrica SDK.
        YandexMetrica.activate(mainContext.getApplicationContext(), config);
        // Automatic tracking of user activity.
        YandexMetrica.enableActivityAutoTracking(mainActivity.getApplication());
    }

    public static void showAd(String placementId) {
    }
}
