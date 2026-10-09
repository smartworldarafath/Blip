package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NestedMutableSnapshot extends MutableSnapshot {
    public final MutableSnapshot o;
    public boolean p;

    public NestedMutableSnapshot(long j, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function12, MutableSnapshot mutableSnapshot) {
        super(j, snapshotIdSet, function1, function12);
        this.o = mutableSnapshot;
        mutableSnapshot.k();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        if (!this.c) {
            super.c();
            if (!this.p) {
                this.p = true;
                this.o.l();
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotApplyResult w() {
        HashMap hashMap;
        NestedMutableSnapshot nestedMutableSnapshot;
        MutableSnapshot mutableSnapshot = this.o;
        if (!mutableSnapshot.m && !mutableSnapshot.c) {
            MutableScatterSet mutableScatterSet = this.h;
            long j = this.b;
            if (mutableScatterSet != null) {
                hashMap = SnapshotKt.a(mutableSnapshot.g(), this, this.o.d());
            } else {
                hashMap = null;
            }
            Object obj = SnapshotKt.c;
            synchronized (obj) {
                try {
                    SnapshotKt.b(this);
                    if (mutableScatterSet == null || mutableScatterSet.d == 0) {
                        nestedMutableSnapshot = this;
                        nestedMutableSnapshot.a();
                    } else {
                        nestedMutableSnapshot = this;
                        SnapshotApplyResult z = nestedMutableSnapshot.z(this.o.g(), mutableScatterSet, hashMap, this.o.d());
                        if (!z.equals(SnapshotApplyResult.Success.a)) {
                            return z;
                        }
                        MutableScatterSet x = nestedMutableSnapshot.o.x();
                        if (x != null) {
                            x.k(mutableScatterSet);
                        } else {
                            nestedMutableSnapshot.o.B(mutableScatterSet);
                            nestedMutableSnapshot.h = null;
                        }
                    }
                    if (Intrinsics.c(nestedMutableSnapshot.o.g(), j) < 0) {
                        nestedMutableSnapshot.o.v();
                    }
                    MutableSnapshot mutableSnapshot2 = nestedMutableSnapshot.o;
                    mutableSnapshot2.r(mutableSnapshot2.d().c(j).b(nestedMutableSnapshot.j));
                    nestedMutableSnapshot.o.A(j);
                    MutableSnapshot mutableSnapshot3 = nestedMutableSnapshot.o;
                    int i = nestedMutableSnapshot.d;
                    nestedMutableSnapshot.d = -1;
                    if (i >= 0) {
                        int[] iArr = mutableSnapshot3.k;
                        iArr.getClass();
                        int length = iArr.length;
                        int[] copyOf = Arrays.copyOf(iArr, length + 1);
                        copyOf[length] = i;
                        mutableSnapshot3.k = copyOf;
                    } else {
                        mutableSnapshot3.getClass();
                    }
                    MutableSnapshot mutableSnapshot4 = nestedMutableSnapshot.o;
                    SnapshotIdSet snapshotIdSet = nestedMutableSnapshot.j;
                    mutableSnapshot4.getClass();
                    synchronized (obj) {
                        mutableSnapshot4.j = mutableSnapshot4.j.e(snapshotIdSet);
                        MutableSnapshot mutableSnapshot5 = nestedMutableSnapshot.o;
                        int[] iArr2 = nestedMutableSnapshot.k;
                        mutableSnapshot5.getClass();
                        if (iArr2.length != 0) {
                            int[] iArr3 = mutableSnapshot5.k;
                            if (iArr3.length != 0) {
                                int length2 = iArr3.length;
                                int length3 = iArr2.length;
                                int[] copyOf2 = Arrays.copyOf(iArr3, length2 + length3);
                                System.arraycopy(iArr2, 0, copyOf2, length2, length3);
                                iArr2 = copyOf2;
                            }
                            mutableSnapshot5.k = iArr2;
                        }
                    }
                    nestedMutableSnapshot.m = true;
                    if (!nestedMutableSnapshot.p) {
                        nestedMutableSnapshot.p = true;
                        nestedMutableSnapshot.o.l();
                    }
                    return SnapshotApplyResult.Success.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return new SnapshotApplyResult.Failure(this);
    }
}
