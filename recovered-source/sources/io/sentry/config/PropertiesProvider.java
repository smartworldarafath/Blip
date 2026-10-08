package io.sentry.config;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface PropertiesProvider {
    default Boolean a(String str) {
        String property = getProperty(str);
        if (property != null) {
            return Boolean.valueOf(property);
        }
        return null;
    }

    default Long b(String str) {
        String property = getProperty(str);
        if (property != null) {
            try {
                return Long.valueOf(property);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    Map c();

    default List d(String str) {
        String property = getProperty(str);
        if (property != null) {
            return Arrays.asList(property.split(","));
        }
        return Collections.EMPTY_LIST;
    }

    String getProperty(String str);
}
