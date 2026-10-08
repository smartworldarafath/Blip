package androidx.work.impl.constraints;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConstraintsState {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ConstraintsMet extends ConstraintsState {
        public static final ConstraintsMet a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ConstraintsNotMet extends ConstraintsState {
        public final int a;

        public ConstraintsNotMet(int i) {
            this.a = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ConstraintsNotMet) && this.a == ((ConstraintsNotMet) obj).a) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            return q.j(new StringBuilder("ConstraintsNotMet(reason="), this.a, ')');
        }
    }
}
