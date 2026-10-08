package androidx.compose.ui.text.android;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HorizontalPositionCache {
    public final TextLayout a;
    public int b = -1;
    public float c;

    public HorizontalPositionCache(TextLayout textLayout) {
        this.a = textLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float a(int i, boolean z, boolean z2, boolean z3) {
        boolean z4;
        int i2;
        float l;
        int i3 = 1;
        TextLayout textLayout = this.a;
        if (z) {
            int a = LayoutCompat_androidKt.a(textLayout.f, i, z);
            int lineStart = textLayout.f.getLineStart(a);
            int g = textLayout.g(a);
            if (i == lineStart || i == g) {
                z4 = true;
                int i4 = i * 4;
                if (!z3) {
                    if (z4) {
                        i3 = 0;
                    }
                } else if (z4) {
                    i3 = 2;
                } else {
                    i3 = 3;
                }
                i2 = i4 + i3;
                if (this.b != i2) {
                    return this.c;
                }
                if (z3) {
                    l = textLayout.k(i, z);
                } else {
                    l = textLayout.l(i, z);
                }
                if (z2) {
                    this.b = i2;
                    this.c = l;
                }
                return l;
            }
        }
        z4 = false;
        int i42 = i * 4;
        if (!z3) {
        }
        i2 = i42 + i3;
        if (this.b != i2) {
        }
    }
}
