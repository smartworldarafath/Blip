package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import defpackage.jb;
import defpackage.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotStateListKt {
    public static final Object a = new Object();

    public static final void a(int i, int i2) {
        if (i >= 0 && i < i2) {
            return;
        }
        u2.o(jb.e("index (", i, ") is out of bound of [0, ", i2, ")"));
    }

    public static final boolean b(StateListStateRecord stateListStateRecord, int i, PersistentList persistentList, boolean z) {
        boolean z2;
        synchronized (a) {
            try {
                int i2 = stateListStateRecord.d;
                if (i2 == i) {
                    stateListStateRecord.c = persistentList;
                    z2 = true;
                    if (z) {
                        stateListStateRecord.e++;
                    }
                    stateListStateRecord.d = i2 + 1;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public static final StateListStateRecord c(SnapshotStateList snapshotStateList) {
        StateListStateRecord stateListStateRecord = snapshotStateList.j;
        stateListStateRecord.getClass();
        return (StateListStateRecord) SnapshotKt.s(stateListStateRecord, snapshotStateList);
    }

    public static final int d(SnapshotStateList snapshotStateList) {
        StateListStateRecord stateListStateRecord = snapshotStateList.j;
        stateListStateRecord.getClass();
        return ((StateListStateRecord) SnapshotKt.g(stateListStateRecord)).e;
    }

    public static final boolean e(SnapshotStateList snapshotStateList, Function1 function1) {
        int i;
        PersistentList persistentList;
        Object b;
        Snapshot i2;
        boolean b2;
        do {
            synchronized (a) {
                StateListStateRecord stateListStateRecord = snapshotStateList.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentVectorBuilder builder = persistentList.builder();
            b = function1.b(builder);
            PersistentList d = builder.d();
            if (Intrinsics.a(d, persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = snapshotStateList.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                b2 = b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, snapshotStateList, i2), i, d, true);
            }
            SnapshotKt.m(i2, snapshotStateList);
        } while (!b2);
        return ((Boolean) b).booleanValue();
    }
}
