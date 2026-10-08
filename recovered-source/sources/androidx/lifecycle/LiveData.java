package androidx.lifecycle;

import androidx.arch.core.internal.SafeIterableMap;
import androidx.work.Operation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final Object i = new Object();
    public final Object a;
    public final SafeIterableMap b;
    public volatile Object c;
    public volatile Object d;
    public int e;
    public boolean f;
    public boolean g;
    public final Runnable h;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public abstract class ObserverWrapper {
        public int a;
    }

    public LiveData(int i2) {
        Operation.State.IN_PROGRESS in_progress = Operation.b;
        this.a = new Object();
        this.b = new SafeIterableMap();
        this.d = i;
        this.h = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            @Override // java.lang.Runnable
            public final void run() {
                Object obj;
                synchronized (LiveData.this.a) {
                    obj = LiveData.this.d;
                    LiveData.this.d = LiveData.i;
                }
                LiveData.this.a(obj);
            }
        };
        this.c = in_progress;
        this.e = 0;
    }

    public abstract void a(Object obj);

    public LiveData() {
        this.a = new Object();
        this.b = new SafeIterableMap();
        Object obj = i;
        this.d = obj;
        this.h = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            @Override // java.lang.Runnable
            public final void run() {
                Object obj2;
                synchronized (LiveData.this.a) {
                    obj2 = LiveData.this.d;
                    LiveData.this.d = LiveData.i;
                }
                LiveData.this.a(obj2);
            }
        };
        this.c = obj;
        this.e = -1;
    }
}
