package androidx.compose.runtime.internal;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.OneShotCancellationHandle;
import androidx.compose.runtime.internal.AwaiterQueue.Awaiter;
import defpackage.n1;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AwaiterQueue<A extends Awaiter> {
    public Throwable b;
    public final Object a = new Object();
    public final AtomicInt c = new AtomicInteger(0);
    public MutableObjectList d = new MutableObjectList();
    public MutableObjectList e = new MutableObjectList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Awaiter {
        public abstract void a();

        public abstract void b(Throwable th);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    public final CancellationHandle a(Awaiter awaiter, Function0 function0) {
        int i;
        int i2;
        boolean z;
        int i3;
        ?? obj = new Object();
        obj.j = -1;
        synchronized (this.a) {
            Throwable th = this.b;
            if (th != null) {
                awaiter.b(th);
                return CancellationHandle.Companion.a;
            }
            AtomicInt atomicInt = this.c;
            do {
                i = atomicInt.get();
                i2 = i + 1;
            } while (!atomicInt.compareAndSet(i, i2));
            if ((134217727 & i2) == 1) {
                z = true;
            } else {
                z = false;
            }
            obj.j = (i2 >>> 27) & 15;
            this.d.g(awaiter);
            if (z && function0 != null) {
                try {
                    function0.a();
                } catch (Throwable th2) {
                    synchronized (this.a) {
                        try {
                            if (this.b == null) {
                                this.b = th2;
                                MutableObjectList mutableObjectList = this.d;
                                Object[] objArr = mutableObjectList.a;
                                int i4 = mutableObjectList.b;
                                for (int i5 = 0; i5 < i4; i5++) {
                                    ((Awaiter) objArr[i5]).b(th2);
                                }
                                this.d.k();
                                AtomicInt atomicInt2 = this.c;
                                do {
                                    i3 = atomicInt2.get();
                                } while (!atomicInt2.compareAndSet(i3, ((((i3 >>> 27) & 15) + 1) & 15) << 27));
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
            return new OneShotCancellationHandle(new n1(awaiter, this, (Object) obj, 1));
        }
    }

    public final void b(Function1 function1) {
        int i;
        synchronized (this.a) {
            try {
                MutableObjectList mutableObjectList = this.d;
                this.d = this.e;
                this.e = mutableObjectList;
                AtomicInt atomicInt = this.c;
                do {
                    i = atomicInt.get();
                } while (!atomicInt.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                int i2 = mutableObjectList.b;
                for (int i3 = 0; i3 < i2; i3++) {
                    function1.b(mutableObjectList.b(i3));
                }
                mutableObjectList.k();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
