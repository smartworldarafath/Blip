package androidx.compose.runtime;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Invalidation {
    public final RecomposeScopeImpl a;
    public int b;
    public Object c;

    public Invalidation(RecomposeScopeImpl recomposeScopeImpl, int i, Object obj) {
        this.a = recomposeScopeImpl;
        this.b = i;
        this.c = obj;
    }
}
