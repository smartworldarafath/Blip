package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jb;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FontWeight implements Comparable<FontWeight> {
    public static final FontWeight k;
    public static final FontWeight l;
    public static final FontWeight m;
    public static final FontWeight n;
    public static final FontWeight o;
    public static final FontWeight p;
    public static final FontWeight q;
    public static final FontWeight r;
    public static final FontWeight s;
    public static final FontWeight t;
    public static final FontWeight u;
    public static final FontWeight v;
    public final int j;

    static {
        FontWeight fontWeight = new FontWeight(100);
        FontWeight fontWeight2 = new FontWeight(200);
        FontWeight fontWeight3 = new FontWeight(300);
        FontWeight fontWeight4 = new FontWeight(400);
        k = fontWeight4;
        FontWeight fontWeight5 = new FontWeight(500);
        l = fontWeight5;
        FontWeight fontWeight6 = new FontWeight(600);
        m = fontWeight6;
        FontWeight fontWeight7 = new FontWeight(700);
        FontWeight fontWeight8 = new FontWeight(800);
        FontWeight fontWeight9 = new FontWeight(900);
        n = fontWeight;
        o = fontWeight2;
        p = fontWeight3;
        q = fontWeight4;
        r = fontWeight5;
        s = fontWeight6;
        t = fontWeight7;
        u = fontWeight8;
        v = fontWeight9;
        CollectionsKt.C(fontWeight, fontWeight2, fontWeight3, fontWeight4, fontWeight5, fontWeight6, fontWeight7, fontWeight8, fontWeight9);
    }

    public FontWeight(int i) {
        this.j = i;
        boolean z = false;
        if (1 <= i && i < 1001) {
            z = true;
        }
        if (!z) {
            InlineClassHelperKt.a("Font weight can be in range [1, 1000]. Current value: " + i);
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(FontWeight fontWeight) {
        return Intrinsics.b(this.j, fontWeight.j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FontWeight)) {
            return false;
        }
        if (this.j == ((FontWeight) obj).j) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j;
    }

    public final String toString() {
        return jb.d("FontWeight(weight=", this.j, ")");
    }
}
