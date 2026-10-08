package androidx.compose.ui;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MotionDurationScale extends CoroutineContext.Element {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.Key<MotionDurationScale> {
        public static final /* synthetic */ Key j = new Object();
    }

    float a0();

    @Override // kotlin.coroutines.CoroutineContext.Element
    default CoroutineContext.Key getKey() {
        return Key.j;
    }
}
