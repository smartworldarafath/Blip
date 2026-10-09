package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeltaCounter {
    public int a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DeltaCounter) && this.a == ((DeltaCounter) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return jb.d("DeltaCounter(count=", this.a, ")");
    }
}
