package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.ec;
import defpackage.f7;
import defpackage.le;
import defpackage.ma;
import defpackage.p;
import defpackage.u2;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Snapshot {
    public SnapshotIdSet a;
    public long b;
    public boolean c;
    public int d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Snapshot a() {
            return (Snapshot) SnapshotKt.b.a();
        }

        public static Snapshot b(Snapshot snapshot) {
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot.t == Thread_jvmKt.a()) {
                    transparentObserverMutableSnapshot.r = null;
                    return snapshot;
                }
            }
            if (snapshot instanceof TransparentObserverSnapshot) {
                TransparentObserverSnapshot transparentObserverSnapshot = (TransparentObserverSnapshot) snapshot;
                if (transparentObserverSnapshot.i == Thread_jvmKt.a()) {
                    transparentObserverSnapshot.h = null;
                    return snapshot;
                }
            }
            Snapshot f = SnapshotKt.f(snapshot, null, false);
            f.j();
            return f;
        }

        public static Object c(androidx.compose.runtime.b bVar, Function0 function0) {
            MutableSnapshot mutableSnapshot;
            Snapshot transparentObserverMutableSnapshot;
            Snapshot snapshot = (Snapshot) SnapshotKt.b.a();
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot2.t == Thread_jvmKt.a()) {
                    Function1 function1 = transparentObserverMutableSnapshot2.r;
                    Function1 function12 = transparentObserverMutableSnapshot2.s;
                    try {
                        ((TransparentObserverMutableSnapshot) snapshot).r = SnapshotKt.j(bVar, function1, true);
                        ((TransparentObserverMutableSnapshot) snapshot).s = function12;
                        return function0.a();
                    } finally {
                        transparentObserverMutableSnapshot2.r = function1;
                        transparentObserverMutableSnapshot2.s = function12;
                    }
                }
            }
            if (snapshot != null && !(snapshot instanceof MutableSnapshot)) {
                transparentObserverMutableSnapshot = snapshot.u(bVar);
            } else {
                if (snapshot instanceof MutableSnapshot) {
                    mutableSnapshot = (MutableSnapshot) snapshot;
                } else {
                    mutableSnapshot = null;
                }
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(mutableSnapshot, bVar, null, true, false);
            }
            try {
                Snapshot j = transparentObserverMutableSnapshot.j();
                try {
                    Object a = function0.a();
                    Snapshot.q(j);
                    transparentObserverMutableSnapshot.c();
                    return a;
                } catch (Throwable th) {
                    Snapshot.q(j);
                    throw th;
                }
            } catch (Throwable th2) {
                transparentObserverMutableSnapshot.c();
                throw th2;
            }
        }

        public static p d(Function2 function2) {
            SnapshotKt.d(SnapshotKt.a);
            synchronized (SnapshotKt.c) {
                SnapshotKt.h = CollectionsKt.G(SnapshotKt.h, function2);
            }
            return new p(17, function2);
        }

        public static void e(Snapshot snapshot, Snapshot snapshot2, Function1 function1) {
            if (snapshot == snapshot2) {
                if (snapshot instanceof TransparentObserverMutableSnapshot) {
                    ((TransparentObserverMutableSnapshot) snapshot).r = function1;
                    return;
                } else if (snapshot instanceof TransparentObserverSnapshot) {
                    ((TransparentObserverSnapshot) snapshot).h = function1;
                    return;
                } else {
                    f7.i(snapshot, "Non-transparent snapshot was reused: ");
                    return;
                }
            }
            snapshot2.getClass();
            Snapshot.q(snapshot);
            snapshot2.c();
        }

        public static void f() {
            boolean z;
            synchronized (SnapshotKt.c) {
                MutableScatterSet mutableScatterSet = SnapshotKt.j.h;
                z = false;
                if (mutableScatterSet != null) {
                    if (mutableScatterSet.c()) {
                        z = true;
                    }
                }
            }
            if (z) {
                SnapshotKt.d(SnapshotKt.a);
            }
        }

        public static MutableSnapshot g(ma maVar, ec ecVar) {
            MutableSnapshot mutableSnapshot;
            MutableSnapshot C;
            Snapshot i = SnapshotKt.i();
            if (i instanceof MutableSnapshot) {
                mutableSnapshot = (MutableSnapshot) i;
            } else {
                mutableSnapshot = null;
            }
            if (mutableSnapshot != null && (C = mutableSnapshot.C(maVar, ecVar)) != null) {
                return C;
            }
            u2.l("Cannot create a mutable snapshot of an read-only snapshot");
            return null;
        }
    }

    public Snapshot(long j, SnapshotIdSet snapshotIdSet) {
        int i;
        int numberOfTrailingZeros;
        this.a = snapshotIdSet;
        this.b = j;
        le leVar = SnapshotKt.a;
        if (j != 0) {
            SnapshotIdSet d = d();
            long j2 = d.l;
            long[] jArr = d.m;
            if (jArr != null) {
                j = jArr[0];
            } else {
                long j3 = d.k;
                if (j3 != 0) {
                    numberOfTrailingZeros = Long.numberOfTrailingZeros(j3);
                } else {
                    long j4 = d.j;
                    if (j4 != 0) {
                        j2 += 64;
                        numberOfTrailingZeros = Long.numberOfTrailingZeros(j4);
                    }
                }
                j = numberOfTrailingZeros + j2;
            }
            synchronized (SnapshotKt.c) {
                i = SnapshotKt.f.a(j);
            }
        } else {
            i = -1;
        }
        this.d = i;
    }

    public static void q(Snapshot snapshot) {
        SnapshotKt.b.b(snapshot);
    }

    public final void a() {
        synchronized (SnapshotKt.c) {
            b();
            p();
        }
    }

    public void b() {
        SnapshotKt.d = SnapshotKt.d.c(g());
    }

    public abstract void c();

    public SnapshotIdSet d() {
        return this.a;
    }

    public abstract Function1 e();

    public abstract boolean f();

    public long g() {
        return this.b;
    }

    public int h() {
        return 0;
    }

    public abstract Function1 i();

    public final Snapshot j() {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotKt.b;
        Snapshot snapshot = (Snapshot) snapshotThreadLocal.a();
        snapshotThreadLocal.b(this);
        return snapshot;
    }

    public abstract void k();

    public abstract void l();

    public abstract void m();

    public abstract void n(StateObject stateObject);

    public final void o() {
        int i = this.d;
        if (i >= 0) {
            SnapshotKt.t(i);
            this.d = -1;
        }
    }

    public void p() {
        o();
    }

    public void r(SnapshotIdSet snapshotIdSet) {
        this.a = snapshotIdSet;
    }

    public void s(long j) {
        this.b = j;
    }

    public void t(int i) {
        throw new IllegalStateException("Updating write count is not supported for this snapshot");
    }

    public abstract Snapshot u(Function1 function1);
}
