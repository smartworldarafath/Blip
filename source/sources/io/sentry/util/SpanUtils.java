package io.sentry.util;

import io.sentry.FilterString;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SpanUtils {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();

    public static boolean a(String str, List list) {
        boolean matches;
        if (str != null && list != null && !list.isEmpty()) {
            ConcurrentHashMap concurrentHashMap = a;
            if (concurrentHashMap.containsKey(str)) {
                return ((Boolean) concurrentHashMap.get(str)).booleanValue();
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((FilterString) it.next()).a.equalsIgnoreCase(str)) {
                    concurrentHashMap.put(str, Boolean.TRUE);
                    return true;
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                try {
                    Pattern pattern = ((FilterString) it2.next()).b;
                    if (pattern == null) {
                        matches = false;
                    } else {
                        matches = pattern.matcher(str).matches();
                    }
                } catch (Throwable unused) {
                }
                if (matches) {
                    concurrentHashMap.put(str, Boolean.TRUE);
                    return true;
                }
                continue;
            }
            concurrentHashMap.put(str, Boolean.FALSE);
        }
        return false;
    }
}
