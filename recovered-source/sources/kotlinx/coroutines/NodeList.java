package kotlinx.coroutines;

import kotlinx.coroutines.internal.LockFreeLinkedListHead;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NodeList extends LockFreeLinkedListHead implements Incomplete {
    @Override // kotlinx.coroutines.Incomplete
    public final boolean h() {
        return true;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList c() {
        return this;
    }
}
