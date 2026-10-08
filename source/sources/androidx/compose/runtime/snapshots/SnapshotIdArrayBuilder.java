package androidx.compose.runtime.snapshots;

import androidx.collection.MutableLongList;
import defpackage.u2;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnapshotIdArrayBuilder {
    public final MutableLongList a;

    public SnapshotIdArrayBuilder(long[] jArr) {
        MutableLongList mutableLongList;
        if (jArr != null) {
            long[] copyOf = Arrays.copyOf(jArr, jArr.length);
            mutableLongList = new MutableLongList(copyOf.length);
            int i = mutableLongList.b;
            if (i >= 0) {
                if (copyOf.length != 0) {
                    int length = copyOf.length + i;
                    long[] jArr2 = mutableLongList.a;
                    if (jArr2.length < length) {
                        mutableLongList.a = Arrays.copyOf(jArr2, Math.max(length, (jArr2.length * 3) / 2));
                    }
                    long[] jArr3 = mutableLongList.a;
                    int i2 = mutableLongList.b;
                    if (i != i2) {
                        ArraysKt.h(jArr3, jArr3, copyOf.length + i, i, i2);
                    }
                    ArraysKt.h(copyOf, jArr3, i, 0, copyOf.length);
                    mutableLongList.b += copyOf.length;
                }
            } else {
                u2.o("");
                throw null;
            }
        } else {
            mutableLongList = new MutableLongList();
        }
        this.a = mutableLongList;
    }
}
