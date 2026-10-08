package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface NestedScrollConnection {
    default long Q(int i, long j) {
        return 0L;
    }

    default Object n0(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    default Object u(long j, long j2, Continuation continuation) {
        return new Velocity(0L);
    }

    default long w0(int i, long j, long j2) {
        return 0L;
    }
}
