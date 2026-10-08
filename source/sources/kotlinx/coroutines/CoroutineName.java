package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CoroutineName extends AbstractCoroutineContextElement {
    public static final Key l = new Object();
    public final String k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.Key<CoroutineName> {
    }

    public CoroutineName() {
        super(l);
        this.k = "Room Invalidation Tracker Refresh";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CoroutineName) && Intrinsics.a(this.k, ((CoroutineName) obj).k)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.k.hashCode();
    }

    public final String toString() {
        return "CoroutineName(" + this.k + ')';
    }
}
