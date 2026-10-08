package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BoxWithConstraintsScopeImpl implements BoxWithConstraintsScope, BoxScope {
    public final Density a;
    public final long b;

    public BoxWithConstraintsScopeImpl(SubcomposeMeasureScope subcomposeMeasureScope, long j) {
        this.a = subcomposeMeasureScope;
        this.b = j;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    public final long a() {
        return this.b;
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier b(Modifier modifier) {
        return BoxScopeInstance.a.b(Modifier.Companion.b);
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    public final float c() {
        long j = this.b;
        if (Constraints.d(j)) {
            return this.a.U(Constraints.h(j));
        }
        return Float.POSITIVE_INFINITY;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BoxWithConstraintsScopeImpl) {
                BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
                if (!Intrinsics.a(this.a, boxWithConstraintsScopeImpl.a) || !Constraints.b(this.b, boxWithConstraintsScopeImpl.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.a + ", constraints=" + Constraints.l(this.b) + ")";
    }
}
