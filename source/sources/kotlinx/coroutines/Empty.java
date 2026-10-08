package kotlinx.coroutines;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class Empty implements Incomplete {
    public final boolean j;

    public Empty(boolean z) {
        this.j = z;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList c() {
        return null;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean h() {
        return this.j;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Empty{");
        if (this.j) {
            str = "Active";
        } else {
            str = "New";
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }
}
