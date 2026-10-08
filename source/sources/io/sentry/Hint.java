package io.sentry;

import io.sentry.util.AutoClosableReentrantLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Hint {
    public static final HashMap h;
    public final HashMap a = new HashMap();
    public final ArrayList b = new ArrayList();
    public final AutoClosableReentrantLock c = new ReentrantLock();
    public Attachment d = null;
    public Attachment e = null;
    public Attachment f = null;
    public ReplayRecording g = null;

    static {
        HashMap hashMap = new HashMap();
        h = hashMap;
        hashMap.put("boolean", Boolean.class);
        hashMap.put("char", Character.class);
        hashMap.put("byte", Byte.class);
        hashMap.put("short", Short.class);
        hashMap.put("int", Integer.class);
        hashMap.put("long", Long.class);
        hashMap.put("float", Float.class);
        hashMap.put("double", Double.class);
    }

    public final void a() {
        ISentryLifecycleToken a = this.c.a();
        try {
            Iterator it = this.a.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (entry.getKey() != null && ((String) entry.getKey()).startsWith("sentry:")) {
                }
                it.remove();
            }
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final Object b(String str) {
        ISentryLifecycleToken a = this.c.a();
        try {
            Object obj = this.a.get(str);
            a.close();
            return obj;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final Object c(Class cls, String str) {
        ISentryLifecycleToken a = this.c.a();
        try {
            Object obj = this.a.get(str);
            if (cls.isInstance(obj)) {
                a.close();
                return obj;
            }
            Class cls2 = (Class) h.get(cls.getCanonicalName());
            if (obj != null && cls.isPrimitive() && cls2 != null) {
                if (cls2.isInstance(obj)) {
                    a.close();
                    return obj;
                }
            }
            a.close();
            return null;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void d(Object obj, String str) {
        ISentryLifecycleToken a = this.c.a();
        try {
            this.a.put(str, obj);
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
