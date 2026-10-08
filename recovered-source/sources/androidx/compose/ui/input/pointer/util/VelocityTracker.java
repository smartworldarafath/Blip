package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VelocityTracker {
    public final Lsq2VelocityTracker a = new Lsq2VelocityTracker();

    public final long a(long j) {
        Lsq2VelocityTracker lsq2VelocityTracker = this.a;
        lsq2VelocityTracker.getClass();
        if (Velocity.b(j) <= 0.0f || Velocity.c(j) <= 0.0f) {
            InlineClassHelperKt.b("maximumVelocity should be a positive value. You specified=".concat(Velocity.g(j)));
        }
        return VelocityKt.a(lsq2VelocityTracker.a.c(Velocity.b(j)), lsq2VelocityTracker.b.c(Velocity.c(j)));
    }
}
