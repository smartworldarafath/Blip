package kotlinx.coroutines;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class InactiveNodeList implements Incomplete {
    public final NodeList j;

    public InactiveNodeList(NodeList nodeList) {
        this.j = nodeList;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList c() {
        return this.j;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean h() {
        return false;
    }
}
