package androidx.room.concurrent;

import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExclusiveLock {
    public static final Companion c = new Object();
    public static final LinkedHashMap d = new LinkedHashMap();
    public final ReentrantLock a;
    public final FileLock b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public ExclusiveLock(String str, boolean z) {
        ReentrantLock reentrantLock;
        FileLock fileLock;
        synchronized (c) {
            try {
                LinkedHashMap linkedHashMap = d;
                Object obj = linkedHashMap.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    linkedHashMap.put(str, obj);
                }
                reentrantLock = (ReentrantLock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a = reentrantLock;
        if (z) {
            fileLock = new FileLock(str);
        } else {
            fileLock = null;
        }
        this.b = fileLock;
    }
}
