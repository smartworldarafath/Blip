package kotlinx.coroutines.flow;

import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StartedWhileSubscribed implements SharingStarted {
    public final boolean equals(Object obj) {
        if (obj instanceof StartedWhileSubscribed) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(Long.MAX_VALUE) + (Long.hashCode(0L) * 31);
    }

    public final String toString() {
        return "SharingStarted.WhileSubscribed(" + CollectionsKt.y(CollectionsKt.l(new ListBuilder(2)), null, null, null, null, 63) + ')';
    }
}
