package io.sentry.internal.modules;

import io.sentry.ILogger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CompositeModulesLoader extends ModulesLoader {
    public final List e;

    public CompositeModulesLoader(List list, ILogger iLogger) {
        super(iLogger);
        this.e = list;
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    public final Map b() {
        TreeMap treeMap = new TreeMap();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            Map a = ((IModulesLoader) it.next()).a();
            if (a != null) {
                treeMap.putAll(a);
            }
        }
        return treeMap;
    }
}
