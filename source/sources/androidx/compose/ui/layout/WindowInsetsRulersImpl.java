package androidx.compose.ui.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class WindowInsetsRulersImpl implements WindowInsetsRulers {
    public final String b;
    public final RectRulers c;
    public final RectRulers d;

    public WindowInsetsRulersImpl(String str) {
        this.b = str;
        this.c = new RectRulersImpl(str);
        this.d = new RectRulersImpl(str.concat(" maximum"));
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    public final RectRulers a() {
        return this.c;
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    public final RectRulers b() {
        return this.d;
    }

    public final String toString() {
        return this.b;
    }
}
