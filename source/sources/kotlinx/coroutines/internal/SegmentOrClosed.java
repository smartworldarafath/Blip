package kotlinx.coroutines.internal;

import defpackage.u2;
import kotlinx.coroutines.internal.Segment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SegmentOrClosed<S extends Segment<S>> {
    public static final Segment a(Object obj) {
        if (obj != ConcurrentLinkedListKt.a) {
            return (Segment) obj;
        }
        u2.l("Does not contain segment");
        return null;
    }

    public static final boolean b(Object obj) {
        if (obj == ConcurrentLinkedListKt.a) {
            return true;
        }
        return false;
    }
}
