package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import io.sentry.d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaaa {
    public final Map a = Collections.synchronizedMap(new WeakHashMap());
    public final Map b = Collections.synchronizedMap(new WeakHashMap());

    public final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        Map map = this.a;
        synchronized (map) {
            hashMap = new HashMap(map);
        }
        Map map2 = this.b;
        synchronized (map2) {
            hashMap2 = new HashMap(map2);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                entry.getKey().getClass();
                d.i();
                return;
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).c(new ApiException(status));
            }
        }
    }
}
