package io.sentry.config;

import defpackage.q;
import io.sentry.util.Objects;
import io.sentry.util.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class AbstractPropertiesProvider implements PropertiesProvider {
    public final String a;
    public final Properties b;

    public AbstractPropertiesProvider(String str, Properties properties) {
        this.a = str;
        Objects.b(properties, "properties are required");
        this.b = properties;
    }

    @Override // io.sentry.config.PropertiesProvider
    public final Map c() {
        String l = q.l(new StringBuilder(), this.a, "tags.");
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.b.entrySet()) {
            if ((entry.getKey() instanceof String) && (entry.getValue() instanceof String)) {
                String str = (String) entry.getKey();
                if (str.startsWith(l)) {
                    hashMap.put(str.substring(l.length()), StringUtils.b((String) entry.getValue()));
                }
            }
        }
        return hashMap;
    }

    @Override // io.sentry.config.PropertiesProvider
    public final String getProperty(String str) {
        return StringUtils.b(this.b.getProperty(this.a + str));
    }
}
