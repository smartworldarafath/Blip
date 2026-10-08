package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CursorAnimationState {
    public final boolean a;
    public final AtomicReference b = new AtomicReference(null);
    public final MutableFloatState c = PrimitiveSnapshotStateKt.a(0.0f);

    public CursorAnimationState(boolean z) {
        this.a = z;
    }

    public final Object a(Continuation continuation) {
        Object c = CoroutineScopeKt.c(new CursorAnimationState$snapToVisibleAndAnimate$2(this, null), continuation);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }
}
