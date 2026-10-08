package io.sentry.util;

import io.sentry.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EventProcessorUtils {
    public static CopyOnWriteArrayList a(CopyOnWriteArrayList copyOnWriteArrayList) {
        ArrayList arrayList = new ArrayList();
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                d.i();
                return null;
            }
        }
        return new CopyOnWriteArrayList(arrayList);
    }
}
