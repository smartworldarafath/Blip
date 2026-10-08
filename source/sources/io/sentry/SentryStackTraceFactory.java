package io.sentry;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryStackTraceFactory {
    public final SentryOptions a;

    public SentryStackTraceFactory(SentryOptions sentryOptions) {
        this.a = sentryOptions;
    }

    public static Boolean b(String str, List list, List list2) {
        if (str != null && !str.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (str.startsWith((String) it.next())) {
                    return Boolean.TRUE;
                }
            }
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (str.startsWith((String) it2.next())) {
                    return Boolean.FALSE;
                }
            }
            return null;
        }
        return Boolean.TRUE;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
    public final ArrayList a(StackTraceElement[] stackTraceElementArr, boolean z) {
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    if (z || !className.startsWith("io.sentry.") || className.startsWith("io.sentry.samples.") || className.startsWith("io.sentry.mobile.")) {
                        ?? obj = new Object();
                        SentryOptions sentryOptions = this.a;
                        obj.t = b(className, sentryOptions.getInAppIncludes(), sentryOptions.getInAppExcludes());
                        obj.o = className;
                        obj.n = stackTraceElement.getMethodName();
                        obj.m = stackTraceElement.getFileName();
                        if (stackTraceElement.getLineNumber() >= 0) {
                            obj.p = Integer.valueOf(stackTraceElement.getLineNumber());
                        }
                        obj.v = Boolean.valueOf(stackTraceElement.isNativeMethod());
                        arrayList.add(obj);
                        if (arrayList.size() >= 100) {
                            break;
                        }
                    }
                }
            }
            Collections.reverse(arrayList);
            return arrayList;
        }
        return null;
    }
}
