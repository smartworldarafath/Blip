package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextStringSimpleElement extends ModifierNodeElement<TextStringSimpleNode> {
    public final String b;
    public final TextStyle c;
    private final ColorProducer color;
    public final FontFamily.Resolver d;
    public final int e;
    public final boolean f;
    public final int g;
    public final int h;

    public TextStringSimpleElement(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, ColorProducer colorProducer) {
        this.b = str;
        this.c = textStyle;
        this.d = resolver;
        this.e = i;
        this.f = z;
        this.g = i2;
        this.h = i3;
        this.color = colorProducer;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStringSimpleElement)) {
            return false;
        }
        TextStringSimpleElement textStringSimpleElement = (TextStringSimpleElement) obj;
        if (Intrinsics.a(this.color, textStringSimpleElement.color) && Intrinsics.a(this.b, textStringSimpleElement.b) && Intrinsics.a(this.c, textStringSimpleElement.c) && Intrinsics.a(this.d, textStringSimpleElement.d) && this.e == textStringSimpleElement.e && this.f == textStringSimpleElement.f && this.g == textStringSimpleElement.g && this.h == textStringSimpleElement.h) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.modifiers.TextStringSimpleNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ColorProducer colorProducer = this.color;
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        node.A = this.e;
        node.B = this.f;
        node.C = this.g;
        node.D = this.h;
        node.E = colorProducer;
        return node;
    }

    public final int hashCode() {
        int i;
        int b = (((jb.b(q.b(this.e, (this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31, 31), 31, this.f) + this.g) * 31) + this.h) * 31;
        ColorProducer colorProducer = this.color;
        if (colorProducer != null) {
            i = colorProducer.hashCode();
        } else {
            i = 0;
        }
        return b + i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        if (r3.a.b(r1.a) != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0034  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Modifier.Node node) {
        boolean z;
        String str;
        String str2;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        FontFamily.Resolver resolver;
        FontFamily.Resolver resolver2;
        int i5;
        int i6;
        TextStringSimpleNode textStringSimpleNode = (TextStringSimpleNode) node;
        ColorProducer colorProducer = this.color;
        boolean a = Intrinsics.a(colorProducer, textStringSimpleNode.E);
        textStringSimpleNode.E = colorProducer;
        boolean z5 = true;
        TextStyle textStyle = this.c;
        if (a) {
            TextStyle textStyle2 = textStringSimpleNode.y;
            if (textStyle == textStyle2) {
                textStyle.getClass();
            }
            z = false;
            str = textStringSimpleNode.x;
            str2 = this.b;
            if (!Intrinsics.a(str, str2)) {
                z2 = false;
            } else {
                textStringSimpleNode.x = str2;
                textStringSimpleNode.I = null;
                z2 = true;
            }
            boolean z6 = !textStringSimpleNode.y.c(textStyle);
            textStringSimpleNode.y = textStyle;
            i = textStringSimpleNode.D;
            i2 = this.h;
            if (i != i2) {
                textStringSimpleNode.D = i2;
                z6 = true;
            }
            i3 = textStringSimpleNode.C;
            i4 = this.g;
            if (i3 != i4) {
                textStringSimpleNode.C = i4;
                z6 = true;
            }
            z3 = textStringSimpleNode.B;
            z4 = this.f;
            if (z3 != z4) {
                textStringSimpleNode.B = z4;
                z6 = true;
            }
            resolver = textStringSimpleNode.z;
            resolver2 = this.d;
            if (!Intrinsics.a(resolver, resolver2)) {
                textStringSimpleNode.z = resolver2;
                z6 = true;
            }
            i5 = textStringSimpleNode.A;
            i6 = this.e;
            if (i5 != i6) {
                z5 = z6;
            } else {
                textStringSimpleNode.A = i6;
            }
            if (!z2 || z5) {
                ParagraphLayoutCache Y0 = textStringSimpleNode.Y0();
                String str3 = textStringSimpleNode.x;
                TextStyle textStyle3 = textStringSimpleNode.y;
                FontFamily.Resolver resolver3 = textStringSimpleNode.z;
                int i7 = textStringSimpleNode.A;
                boolean z7 = textStringSimpleNode.B;
                int i8 = textStringSimpleNode.C;
                int i9 = textStringSimpleNode.D;
                Y0.a = str3;
                Y0.b = textStyle3;
                Y0.c = resolver3;
                Y0.d = i7;
                Y0.e = z7;
                Y0.f = i8;
                Y0.g = i9;
                Y0.s = (Y0.s << 2) | 2;
                Y0.j = null;
                Y0.n = null;
                Y0.o = null;
                Y0.q = -1;
                Y0.r = -1;
                Y0.p = Constraints.Companion.c(0, 0);
                Y0.l = 0L;
                Y0.k = false;
            }
            if (!textStringSimpleNode.w) {
                if (z2 || (z && textStringSimpleNode.H != null)) {
                    SemanticsModifierNodeKt.b(textStringSimpleNode);
                }
                if (z2 || z5) {
                    LayoutModifierNodeKt.a(textStringSimpleNode);
                    DrawModifierNodeKt.a(textStringSimpleNode);
                }
                if (z) {
                    DrawModifierNodeKt.a(textStringSimpleNode);
                    return;
                }
                return;
            }
            return;
        }
        z = true;
        str = textStringSimpleNode.x;
        str2 = this.b;
        if (!Intrinsics.a(str, str2)) {
        }
        boolean z62 = !textStringSimpleNode.y.c(textStyle);
        textStringSimpleNode.y = textStyle;
        i = textStringSimpleNode.D;
        i2 = this.h;
        if (i != i2) {
        }
        i3 = textStringSimpleNode.C;
        i4 = this.g;
        if (i3 != i4) {
        }
        z3 = textStringSimpleNode.B;
        z4 = this.f;
        if (z3 != z4) {
        }
        resolver = textStringSimpleNode.z;
        resolver2 = this.d;
        if (!Intrinsics.a(resolver, resolver2)) {
        }
        i5 = textStringSimpleNode.A;
        i6 = this.e;
        if (i5 != i6) {
        }
        if (!z2) {
        }
        ParagraphLayoutCache Y02 = textStringSimpleNode.Y0();
        String str32 = textStringSimpleNode.x;
        TextStyle textStyle32 = textStringSimpleNode.y;
        FontFamily.Resolver resolver32 = textStringSimpleNode.z;
        int i72 = textStringSimpleNode.A;
        boolean z72 = textStringSimpleNode.B;
        int i82 = textStringSimpleNode.C;
        int i92 = textStringSimpleNode.D;
        Y02.a = str32;
        Y02.b = textStyle32;
        Y02.c = resolver32;
        Y02.d = i72;
        Y02.e = z72;
        Y02.f = i82;
        Y02.g = i92;
        Y02.s = (Y02.s << 2) | 2;
        Y02.j = null;
        Y02.n = null;
        Y02.o = null;
        Y02.q = -1;
        Y02.r = -1;
        Y02.p = Constraints.Companion.c(0, 0);
        Y02.l = 0L;
        Y02.k = false;
        if (!textStringSimpleNode.w) {
        }
    }
}
