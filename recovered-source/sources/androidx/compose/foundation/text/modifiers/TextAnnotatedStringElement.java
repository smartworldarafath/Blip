package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import defpackage.jb;
import defpackage.q;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextAnnotatedStringElement extends ModifierNodeElement<TextAnnotatedStringNode> {
    public final AnnotatedString b;
    public final TextStyle c;
    private final ColorProducer color;
    public final FontFamily.Resolver d;
    public final Function1 e;
    public final int f;
    public final boolean g;
    public final int h;
    public final int i;
    public final List j;
    public final Function1 k;
    public final Function1 l;

    public TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i, boolean z, int i2, int i3, List list, Function1 function12, ColorProducer colorProducer, Function1 function13) {
        this.b = annotatedString;
        this.c = textStyle;
        this.d = resolver;
        this.e = function1;
        this.f = i;
        this.g = z;
        this.h = i2;
        this.i = i3;
        this.j = list;
        this.k = function12;
        this.color = colorProducer;
        this.l = function13;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TextAnnotatedStringElement) {
                TextAnnotatedStringElement textAnnotatedStringElement = (TextAnnotatedStringElement) obj;
                if (Intrinsics.a(this.color, textAnnotatedStringElement.color) && Intrinsics.a(this.b, textAnnotatedStringElement.b) && Intrinsics.a(this.c, textAnnotatedStringElement.c) && Intrinsics.a(this.j, textAnnotatedStringElement.j) && Intrinsics.a(this.d, textAnnotatedStringElement.d) && this.e == textAnnotatedStringElement.e && this.l == textAnnotatedStringElement.l && this.f == textAnnotatedStringElement.f && this.g == textAnnotatedStringElement.g && this.h == textAnnotatedStringElement.h && this.i == textAnnotatedStringElement.i && this.k == textAnnotatedStringElement.k) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode, androidx.compose.ui.Modifier$Node] */
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
        node.E = this.i;
        node.F = this.j;
        node.G = this.k;
        node.H = colorProducer;
        node.I = this.l;
        return node;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int hashCode = (this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31;
        int i5 = 0;
        Function1 function1 = this.e;
        if (function1 != null) {
            i = function1.hashCode();
        } else {
            i = 0;
        }
        int b = (((jb.b(q.b(this.f, (hashCode + i) * 31, 31), 31, this.g) + this.h) * 31) + this.i) * 31;
        List list = this.j;
        if (list != null) {
            i2 = list.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (b + i2) * 31;
        Function1 function12 = this.k;
        if (function12 != null) {
            i3 = function12.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 961;
        ColorProducer colorProducer = this.color;
        if (colorProducer != null) {
            i4 = colorProducer.hashCode();
        } else {
            i4 = 0;
        }
        int i8 = (i7 + i4) * 31;
        Function1 function13 = this.l;
        if (function13 != null) {
            i5 = function13.hashCode();
        }
        return i8 + i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
    
        if (r5.a.b(r3.a) != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b5  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Modifier.Node node) {
        boolean z;
        boolean a;
        boolean z2;
        List list;
        List list2;
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
        Function1 function1;
        Function1 function12;
        Function1 function13;
        Function1 function14;
        Function1 function15;
        Function1 function16;
        boolean c;
        boolean z5;
        TextAnnotatedStringNode textAnnotatedStringNode = (TextAnnotatedStringNode) node;
        ColorProducer colorProducer = this.color;
        boolean a2 = Intrinsics.a(colorProducer, textAnnotatedStringNode.H);
        textAnnotatedStringNode.H = colorProducer;
        boolean z6 = false;
        boolean z7 = true;
        TextStyle textStyle = this.c;
        if (a2) {
            TextStyle textStyle2 = textAnnotatedStringNode.y;
            if (textStyle == textStyle2) {
                textStyle.getClass();
            }
            z = false;
            String str = textAnnotatedStringNode.x.k;
            AnnotatedString annotatedString = this.b;
            a = Intrinsics.a(str, annotatedString.k);
            boolean a3 = Intrinsics.a(textAnnotatedStringNode.x.j, annotatedString.j);
            if (!a && a3) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                textAnnotatedStringNode.x = annotatedString;
            }
            if (!a) {
                textAnnotatedStringNode.M = null;
            }
            boolean z8 = !textAnnotatedStringNode.y.c(textStyle);
            textAnnotatedStringNode.y = textStyle;
            list = textAnnotatedStringNode.F;
            list2 = this.j;
            if (!Intrinsics.a(list, list2)) {
                textAnnotatedStringNode.F = list2;
                z8 = true;
            }
            i = textAnnotatedStringNode.E;
            i2 = this.i;
            if (i != i2) {
                textAnnotatedStringNode.E = i2;
                z8 = true;
            }
            i3 = textAnnotatedStringNode.D;
            i4 = this.h;
            if (i3 != i4) {
                textAnnotatedStringNode.D = i4;
                z8 = true;
            }
            z3 = textAnnotatedStringNode.C;
            z4 = this.g;
            if (z3 != z4) {
                textAnnotatedStringNode.C = z4;
                z8 = true;
            }
            resolver = textAnnotatedStringNode.z;
            resolver2 = this.d;
            if (!Intrinsics.a(resolver, resolver2)) {
                textAnnotatedStringNode.z = resolver2;
                z8 = true;
            }
            i5 = textAnnotatedStringNode.B;
            i6 = this.f;
            if (i5 != i6) {
                textAnnotatedStringNode.B = i6;
                z8 = true;
            }
            function1 = textAnnotatedStringNode.A;
            function12 = this.e;
            if (function1 != function12) {
                textAnnotatedStringNode.A = function12;
                z6 = true;
            }
            function13 = textAnnotatedStringNode.G;
            function14 = this.k;
            if (function13 != function14) {
                textAnnotatedStringNode.G = function14;
                z6 = true;
            }
            function15 = textAnnotatedStringNode.I;
            function16 = this.l;
            if (function15 == function16) {
                textAnnotatedStringNode.I = function16;
            } else {
                z7 = z6;
            }
            if (z2 && !z8 && !z7) {
                z5 = z8;
            } else {
                MultiParagraphLayoutCache Y0 = textAnnotatedStringNode.Y0();
                AnnotatedString annotatedString2 = textAnnotatedStringNode.x;
                TextStyle textStyle3 = textAnnotatedStringNode.y;
                FontFamily.Resolver resolver3 = textAnnotatedStringNode.z;
                int i7 = textAnnotatedStringNode.B;
                boolean z9 = textAnnotatedStringNode.C;
                int i8 = textAnnotatedStringNode.D;
                int i9 = textAnnotatedStringNode.E;
                List list3 = textAnnotatedStringNode.F;
                Y0.a = annotatedString2;
                c = textStyle3.c(Y0.k);
                Y0.k = textStyle3;
                if (c) {
                    z5 = z8;
                    Y0.q <<= 2;
                    Y0.l = null;
                    Y0.n = null;
                    Y0.p = -1;
                    Y0.o = -1;
                } else {
                    z5 = z8;
                }
                Y0.b = resolver3;
                Y0.c = i7;
                Y0.d = z9;
                Y0.e = i8;
                Y0.f = i9;
                Y0.g = list3;
                Y0.q = (Y0.q << 2) | 2;
                Y0.l = null;
                Y0.n = null;
                Y0.p = -1;
                Y0.o = -1;
            }
            if (!textAnnotatedStringNode.w) {
                if (z2 || (z && textAnnotatedStringNode.L != null)) {
                    SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                }
                if (z2 || z5 || z7) {
                    LayoutModifierNodeKt.a(textAnnotatedStringNode);
                    DrawModifierNodeKt.a(textAnnotatedStringNode);
                }
                if (z) {
                    DrawModifierNodeKt.a(textAnnotatedStringNode);
                    return;
                }
                return;
            }
            return;
        }
        z = true;
        String str2 = textAnnotatedStringNode.x.k;
        AnnotatedString annotatedString3 = this.b;
        a = Intrinsics.a(str2, annotatedString3.k);
        boolean a32 = Intrinsics.a(textAnnotatedStringNode.x.j, annotatedString3.j);
        if (!a) {
        }
        z2 = true;
        if (z2) {
        }
        if (!a) {
        }
        boolean z82 = !textAnnotatedStringNode.y.c(textStyle);
        textAnnotatedStringNode.y = textStyle;
        list = textAnnotatedStringNode.F;
        list2 = this.j;
        if (!Intrinsics.a(list, list2)) {
        }
        i = textAnnotatedStringNode.E;
        i2 = this.i;
        if (i != i2) {
        }
        i3 = textAnnotatedStringNode.D;
        i4 = this.h;
        if (i3 != i4) {
        }
        z3 = textAnnotatedStringNode.C;
        z4 = this.g;
        if (z3 != z4) {
        }
        resolver = textAnnotatedStringNode.z;
        resolver2 = this.d;
        if (!Intrinsics.a(resolver, resolver2)) {
        }
        i5 = textAnnotatedStringNode.B;
        i6 = this.f;
        if (i5 != i6) {
        }
        function1 = textAnnotatedStringNode.A;
        function12 = this.e;
        if (function1 != function12) {
        }
        function13 = textAnnotatedStringNode.G;
        function14 = this.k;
        if (function13 != function14) {
        }
        function15 = textAnnotatedStringNode.I;
        function16 = this.l;
        if (function15 == function16) {
        }
        if (z2) {
        }
        MultiParagraphLayoutCache Y02 = textAnnotatedStringNode.Y0();
        AnnotatedString annotatedString22 = textAnnotatedStringNode.x;
        TextStyle textStyle32 = textAnnotatedStringNode.y;
        FontFamily.Resolver resolver32 = textAnnotatedStringNode.z;
        int i72 = textAnnotatedStringNode.B;
        boolean z92 = textAnnotatedStringNode.C;
        int i82 = textAnnotatedStringNode.D;
        int i92 = textAnnotatedStringNode.E;
        List list32 = textAnnotatedStringNode.F;
        Y02.a = annotatedString22;
        c = textStyle32.c(Y02.k);
        Y02.k = textStyle32;
        if (c) {
        }
        Y02.b = resolver32;
        Y02.c = i72;
        Y02.d = z92;
        Y02.e = i82;
        Y02.f = i92;
        Y02.g = list32;
        Y02.q = (Y02.q << 2) | 2;
        Y02.l = null;
        Y02.n = null;
        Y02.p = -1;
        Y02.o = -1;
        if (!textAnnotatedStringNode.w) {
        }
    }
}
