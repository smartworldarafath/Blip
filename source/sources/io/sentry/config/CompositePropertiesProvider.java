package io.sentry.config;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CompositePropertiesProvider implements PropertiesProvider {
    public final ArrayList a;

    public CompositePropertiesProvider(ArrayList arrayList) {
        this.a = arrayList;
    }

    @Override // io.sentry.config.PropertiesProvider
    public final Map c() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            concurrentHashMap.putAll(((PropertiesProvider) it.next()).c());
        }
        return concurrentHashMap;
    }

    @Override // io.sentry.config.PropertiesProvider
    public final String getProperty(String str) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            String property = ((PropertiesProvider) it.next()).getProperty(str);
            if (property != null) {
                return property;
            }
        }
        return null;
    }
}
