package kotlinx.coroutines.internal;

import defpackage.u2;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LockFreeTaskQueueCore<E> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state$volatile");
    public static final Symbol g = new Symbol("REMOVE_FROZEN");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;
    public final int a;
    public final boolean b;
    public final int c;
    public final /* synthetic */ AtomicReferenceArray d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Placeholder {
        public final int a;

        public Placeholder(int i) {
            this.a = i;
        }
    }

    public LockFreeTaskQueueCore(int i, boolean z) {
        this.a = i;
        this.b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 <= 1073741823) {
            if ((i & i2) == 0) {
                return;
            }
            u2.l("Check failed.");
            throw null;
        }
        u2.l("Check failed.");
        throw null;
    }

    public final int a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                if ((2305843009213693952L & j) != 0) {
                    return 2;
                }
                return 1;
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.c;
            if (((i2 + 2) & i3) != (i & i3)) {
                boolean z = this.b;
                AtomicReferenceArray atomicReferenceArray = this.d;
                if (!z && atomicReferenceArray.get(i2 & i3) != null) {
                    int i4 = this.a;
                    if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                        return 1;
                    }
                } else {
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                    if (f.compareAndSet(lockFreeTaskQueueCore, j, ((-1152921503533105153L) & j) | (((i2 + 1) & 1073741823) << 30))) {
                        atomicReferenceArray.set(i2 & i3, obj);
                        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore2 = lockFreeTaskQueueCore;
                        while ((atomicLongFieldUpdater.get(lockFreeTaskQueueCore2) & 1152921504606846976L) != 0) {
                            lockFreeTaskQueueCore2 = lockFreeTaskQueueCore2.c();
                            AtomicReferenceArray atomicReferenceArray2 = lockFreeTaskQueueCore2.d;
                            int i5 = lockFreeTaskQueueCore2.c & i2;
                            Object obj2 = atomicReferenceArray2.get(i5);
                            if ((obj2 instanceof Placeholder) && ((Placeholder) obj2).a == i2) {
                                atomicReferenceArray2.set(i5, obj);
                            } else {
                                lockFreeTaskQueueCore2 = null;
                            }
                            if (lockFreeTaskQueueCore2 == null) {
                                return 0;
                            }
                        }
                        return 0;
                    }
                    this = lockFreeTaskQueueCore;
                }
            } else {
                return 1;
            }
        }
    }

    public final boolean b() {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j, 2305843009213693952L | j)) {
                return true;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LockFreeTaskQueueCore c() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore;
        while (true) {
            atomicLongFieldUpdater = f;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                lockFreeTaskQueueCore = this;
                break;
            }
            long j2 = 1152921504606846976L | j;
            lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j, j2)) {
                j = j2;
                break;
            }
            this = lockFreeTaskQueueCore;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            LockFreeTaskQueueCore lockFreeTaskQueueCore2 = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(lockFreeTaskQueueCore);
            if (lockFreeTaskQueueCore2 != null) {
                return lockFreeTaskQueueCore2;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCore3 = new LockFreeTaskQueueCore(lockFreeTaskQueueCore.a * 2, lockFreeTaskQueueCore.b);
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = lockFreeTaskQueueCore.c;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object obj = lockFreeTaskQueueCore.d.get(i4);
                if (obj == null) {
                    obj = new Placeholder(i);
                }
                lockFreeTaskQueueCore3.d.set(lockFreeTaskQueueCore3.c & i, obj);
                i++;
            }
            atomicLongFieldUpdater.set(lockFreeTaskQueueCore3, (-1152921504606846977L) & j);
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeTaskQueueCore, null, lockFreeTaskQueueCore3) && atomicReferenceFieldUpdater.get(lockFreeTaskQueueCore) == null) {
            }
        }
    }

    public final Object d() {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(lockFreeTaskQueueCore);
            if ((j & 1152921504606846976L) != 0) {
                return g;
            }
            int i = (int) (j & 1073741823);
            int i2 = lockFreeTaskQueueCore.c;
            int i3 = i & i2;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) == i3) {
                break;
            }
            AtomicReferenceArray atomicReferenceArray = lockFreeTaskQueueCore.d;
            Object obj = atomicReferenceArray.get(i3);
            boolean z = lockFreeTaskQueueCore.b;
            if (obj == null) {
                if (z) {
                    break;
                }
            } else {
                if (obj instanceof Placeholder) {
                    break;
                }
                long j2 = (i + 1) & 1073741823;
                if (f.compareAndSet(lockFreeTaskQueueCore, j, (j & (-1073741824)) | j2)) {
                    atomicReferenceArray.set(i3, null);
                    return obj;
                }
                lockFreeTaskQueueCore = this;
                if (z) {
                    while (true) {
                        long j3 = atomicLongFieldUpdater.get(lockFreeTaskQueueCore);
                        int i4 = (int) (j3 & 1073741823);
                        if ((j3 & 1152921504606846976L) != 0) {
                            lockFreeTaskQueueCore = lockFreeTaskQueueCore.c();
                        } else {
                            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore2 = lockFreeTaskQueueCore;
                            if (f.compareAndSet(lockFreeTaskQueueCore2, j3, (j3 & (-1073741824)) | j2)) {
                                lockFreeTaskQueueCore2.d.set(i4 & lockFreeTaskQueueCore2.c, null);
                                lockFreeTaskQueueCore = null;
                            } else {
                                lockFreeTaskQueueCore = lockFreeTaskQueueCore2;
                            }
                        }
                        if (lockFreeTaskQueueCore == null) {
                            return obj;
                        }
                    }
                }
            }
        }
        return null;
    }
}
