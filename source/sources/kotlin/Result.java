package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Result<T> implements Serializable {
    public final Object j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Failure implements Serializable {
        public final Throwable j;

        public Failure(Throwable th) {
            th.getClass();
            this.j = th;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Failure) {
                if (Intrinsics.a(this.j, ((Failure) obj).j)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return this.j.hashCode();
        }

        public final String toString() {
            return "Failure(" + this.j + ')';
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).j;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Result) {
            if (!this.j.equals(((Result) obj).j)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        Object obj = this.j;
        if (obj instanceof Failure) {
            return ((Failure) obj).toString();
        }
        return "Success(" + obj + ')';
    }
}
