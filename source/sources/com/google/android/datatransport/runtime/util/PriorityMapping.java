package com.google.android.datatransport.runtime.util;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PriorityMapping {
    public static final SparseArray a = new SparseArray();
    public static final HashMap b;

    static {
        HashMap hashMap = new HashMap();
        b = hashMap;
        hashMap.put(Priority.j, 0);
        hashMap.put(Priority.k, 1);
        hashMap.put(Priority.l, 2);
        for (Priority priority : hashMap.keySet()) {
            a.append(((Integer) b.get(priority)).intValue(), priority);
        }
    }

    public static int a(Priority priority) {
        Integer num = (Integer) b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        fe.n(priority, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    public static Priority b(int i) {
        Priority priority = (Priority) a.get(i);
        if (priority != null) {
            return priority;
        }
        u2.g(q.g(i, "Unknown Priority for value "));
        return null;
    }
}
