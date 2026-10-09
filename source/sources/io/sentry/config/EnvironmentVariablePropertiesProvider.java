package io.sentry.config;

import io.sentry.util.StringUtils;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EnvironmentVariablePropertiesProvider implements PropertiesProvider {
    public static String e(String str) {
        return "SENTRY_" + str.replace(".", "_").replace("-", "_").toUpperCase(Locale.ROOT);
    }

    @Override // io.sentry.config.PropertiesProvider
    public final Map c() {
        String b;
        String concat = e("tags").concat("_");
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry<String, String> entry : System.getenv().entrySet()) {
            String key = entry.getKey();
            if (key.startsWith(concat) && (b = StringUtils.b(entry.getValue())) != null) {
                concurrentHashMap.put(key.substring(concat.length()).toLowerCase(Locale.ROOT), b);
            }
        }
        return concurrentHashMap;
    }

    @Override // io.sentry.config.PropertiesProvider
    public final String getProperty(String str) {
        return StringUtils.b(System.getenv(e(str)));
    }
}
