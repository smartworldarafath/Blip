package io.sentry.android.core.anr;

import defpackage.v1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnrCulpritIdentifier {
    public static final ArrayList a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StackTraceKey {
        public final StackTraceElement[] a;
        public final int b;
        public final int c;
        public final int d;

        public StackTraceKey(StackTraceElement[] stackTraceElementArr, int i, int i2) {
            this.a = stackTraceElementArr;
            this.b = i;
            this.c = i2;
            int i3 = 1;
            while (i <= this.c) {
                i3 = (i3 * 31) + this.a[i].hashCode();
                i++;
            }
            this.d = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StackTraceKey)) {
                return false;
            }
            StackTraceKey stackTraceKey = (StackTraceKey) obj;
            int i = stackTraceKey.b;
            if (this.d != stackTraceKey.d) {
                return false;
            }
            int i2 = this.c;
            int i3 = this.b;
            int i4 = (i2 - i3) + 1;
            if (i4 != (stackTraceKey.c - i) + 1) {
                return false;
            }
            for (int i5 = 0; i5 < i4; i5++) {
                if (!this.a[i3 + i5].equals(stackTraceKey.a[i + i5])) {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode() {
            return this.d;
        }
    }

    static {
        ArrayList arrayList = new ArrayList(11);
        a = arrayList;
        arrayList.add("java.lang");
        arrayList.add("java.util");
        arrayList.add("android.app");
        arrayList.add("android.os.Handler");
        arrayList.add("android.os.Looper");
        arrayList.add("android.view");
        arrayList.add("android.widget");
        arrayList.add("com.android.internal");
        arrayList.add("com.google.android");
        arrayList.add("kotlin");
        arrayList.add("kotlinx.coroutines");
    }

    public static AggregatedStackTrace a(List list) {
        if (!list.isEmpty()) {
            HashMap hashMap = new HashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AnrStackTrace anrStackTrace = (AnrStackTrace) it.next();
                StackTraceElement[] stackTraceElementArr = anrStackTrace.j;
                if (stackTraceElementArr.length >= 2) {
                    int i = 0;
                    for (int length = stackTraceElementArr.length - 1; length >= 0; length--) {
                        String className = stackTraceElementArr[length].getClassName();
                        Iterator it2 = a.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (className.startsWith((String) it2.next())) {
                                    break;
                                }
                            } else {
                                i++;
                                break;
                            }
                        }
                        float length2 = i / (stackTraceElementArr.length - length);
                        StackTraceKey stackTraceKey = new StackTraceKey(stackTraceElementArr, length, stackTraceElementArr.length - 1);
                        AggregatedStackTrace aggregatedStackTrace = (AggregatedStackTrace) hashMap.get(stackTraceKey);
                        if (aggregatedStackTrace == null) {
                            hashMap.put(stackTraceKey, new AggregatedStackTrace(anrStackTrace.j, length, r6.length - 1, anrStackTrace.k, length2));
                        } else {
                            long j = anrStackTrace.k;
                            aggregatedStackTrace.g = Math.min(aggregatedStackTrace.g, j);
                            aggregatedStackTrace.h = Math.max(aggregatedStackTrace.h, j);
                            aggregatedStackTrace.f++;
                        }
                    }
                }
            }
            if (hashMap.isEmpty()) {
                return null;
            }
            return (AggregatedStackTrace) Collections.max(hashMap.values(), new v1(9));
        }
        return null;
    }
}
