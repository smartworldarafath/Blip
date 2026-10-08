package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.ParagraphLayoutCache;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.f;
import defpackage.f7;
import defpackage.ih;
import defpackage.jb;
import defpackage.kb;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextStringSimpleNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public int A;
    public boolean B;
    public int C;
    public int D;
    public ColorProducer E;
    public HashMap F;
    public ParagraphLayoutCache G;
    public ih H;
    public TextSubstitutionValue I;
    public String x;
    public TextStyle y;
    public FontFamily.Resolver z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextSubstitutionValue {
        public final String a;
        public String b;
        public boolean c = false;
        public ParagraphLayoutCache d = null;

        public TextSubstitutionValue(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TextSubstitutionValue)) {
                return false;
            }
            TextSubstitutionValue textSubstitutionValue = (TextSubstitutionValue) obj;
            if (Intrinsics.a(this.a, textSubstitutionValue.a) && Intrinsics.a(this.b, textSubstitutionValue.b) && this.c == textSubstitutionValue.c && Intrinsics.a(this.d, textSubstitutionValue.d)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int b = jb.b(jb.c(this.b, this.a.hashCode() * 31, 31), 31, this.c);
            ParagraphLayoutCache paragraphLayoutCache = this.d;
            if (paragraphLayoutCache == null) {
                hashCode = 0;
            } else {
                hashCode = paragraphLayoutCache.hashCode();
            }
            return b + hashCode;
        }

        public final String toString() {
            return "TextSubstitution(layoutCache=" + this.d + ", isShowingSubstitution=" + this.c + ")";
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ih] */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        ih ihVar = this.H;
        ih ihVar2 = ihVar;
        if (ihVar == null) {
            final int i = 0;
            ?? r0 = new Function1(this) { // from class: ih
                public final /* synthetic */ TextStringSimpleNode k;

                {
                    this.k = this;
                }

                /* JADX WARN: Removed duplicated region for block: B:27:0x013b  */
                /* JADX WARN: Removed duplicated region for block: B:29:0x0142  */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object b(Object obj) {
                    long j;
                    Density density;
                    TextLayoutResult textLayoutResult;
                    int i2 = i;
                    TextLayoutResult textLayoutResult2 = null;
                    boolean z = true;
                    TextStringSimpleNode textStringSimpleNode = this.k;
                    switch (i2) {
                        case 0:
                            List list = (List) obj;
                            ParagraphLayoutCache Y0 = textStringSimpleNode.Y0();
                            TextStyle textStyle = textStringSimpleNode.y;
                            ColorProducer colorProducer = textStringSimpleNode.E;
                            if (colorProducer != null) {
                                j = colorProducer.a();
                            } else {
                                j = Color.h;
                            }
                            TextStyle e = TextStyle.e(textStyle, j, 0L, 0L, 0, 0L, 16777214);
                            LayoutDirection layoutDirection = Y0.o;
                            if (layoutDirection != null && (density = Y0.i) != null) {
                                AnnotatedString annotatedString = new AnnotatedString(Y0.a);
                                if (Y0.j != null && Y0.n != null) {
                                    long j2 = Y0.p & (-8589934589L);
                                    int i3 = Y0.f;
                                    boolean z2 = Y0.e;
                                    int i4 = Y0.d;
                                    FontFamily.Resolver resolver = Y0.c;
                                    EmptyList emptyList = EmptyList.j;
                                    textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString, e, emptyList, i3, z2, i4, density, layoutDirection, resolver, j2), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString, e, emptyList, density, resolver, z2), j2, Y0.f, Y0.d), Y0.l);
                                    if (textLayoutResult != null) {
                                        list.add(textLayoutResult);
                                        textLayoutResult2 = textLayoutResult;
                                    }
                                    if (textLayoutResult2 == null) {
                                        z = false;
                                    }
                                    return Boolean.valueOf(z);
                                }
                            }
                            textLayoutResult = null;
                            if (textLayoutResult != null) {
                            }
                            if (textLayoutResult2 == null) {
                            }
                            return Boolean.valueOf(z);
                        case 1:
                            String str = ((AnnotatedString) obj).k;
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue = textStringSimpleNode.I;
                            if (textSubstitutionValue != null) {
                                if (!Intrinsics.a(str, textSubstitutionValue.b)) {
                                    textSubstitutionValue.b = str;
                                    ParagraphLayoutCache paragraphLayoutCache = textSubstitutionValue.d;
                                    if (paragraphLayoutCache != null) {
                                        TextStyle textStyle2 = textStringSimpleNode.y;
                                        FontFamily.Resolver resolver2 = textStringSimpleNode.z;
                                        int i5 = textStringSimpleNode.A;
                                        boolean z3 = textStringSimpleNode.B;
                                        int i6 = textStringSimpleNode.C;
                                        int i7 = textStringSimpleNode.D;
                                        paragraphLayoutCache.a = str;
                                        paragraphLayoutCache.b = textStyle2;
                                        paragraphLayoutCache.c = resolver2;
                                        paragraphLayoutCache.d = i5;
                                        paragraphLayoutCache.e = z3;
                                        paragraphLayoutCache.f = i6;
                                        paragraphLayoutCache.g = i7;
                                        paragraphLayoutCache.s = (paragraphLayoutCache.s << 2) | 2;
                                        paragraphLayoutCache.j = null;
                                        paragraphLayoutCache.n = null;
                                        paragraphLayoutCache.o = null;
                                        paragraphLayoutCache.q = -1;
                                        paragraphLayoutCache.r = -1;
                                        paragraphLayoutCache.p = Constraints.Companion.c(0, 0);
                                        paragraphLayoutCache.l = 0L;
                                        paragraphLayoutCache.k = false;
                                    }
                                }
                            } else {
                                TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue2 = new TextStringSimpleNode.TextSubstitutionValue(textStringSimpleNode.x, str);
                                ParagraphLayoutCache paragraphLayoutCache2 = new ParagraphLayoutCache(str, textStringSimpleNode.y, textStringSimpleNode.z, textStringSimpleNode.A, textStringSimpleNode.B, textStringSimpleNode.C, textStringSimpleNode.D);
                                paragraphLayoutCache2.c(textStringSimpleNode.Y0().i);
                                textSubstitutionValue2.d = paragraphLayoutCache2;
                                textStringSimpleNode.I = textSubstitutionValue2;
                            }
                            SemanticsModifierNodeKt.b(textStringSimpleNode);
                            LayoutModifierNodeKt.a(textStringSimpleNode);
                            DrawModifierNodeKt.a(textStringSimpleNode);
                            return Boolean.TRUE;
                        default:
                            boolean booleanValue = ((Boolean) obj).booleanValue();
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue3 = textStringSimpleNode.I;
                            if (textSubstitutionValue3 == null) {
                                z = false;
                            } else {
                                textSubstitutionValue3.c = booleanValue;
                                SemanticsModifierNodeKt.b(textStringSimpleNode);
                                LayoutModifierNodeKt.a(textStringSimpleNode);
                                DrawModifierNodeKt.a(textStringSimpleNode);
                            }
                            return Boolean.valueOf(z);
                    }
                }
            };
            this.H = r0;
            ihVar2 = r0;
        }
        AnnotatedString annotatedString = new AnnotatedString(this.x);
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        semanticsPropertyReceiver.b(SemanticsProperties.C, CollectionsKt.B(annotatedString));
        TextSubstitutionValue textSubstitutionValue = this.I;
        if (textSubstitutionValue != null) {
            boolean z = textSubstitutionValue.c;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.E;
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
            KProperty kProperty = kPropertyArr2[17];
            Boolean valueOf = Boolean.valueOf(z);
            semanticsPropertyKey.getClass();
            semanticsPropertyReceiver.b(semanticsPropertyKey, valueOf);
            AnnotatedString annotatedString2 = new AnnotatedString(textSubstitutionValue.b);
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.D;
            KProperty kProperty2 = kPropertyArr2[16];
            semanticsPropertyKey2.getClass();
            semanticsPropertyReceiver.b(semanticsPropertyKey2, annotatedString2);
        }
        final int i2 = 1;
        semanticsPropertyReceiver.b(SemanticsActions.l, new AccessibilityAction(null, new Function1(this) { // from class: ih
            public final /* synthetic */ TextStringSimpleNode k;

            {
                this.k = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:27:0x013b  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x0142  */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object b(Object obj) {
                long j;
                Density density;
                TextLayoutResult textLayoutResult;
                int i22 = i2;
                TextLayoutResult textLayoutResult2 = null;
                boolean z2 = true;
                TextStringSimpleNode textStringSimpleNode = this.k;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        ParagraphLayoutCache Y0 = textStringSimpleNode.Y0();
                        TextStyle textStyle = textStringSimpleNode.y;
                        ColorProducer colorProducer = textStringSimpleNode.E;
                        if (colorProducer != null) {
                            j = colorProducer.a();
                        } else {
                            j = Color.h;
                        }
                        TextStyle e = TextStyle.e(textStyle, j, 0L, 0L, 0, 0L, 16777214);
                        LayoutDirection layoutDirection = Y0.o;
                        if (layoutDirection != null && (density = Y0.i) != null) {
                            AnnotatedString annotatedString3 = new AnnotatedString(Y0.a);
                            if (Y0.j != null && Y0.n != null) {
                                long j2 = Y0.p & (-8589934589L);
                                int i3 = Y0.f;
                                boolean z22 = Y0.e;
                                int i4 = Y0.d;
                                FontFamily.Resolver resolver = Y0.c;
                                EmptyList emptyList = EmptyList.j;
                                textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString3, e, emptyList, i3, z22, i4, density, layoutDirection, resolver, j2), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString3, e, emptyList, density, resolver, z22), j2, Y0.f, Y0.d), Y0.l);
                                if (textLayoutResult != null) {
                                    list.add(textLayoutResult);
                                    textLayoutResult2 = textLayoutResult;
                                }
                                if (textLayoutResult2 == null) {
                                    z2 = false;
                                }
                                return Boolean.valueOf(z2);
                            }
                        }
                        textLayoutResult = null;
                        if (textLayoutResult != null) {
                        }
                        if (textLayoutResult2 == null) {
                        }
                        return Boolean.valueOf(z2);
                    case 1:
                        String str = ((AnnotatedString) obj).k;
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue2 = textStringSimpleNode.I;
                        if (textSubstitutionValue2 != null) {
                            if (!Intrinsics.a(str, textSubstitutionValue2.b)) {
                                textSubstitutionValue2.b = str;
                                ParagraphLayoutCache paragraphLayoutCache = textSubstitutionValue2.d;
                                if (paragraphLayoutCache != null) {
                                    TextStyle textStyle2 = textStringSimpleNode.y;
                                    FontFamily.Resolver resolver2 = textStringSimpleNode.z;
                                    int i5 = textStringSimpleNode.A;
                                    boolean z3 = textStringSimpleNode.B;
                                    int i6 = textStringSimpleNode.C;
                                    int i7 = textStringSimpleNode.D;
                                    paragraphLayoutCache.a = str;
                                    paragraphLayoutCache.b = textStyle2;
                                    paragraphLayoutCache.c = resolver2;
                                    paragraphLayoutCache.d = i5;
                                    paragraphLayoutCache.e = z3;
                                    paragraphLayoutCache.f = i6;
                                    paragraphLayoutCache.g = i7;
                                    paragraphLayoutCache.s = (paragraphLayoutCache.s << 2) | 2;
                                    paragraphLayoutCache.j = null;
                                    paragraphLayoutCache.n = null;
                                    paragraphLayoutCache.o = null;
                                    paragraphLayoutCache.q = -1;
                                    paragraphLayoutCache.r = -1;
                                    paragraphLayoutCache.p = Constraints.Companion.c(0, 0);
                                    paragraphLayoutCache.l = 0L;
                                    paragraphLayoutCache.k = false;
                                }
                            }
                        } else {
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue22 = new TextStringSimpleNode.TextSubstitutionValue(textStringSimpleNode.x, str);
                            ParagraphLayoutCache paragraphLayoutCache2 = new ParagraphLayoutCache(str, textStringSimpleNode.y, textStringSimpleNode.z, textStringSimpleNode.A, textStringSimpleNode.B, textStringSimpleNode.C, textStringSimpleNode.D);
                            paragraphLayoutCache2.c(textStringSimpleNode.Y0().i);
                            textSubstitutionValue22.d = paragraphLayoutCache2;
                            textStringSimpleNode.I = textSubstitutionValue22;
                        }
                        SemanticsModifierNodeKt.b(textStringSimpleNode);
                        LayoutModifierNodeKt.a(textStringSimpleNode);
                        DrawModifierNodeKt.a(textStringSimpleNode);
                        return Boolean.TRUE;
                    default:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue3 = textStringSimpleNode.I;
                        if (textSubstitutionValue3 == null) {
                            z2 = false;
                        } else {
                            textSubstitutionValue3.c = booleanValue;
                            SemanticsModifierNodeKt.b(textStringSimpleNode);
                            LayoutModifierNodeKt.a(textStringSimpleNode);
                            DrawModifierNodeKt.a(textStringSimpleNode);
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        final int i3 = 2;
        semanticsPropertyReceiver.b(SemanticsActions.m, new AccessibilityAction(null, new Function1(this) { // from class: ih
            public final /* synthetic */ TextStringSimpleNode k;

            {
                this.k = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:27:0x013b  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x0142  */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object b(Object obj) {
                long j;
                Density density;
                TextLayoutResult textLayoutResult;
                int i22 = i3;
                TextLayoutResult textLayoutResult2 = null;
                boolean z2 = true;
                TextStringSimpleNode textStringSimpleNode = this.k;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        ParagraphLayoutCache Y0 = textStringSimpleNode.Y0();
                        TextStyle textStyle = textStringSimpleNode.y;
                        ColorProducer colorProducer = textStringSimpleNode.E;
                        if (colorProducer != null) {
                            j = colorProducer.a();
                        } else {
                            j = Color.h;
                        }
                        TextStyle e = TextStyle.e(textStyle, j, 0L, 0L, 0, 0L, 16777214);
                        LayoutDirection layoutDirection = Y0.o;
                        if (layoutDirection != null && (density = Y0.i) != null) {
                            AnnotatedString annotatedString3 = new AnnotatedString(Y0.a);
                            if (Y0.j != null && Y0.n != null) {
                                long j2 = Y0.p & (-8589934589L);
                                int i32 = Y0.f;
                                boolean z22 = Y0.e;
                                int i4 = Y0.d;
                                FontFamily.Resolver resolver = Y0.c;
                                EmptyList emptyList = EmptyList.j;
                                textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString3, e, emptyList, i32, z22, i4, density, layoutDirection, resolver, j2), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString3, e, emptyList, density, resolver, z22), j2, Y0.f, Y0.d), Y0.l);
                                if (textLayoutResult != null) {
                                    list.add(textLayoutResult);
                                    textLayoutResult2 = textLayoutResult;
                                }
                                if (textLayoutResult2 == null) {
                                    z2 = false;
                                }
                                return Boolean.valueOf(z2);
                            }
                        }
                        textLayoutResult = null;
                        if (textLayoutResult != null) {
                        }
                        if (textLayoutResult2 == null) {
                        }
                        return Boolean.valueOf(z2);
                    case 1:
                        String str = ((AnnotatedString) obj).k;
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue2 = textStringSimpleNode.I;
                        if (textSubstitutionValue2 != null) {
                            if (!Intrinsics.a(str, textSubstitutionValue2.b)) {
                                textSubstitutionValue2.b = str;
                                ParagraphLayoutCache paragraphLayoutCache = textSubstitutionValue2.d;
                                if (paragraphLayoutCache != null) {
                                    TextStyle textStyle2 = textStringSimpleNode.y;
                                    FontFamily.Resolver resolver2 = textStringSimpleNode.z;
                                    int i5 = textStringSimpleNode.A;
                                    boolean z3 = textStringSimpleNode.B;
                                    int i6 = textStringSimpleNode.C;
                                    int i7 = textStringSimpleNode.D;
                                    paragraphLayoutCache.a = str;
                                    paragraphLayoutCache.b = textStyle2;
                                    paragraphLayoutCache.c = resolver2;
                                    paragraphLayoutCache.d = i5;
                                    paragraphLayoutCache.e = z3;
                                    paragraphLayoutCache.f = i6;
                                    paragraphLayoutCache.g = i7;
                                    paragraphLayoutCache.s = (paragraphLayoutCache.s << 2) | 2;
                                    paragraphLayoutCache.j = null;
                                    paragraphLayoutCache.n = null;
                                    paragraphLayoutCache.o = null;
                                    paragraphLayoutCache.q = -1;
                                    paragraphLayoutCache.r = -1;
                                    paragraphLayoutCache.p = Constraints.Companion.c(0, 0);
                                    paragraphLayoutCache.l = 0L;
                                    paragraphLayoutCache.k = false;
                                }
                            }
                        } else {
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue22 = new TextStringSimpleNode.TextSubstitutionValue(textStringSimpleNode.x, str);
                            ParagraphLayoutCache paragraphLayoutCache2 = new ParagraphLayoutCache(str, textStringSimpleNode.y, textStringSimpleNode.z, textStringSimpleNode.A, textStringSimpleNode.B, textStringSimpleNode.C, textStringSimpleNode.D);
                            paragraphLayoutCache2.c(textStringSimpleNode.Y0().i);
                            textSubstitutionValue22.d = paragraphLayoutCache2;
                            textStringSimpleNode.I = textSubstitutionValue22;
                        }
                        SemanticsModifierNodeKt.b(textStringSimpleNode);
                        LayoutModifierNodeKt.a(textStringSimpleNode);
                        DrawModifierNodeKt.a(textStringSimpleNode);
                        return Boolean.TRUE;
                    default:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue3 = textStringSimpleNode.I;
                        if (textSubstitutionValue3 == null) {
                            z2 = false;
                        } else {
                            textSubstitutionValue3.c = booleanValue;
                            SemanticsModifierNodeKt.b(textStringSimpleNode);
                            LayoutModifierNodeKt.a(textStringSimpleNode);
                            DrawModifierNodeKt.a(textStringSimpleNode);
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        semanticsPropertyReceiver.b(SemanticsActions.n, new AccessibilityAction(null, new kb(22, this)));
        SemanticsPropertiesKt.a(semanticsPropertyReceiver, ihVar2);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    public final ParagraphLayoutCache Y0() {
        TextStyle textStyle = this.y;
        if (this.G == null) {
            this.G = new ParagraphLayoutCache(this.x, textStyle, this.z, this.A, this.B, this.C, this.D);
        }
        ParagraphLayoutCache paragraphLayoutCache = this.G;
        paragraphLayoutCache.getClass();
        return paragraphLayoutCache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r2 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        ParagraphLayoutCache Y0;
        TextSubstitutionValue textSubstitutionValue = this.I;
        if (textSubstitutionValue != null) {
            if (!textSubstitutionValue.c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue != null) {
                Y0 = textSubstitutionValue.d;
            }
        }
        Y0 = Y0();
        Y0.c(lookaheadCapablePlaceable);
        return TextDelegateKt.a(Y0.d(lookaheadCapablePlaceable.getLayoutDirection()).b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r3 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        ParagraphLayoutCache Y0;
        TextSubstitutionValue textSubstitutionValue = this.I;
        if (textSubstitutionValue != null) {
            if (!textSubstitutionValue.c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue != null) {
                Y0 = textSubstitutionValue.d;
            }
        }
        Y0 = Y0();
        Y0.c(lookaheadCapablePlaceable);
        return Y0.a(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r2 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        ParagraphLayoutCache Y0;
        TextSubstitutionValue textSubstitutionValue = this.I;
        if (textSubstitutionValue != null) {
            if (!textSubstitutionValue.c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue != null) {
                Y0 = textSubstitutionValue.d;
            }
        }
        Y0 = Y0();
        Y0.c(lookaheadCapablePlaceable);
        return TextDelegateKt.a(Y0.d(lookaheadCapablePlaceable.getLayoutDirection()).c());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r3 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        ParagraphLayoutCache Y0;
        TextSubstitutionValue textSubstitutionValue = this.I;
        if (textSubstitutionValue != null) {
            if (!textSubstitutionValue.c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue != null) {
                Y0 = textSubstitutionValue.d;
            }
        }
        Y0 = Y0();
        Y0.c(lookaheadCapablePlaceable);
        return Y0.a(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        if (r0 != null) goto L15;
     */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        ParagraphLayoutCache Y0;
        long j;
        if (this.w) {
            TextSubstitutionValue textSubstitutionValue = this.I;
            if (textSubstitutionValue != null) {
                if (!textSubstitutionValue.c) {
                    textSubstitutionValue = null;
                }
                if (textSubstitutionValue != null) {
                    Y0 = textSubstitutionValue.d;
                }
            }
            Y0 = Y0();
            AndroidParagraph androidParagraph = Y0.j;
            if (androidParagraph != null) {
                Canvas a = layoutNodeDrawScope.j.k.a();
                boolean z = Y0.k;
                if (z) {
                    long j2 = Y0.l;
                    a.g();
                    a.n(0.0f, 0.0f, (int) (j2 >> 32), (int) (j2 & 4294967295L), 1);
                }
                try {
                    TextStyle textStyle = this.y;
                    SpanStyle spanStyle = textStyle.a;
                    TextDecoration textDecoration = spanStyle.m;
                    if (textDecoration == null) {
                        textDecoration = TextDecoration.b;
                    }
                    TextDecoration textDecoration2 = textDecoration;
                    Shadow shadow = spanStyle.n;
                    if (shadow == null) {
                        shadow = Shadow.d;
                    }
                    Shadow shadow2 = shadow;
                    DrawStyle drawStyle = spanStyle.o;
                    if (drawStyle == null) {
                        drawStyle = Fill.a;
                    }
                    DrawStyle drawStyle2 = drawStyle;
                    Brush d = spanStyle.a.d();
                    if (d != null) {
                        androidParagraph.f(a, d, textStyle.a.a.a(), shadow2, textDecoration2, drawStyle2);
                    } else {
                        ColorProducer colorProducer = this.E;
                        if (colorProducer != null) {
                            j = colorProducer.a();
                        } else {
                            j = Color.h;
                        }
                        if (j == 16) {
                            if (textStyle.b() != 16) {
                                j = textStyle.b();
                            } else {
                                j = Color.b;
                            }
                        }
                        androidParagraph.e(a, j, shadow2, textDecoration2, drawStyle2);
                    }
                    if (z) {
                        a.r();
                    }
                } finally {
                }
            } else {
                InlineClassHelperKt.b("Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache=" + this.G + ", textSubstitution=" + this.I + ")");
                f7.h();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0013, code lost:
    
        if (r0 != null) goto L13;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        ParagraphLayoutCache Y0;
        Trace.beginSection("TextStringSimpleNode::measure");
        try {
            TextSubstitutionValue textSubstitutionValue = this.I;
            if (textSubstitutionValue != null) {
                if (!textSubstitutionValue.c) {
                    textSubstitutionValue = null;
                }
                if (textSubstitutionValue != null) {
                    Y0 = textSubstitutionValue.d;
                }
            }
            Y0 = Y0();
            Y0.c(measureScope);
            boolean b = Y0.b(j, measureScope.getLayoutDirection());
            ParagraphIntrinsics paragraphIntrinsics = Y0.n;
            if (paragraphIntrinsics != null) {
                paragraphIntrinsics.a();
            }
            AndroidParagraph androidParagraph = Y0.j;
            androidParagraph.getClass();
            TextLayout textLayout = androidParagraph.d;
            long j2 = Y0.l;
            if (b) {
                DelegatableNodeKt.e(this, 2).l1();
                HashMap hashMap = this.F;
                if (hashMap == null) {
                    hashMap = new HashMap(2);
                    this.F = hashMap;
                }
                hashMap.put(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayout.e(0) + 0.0f)));
                hashMap.put(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayout.e(textLayout.g - 1) + 0.0f)));
            }
            int i = (int) (j2 >> 32);
            int i2 = (int) (j2 & 4294967295L);
            Placeable w = measurable.w(Constraints.Companion.b(i, i, i2, i2));
            HashMap hashMap2 = this.F;
            hashMap2.getClass();
            return measureScope.B(i, i2, hashMap2, new f(w, 14));
        } finally {
            Trace.endSection();
        }
    }
}
