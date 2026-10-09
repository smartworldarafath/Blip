package androidx.compose.ui.layout;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class RectRulersImpl implements RectRulers {
    public final String a;
    public final VerticalRuler b = new Ruler(null);
    public final HorizontalRuler c = new Ruler(null);
    public final VerticalRuler d = new Ruler(null);
    public final HorizontalRuler e = new Ruler(null);

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.VerticalRuler] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.HorizontalRuler] */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.VerticalRuler] */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.HorizontalRuler] */
    public RectRulersImpl(String str) {
        this.a = str;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final HorizontalRuler a() {
        return this.e;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final VerticalRuler b() {
        return this.b;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final HorizontalRuler c() {
        return this.c;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final VerticalRuler d() {
        return this.d;
    }

    public final String toString() {
        return q.i("RectRulers(", this.a, ")");
    }
}
