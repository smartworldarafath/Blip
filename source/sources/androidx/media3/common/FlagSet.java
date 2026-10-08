package androidx.media3.common;

import android.util.SparseBooleanArray;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlagSet {
    public final SparseBooleanArray a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final SparseBooleanArray a = new SparseBooleanArray();
        public boolean b;

        public final void a(int i) {
            Preconditions.n(!this.b);
            this.a.append(i, true);
        }

        public final FlagSet b() {
            Preconditions.n(!this.b);
            this.b = true;
            return new FlagSet(this.a);
        }
    }

    public FlagSet(SparseBooleanArray sparseBooleanArray) {
        this.a = sparseBooleanArray;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlagSet)) {
            return false;
        }
        return this.a.equals(((FlagSet) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
