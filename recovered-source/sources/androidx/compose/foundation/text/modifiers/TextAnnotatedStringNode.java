package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.MultiParagraphLayoutCache;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
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
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import defpackage.f;
import defpackage.fe;
import defpackage.jb;
import defpackage.kb;
import defpackage.rg;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextAnnotatedStringNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public Function1 A;
    public int B;
    public boolean C;
    public int D;
    public int E;
    public List F;
    public Function1 G;
    public ColorProducer H;
    public Function1 I;
    public Map J;
    public MultiParagraphLayoutCache K;
    public rg L;
    public TextSubstitutionValue M;
    public AnnotatedString x;
    public TextStyle y;
    public FontFamily.Resolver z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextSubstitutionValue {
        public final AnnotatedString a;
        public AnnotatedString b;
        public boolean c = false;
        public MultiParagraphLayoutCache d = null;

        public TextSubstitutionValue(AnnotatedString annotatedString, AnnotatedString annotatedString2) {
            this.a = annotatedString;
            this.b = annotatedString2;
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
            int b = jb.b((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
            MultiParagraphLayoutCache multiParagraphLayoutCache = this.d;
            if (multiParagraphLayoutCache == null) {
                hashCode = 0;
            } else {
                hashCode = multiParagraphLayoutCache.hashCode();
            }
            return b + hashCode;
        }

        public final String toString() {
            AnnotatedString annotatedString = this.b;
            return "TextSubstitutionValue(original=" + ((Object) this.a) + ", substitution=" + ((Object) annotatedString) + ", isShowingSubstitution=" + this.c + ", layoutCache=" + this.d + ")";
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [rg] */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        rg rgVar = this.L;
        rg rgVar2 = rgVar;
        if (rgVar == null) {
            final int i = 0;
            ?? r0 = new Function1(this) { // from class: rg
                public final /* synthetic */ TextAnnotatedStringNode k;

                {
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    boolean z;
                    long j;
                    boolean z2;
                    int i2 = i;
                    TextLayoutResult textLayoutResult = null;
                    TextAnnotatedStringNode textAnnotatedStringNode = this.k;
                    switch (i2) {
                        case 0:
                            List list = (List) obj;
                            TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.Y0().n;
                            if (textLayoutResult2 != null) {
                                TextLayoutInput textLayoutInput = textLayoutResult2.a;
                                AnnotatedString annotatedString = textLayoutInput.a;
                                TextStyle textStyle = textAnnotatedStringNode.y;
                                ColorProducer colorProducer = textAnnotatedStringNode.H;
                                if (colorProducer != null) {
                                    j = colorProducer.a();
                                } else {
                                    j = Color.h;
                                }
                                TextLayoutResult textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(annotatedString, TextStyle.e(textStyle, j, 0L, 0L, 0, 0L, 16777214), textLayoutInput.c, textLayoutInput.d, textLayoutInput.e, textLayoutInput.f, textLayoutInput.g, textLayoutInput.h, textLayoutInput.i, textLayoutInput.j), textLayoutResult2.b, textLayoutResult2.c);
                                list.add(textLayoutResult3);
                                textLayoutResult = textLayoutResult3;
                            }
                            if (textLayoutResult != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            return Boolean.valueOf(z);
                        case 1:
                            AnnotatedString annotatedString2 = (AnnotatedString) obj;
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = textAnnotatedStringNode.M;
                            EmptyList emptyList = EmptyList.j;
                            if (textSubstitutionValue != null) {
                                if (!Intrinsics.a(annotatedString2, textSubstitutionValue.b)) {
                                    textSubstitutionValue.b = annotatedString2;
                                    MultiParagraphLayoutCache multiParagraphLayoutCache = textSubstitutionValue.d;
                                    if (multiParagraphLayoutCache != null) {
                                        TextStyle textStyle2 = textAnnotatedStringNode.y;
                                        FontFamily.Resolver resolver = textAnnotatedStringNode.z;
                                        int i3 = textAnnotatedStringNode.B;
                                        boolean z3 = textAnnotatedStringNode.C;
                                        int i4 = textAnnotatedStringNode.D;
                                        int i5 = textAnnotatedStringNode.E;
                                        multiParagraphLayoutCache.a = annotatedString2;
                                        boolean c = textStyle2.c(multiParagraphLayoutCache.k);
                                        multiParagraphLayoutCache.k = textStyle2;
                                        if (!c) {
                                            multiParagraphLayoutCache.q <<= 2;
                                            multiParagraphLayoutCache.l = null;
                                            multiParagraphLayoutCache.n = null;
                                            multiParagraphLayoutCache.p = -1;
                                            multiParagraphLayoutCache.o = -1;
                                        }
                                        multiParagraphLayoutCache.b = resolver;
                                        multiParagraphLayoutCache.c = i3;
                                        multiParagraphLayoutCache.d = z3;
                                        multiParagraphLayoutCache.e = i4;
                                        multiParagraphLayoutCache.f = i5;
                                        multiParagraphLayoutCache.g = emptyList;
                                        multiParagraphLayoutCache.q = (multiParagraphLayoutCache.q << 2) | 2;
                                        multiParagraphLayoutCache.l = null;
                                        multiParagraphLayoutCache.n = null;
                                        multiParagraphLayoutCache.p = -1;
                                        multiParagraphLayoutCache.o = -1;
                                    }
                                }
                            } else {
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.x, annotatedString2);
                                MultiParagraphLayoutCache multiParagraphLayoutCache2 = new MultiParagraphLayoutCache(annotatedString2, textAnnotatedStringNode.y, textAnnotatedStringNode.z, textAnnotatedStringNode.B, textAnnotatedStringNode.C, textAnnotatedStringNode.D, textAnnotatedStringNode.E, emptyList);
                                multiParagraphLayoutCache2.d(textAnnotatedStringNode.Y0().j);
                                textSubstitutionValue2.d = multiParagraphLayoutCache2;
                                textAnnotatedStringNode.M = textSubstitutionValue2;
                            }
                            SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                            LayoutModifierNodeKt.a(textAnnotatedStringNode);
                            DrawModifierNodeKt.a(textAnnotatedStringNode);
                            return Boolean.TRUE;
                        default:
                            boolean booleanValue = ((Boolean) obj).booleanValue();
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.M;
                            if (textSubstitutionValue3 == null) {
                                z2 = false;
                            } else {
                                Function1 function1 = textAnnotatedStringNode.I;
                                if (function1 != null) {
                                    function1.b(textSubstitutionValue3);
                                }
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.M;
                                if (textSubstitutionValue4 != null) {
                                    textSubstitutionValue4.c = booleanValue;
                                }
                                SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                                LayoutModifierNodeKt.a(textAnnotatedStringNode);
                                DrawModifierNodeKt.a(textAnnotatedStringNode);
                                z2 = true;
                            }
                            return Boolean.valueOf(z2);
                    }
                }
            };
            this.L = r0;
            rgVar2 = r0;
        }
        AnnotatedString annotatedString = this.x;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        semanticsPropertyReceiver.b(SemanticsProperties.C, CollectionsKt.B(annotatedString));
        TextSubstitutionValue textSubstitutionValue = this.M;
        if (textSubstitutionValue != null) {
            AnnotatedString annotatedString2 = textSubstitutionValue.b;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.D;
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
            KProperty kProperty = kPropertyArr2[16];
            semanticsPropertyKey.getClass();
            semanticsPropertyReceiver.b(semanticsPropertyKey, annotatedString2);
            boolean z = textSubstitutionValue.c;
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.E;
            KProperty kProperty2 = kPropertyArr2[17];
            Boolean valueOf = Boolean.valueOf(z);
            semanticsPropertyKey2.getClass();
            semanticsPropertyReceiver.b(semanticsPropertyKey2, valueOf);
        }
        final int i2 = 1;
        semanticsPropertyReceiver.b(SemanticsActions.l, new AccessibilityAction(null, new Function1(this) { // from class: rg
            public final /* synthetic */ TextAnnotatedStringNode k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                boolean z2;
                long j;
                boolean z22;
                int i22 = i2;
                TextLayoutResult textLayoutResult = null;
                TextAnnotatedStringNode textAnnotatedStringNode = this.k;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.Y0().n;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.a;
                            AnnotatedString annotatedString3 = textLayoutInput.a;
                            TextStyle textStyle = textAnnotatedStringNode.y;
                            ColorProducer colorProducer = textAnnotatedStringNode.H;
                            if (colorProducer != null) {
                                j = colorProducer.a();
                            } else {
                                j = Color.h;
                            }
                            TextLayoutResult textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(annotatedString3, TextStyle.e(textStyle, j, 0L, 0L, 0, 0L, 16777214), textLayoutInput.c, textLayoutInput.d, textLayoutInput.e, textLayoutInput.f, textLayoutInput.g, textLayoutInput.h, textLayoutInput.i, textLayoutInput.j), textLayoutResult2.b, textLayoutResult2.c);
                            list.add(textLayoutResult3);
                            textLayoutResult = textLayoutResult3;
                        }
                        if (textLayoutResult != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 1:
                        AnnotatedString annotatedString22 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.M;
                        EmptyList emptyList = EmptyList.j;
                        if (textSubstitutionValue2 != null) {
                            if (!Intrinsics.a(annotatedString22, textSubstitutionValue2.b)) {
                                textSubstitutionValue2.b = annotatedString22;
                                MultiParagraphLayoutCache multiParagraphLayoutCache = textSubstitutionValue2.d;
                                if (multiParagraphLayoutCache != null) {
                                    TextStyle textStyle2 = textAnnotatedStringNode.y;
                                    FontFamily.Resolver resolver = textAnnotatedStringNode.z;
                                    int i3 = textAnnotatedStringNode.B;
                                    boolean z3 = textAnnotatedStringNode.C;
                                    int i4 = textAnnotatedStringNode.D;
                                    int i5 = textAnnotatedStringNode.E;
                                    multiParagraphLayoutCache.a = annotatedString22;
                                    boolean c = textStyle2.c(multiParagraphLayoutCache.k);
                                    multiParagraphLayoutCache.k = textStyle2;
                                    if (!c) {
                                        multiParagraphLayoutCache.q <<= 2;
                                        multiParagraphLayoutCache.l = null;
                                        multiParagraphLayoutCache.n = null;
                                        multiParagraphLayoutCache.p = -1;
                                        multiParagraphLayoutCache.o = -1;
                                    }
                                    multiParagraphLayoutCache.b = resolver;
                                    multiParagraphLayoutCache.c = i3;
                                    multiParagraphLayoutCache.d = z3;
                                    multiParagraphLayoutCache.e = i4;
                                    multiParagraphLayoutCache.f = i5;
                                    multiParagraphLayoutCache.g = emptyList;
                                    multiParagraphLayoutCache.q = (multiParagraphLayoutCache.q << 2) | 2;
                                    multiParagraphLayoutCache.l = null;
                                    multiParagraphLayoutCache.n = null;
                                    multiParagraphLayoutCache.p = -1;
                                    multiParagraphLayoutCache.o = -1;
                                }
                            }
                        } else {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue22 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.x, annotatedString22);
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = new MultiParagraphLayoutCache(annotatedString22, textAnnotatedStringNode.y, textAnnotatedStringNode.z, textAnnotatedStringNode.B, textAnnotatedStringNode.C, textAnnotatedStringNode.D, textAnnotatedStringNode.E, emptyList);
                            multiParagraphLayoutCache2.d(textAnnotatedStringNode.Y0().j);
                            textSubstitutionValue22.d = multiParagraphLayoutCache2;
                            textAnnotatedStringNode.M = textSubstitutionValue22;
                        }
                        SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                        LayoutModifierNodeKt.a(textAnnotatedStringNode);
                        DrawModifierNodeKt.a(textAnnotatedStringNode);
                        return Boolean.TRUE;
                    default:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.M;
                        if (textSubstitutionValue3 == null) {
                            z22 = false;
                        } else {
                            Function1 function1 = textAnnotatedStringNode.I;
                            if (function1 != null) {
                                function1.b(textSubstitutionValue3);
                            }
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.M;
                            if (textSubstitutionValue4 != null) {
                                textSubstitutionValue4.c = booleanValue;
                            }
                            SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                            LayoutModifierNodeKt.a(textAnnotatedStringNode);
                            DrawModifierNodeKt.a(textAnnotatedStringNode);
                            z22 = true;
                        }
                        return Boolean.valueOf(z22);
                }
            }
        }));
        final int i3 = 2;
        semanticsPropertyReceiver.b(SemanticsActions.m, new AccessibilityAction(null, new Function1(this) { // from class: rg
            public final /* synthetic */ TextAnnotatedStringNode k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                boolean z2;
                long j;
                boolean z22;
                int i22 = i3;
                TextLayoutResult textLayoutResult = null;
                TextAnnotatedStringNode textAnnotatedStringNode = this.k;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.Y0().n;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.a;
                            AnnotatedString annotatedString3 = textLayoutInput.a;
                            TextStyle textStyle = textAnnotatedStringNode.y;
                            ColorProducer colorProducer = textAnnotatedStringNode.H;
                            if (colorProducer != null) {
                                j = colorProducer.a();
                            } else {
                                j = Color.h;
                            }
                            TextLayoutResult textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(annotatedString3, TextStyle.e(textStyle, j, 0L, 0L, 0, 0L, 16777214), textLayoutInput.c, textLayoutInput.d, textLayoutInput.e, textLayoutInput.f, textLayoutInput.g, textLayoutInput.h, textLayoutInput.i, textLayoutInput.j), textLayoutResult2.b, textLayoutResult2.c);
                            list.add(textLayoutResult3);
                            textLayoutResult = textLayoutResult3;
                        }
                        if (textLayoutResult != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 1:
                        AnnotatedString annotatedString22 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.M;
                        EmptyList emptyList = EmptyList.j;
                        if (textSubstitutionValue2 != null) {
                            if (!Intrinsics.a(annotatedString22, textSubstitutionValue2.b)) {
                                textSubstitutionValue2.b = annotatedString22;
                                MultiParagraphLayoutCache multiParagraphLayoutCache = textSubstitutionValue2.d;
                                if (multiParagraphLayoutCache != null) {
                                    TextStyle textStyle2 = textAnnotatedStringNode.y;
                                    FontFamily.Resolver resolver = textAnnotatedStringNode.z;
                                    int i32 = textAnnotatedStringNode.B;
                                    boolean z3 = textAnnotatedStringNode.C;
                                    int i4 = textAnnotatedStringNode.D;
                                    int i5 = textAnnotatedStringNode.E;
                                    multiParagraphLayoutCache.a = annotatedString22;
                                    boolean c = textStyle2.c(multiParagraphLayoutCache.k);
                                    multiParagraphLayoutCache.k = textStyle2;
                                    if (!c) {
                                        multiParagraphLayoutCache.q <<= 2;
                                        multiParagraphLayoutCache.l = null;
                                        multiParagraphLayoutCache.n = null;
                                        multiParagraphLayoutCache.p = -1;
                                        multiParagraphLayoutCache.o = -1;
                                    }
                                    multiParagraphLayoutCache.b = resolver;
                                    multiParagraphLayoutCache.c = i32;
                                    multiParagraphLayoutCache.d = z3;
                                    multiParagraphLayoutCache.e = i4;
                                    multiParagraphLayoutCache.f = i5;
                                    multiParagraphLayoutCache.g = emptyList;
                                    multiParagraphLayoutCache.q = (multiParagraphLayoutCache.q << 2) | 2;
                                    multiParagraphLayoutCache.l = null;
                                    multiParagraphLayoutCache.n = null;
                                    multiParagraphLayoutCache.p = -1;
                                    multiParagraphLayoutCache.o = -1;
                                }
                            }
                        } else {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue22 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.x, annotatedString22);
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = new MultiParagraphLayoutCache(annotatedString22, textAnnotatedStringNode.y, textAnnotatedStringNode.z, textAnnotatedStringNode.B, textAnnotatedStringNode.C, textAnnotatedStringNode.D, textAnnotatedStringNode.E, emptyList);
                            multiParagraphLayoutCache2.d(textAnnotatedStringNode.Y0().j);
                            textSubstitutionValue22.d = multiParagraphLayoutCache2;
                            textAnnotatedStringNode.M = textSubstitutionValue22;
                        }
                        SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                        LayoutModifierNodeKt.a(textAnnotatedStringNode);
                        DrawModifierNodeKt.a(textAnnotatedStringNode);
                        return Boolean.TRUE;
                    default:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.M;
                        if (textSubstitutionValue3 == null) {
                            z22 = false;
                        } else {
                            Function1 function1 = textAnnotatedStringNode.I;
                            if (function1 != null) {
                                function1.b(textSubstitutionValue3);
                            }
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.M;
                            if (textSubstitutionValue4 != null) {
                                textSubstitutionValue4.c = booleanValue;
                            }
                            SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                            LayoutModifierNodeKt.a(textAnnotatedStringNode);
                            DrawModifierNodeKt.a(textAnnotatedStringNode);
                            z22 = true;
                        }
                        return Boolean.valueOf(z22);
                }
            }
        }));
        semanticsPropertyReceiver.b(SemanticsActions.n, new AccessibilityAction(null, new kb(17, this)));
        SemanticsPropertiesKt.a(semanticsPropertyReceiver, rgVar2);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    public final MultiParagraphLayoutCache Y0() {
        if (this.K == null) {
            this.K = new MultiParagraphLayoutCache(this.x, this.y, this.z, this.B, this.C, this.D, this.E, this.F);
        }
        MultiParagraphLayoutCache multiParagraphLayoutCache = this.K;
        multiParagraphLayoutCache.getClass();
        return multiParagraphLayoutCache;
    }

    public final MultiParagraphLayoutCache Z0(Density density) {
        MultiParagraphLayoutCache multiParagraphLayoutCache;
        TextSubstitutionValue textSubstitutionValue = this.M;
        if (textSubstitutionValue != null && textSubstitutionValue.c && (multiParagraphLayoutCache = textSubstitutionValue.d) != null) {
            multiParagraphLayoutCache.d(density);
            return multiParagraphLayoutCache;
        }
        MultiParagraphLayoutCache Y0 = Y0();
        Y0.d(density);
        return Y0;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return TextDelegateKt.a(Z0(lookaheadCapablePlaceable).e(lookaheadCapablePlaceable.getLayoutDirection()).b());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return Z0(lookaheadCapablePlaceable).a(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return TextDelegateKt.a(Z0(lookaheadCapablePlaceable).e(lookaheadCapablePlaceable.getLayoutDirection()).c());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return Z0(lookaheadCapablePlaceable).a(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z;
        long j;
        boolean a;
        if (this.w) {
            Canvas a2 = layoutNodeDrawScope.j.k.a();
            MultiParagraphLayoutCache Z0 = Z0(layoutNodeDrawScope);
            TextLayoutResult textLayoutResult = Z0.n;
            if (textLayoutResult != null) {
                MultiParagraph multiParagraph = textLayoutResult.b;
                long j2 = textLayoutResult.c;
                boolean z2 = true;
                if ((((int) (j2 >> 32)) >= multiParagraph.d && !multiParagraph.c && ((int) (j2 & 4294967295L)) >= multiParagraph.e) || this.B == 3) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    Rect a3 = RectKt.a(0L, (Float.floatToRawIntBits((int) (j2 >> 32)) << 32) | (Float.floatToRawIntBits((int) (j2 & 4294967295L)) & 4294967295L));
                    a2.g();
                    Canvas.l(a2, a3);
                }
                try {
                    SpanStyle spanStyle = this.y.a;
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
                        MultiParagraph.j(multiParagraph, a2, d, this.y.a.a.a(), shadow2, textDecoration2, drawStyle2);
                    } else {
                        ColorProducer colorProducer = this.H;
                        if (colorProducer != null) {
                            j = colorProducer.a();
                        } else {
                            j = Color.h;
                        }
                        if (j == 16) {
                            if (this.y.b() != 16) {
                                j = this.y.b();
                            } else {
                                j = Color.b;
                            }
                        }
                        MultiParagraph.i(multiParagraph, a2, j, shadow2, textDecoration2, drawStyle2);
                    }
                    if (z) {
                        a2.r();
                    }
                    TextSubstitutionValue textSubstitutionValue = this.M;
                    if (textSubstitutionValue != null && textSubstitutionValue.c) {
                        a = false;
                    } else {
                        a = TextAnnotatedStringNodeKt.a(this.x);
                    }
                    if (!a) {
                        List list = this.F;
                        if (list != null && !list.isEmpty()) {
                            z2 = false;
                        }
                        if (z2) {
                            return;
                        }
                    }
                    layoutNodeDrawScope.a();
                } finally {
                }
            } else {
                fe.n(Z0, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: ");
            }
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextAnnotatedStringNode:measure");
        try {
            MultiParagraphLayoutCache Z0 = Z0(measureScope);
            boolean c = Z0.c(j, measureScope.getLayoutDirection());
            TextLayoutResult textLayoutResult = Z0.n;
            if (textLayoutResult != null) {
                long j2 = textLayoutResult.c;
                textLayoutResult.b.a.a();
                if (c) {
                    DelegatableNodeKt.e(this, 2).l1();
                    Function1 function1 = this.A;
                    if (function1 != null) {
                        function1.b(textLayoutResult);
                    }
                    Map map = this.J;
                    if (map == null) {
                        map = new LinkedHashMap(2);
                    }
                    map.put(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult.d)));
                    map.put(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult.e)));
                    this.J = map;
                }
                Function1 function12 = this.G;
                if (function12 != null) {
                    function12.b(textLayoutResult.f);
                }
                int i = (int) (j2 >> 32);
                int i2 = (int) (j2 & 4294967295L);
                Placeable w = measurable.w(Constraints.Companion.b(i, i, i2, i2));
                Map map2 = this.J;
                map2.getClass();
                return measureScope.B(i, i2, map2, new f(w, 12));
            }
            throw new IllegalStateException("Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: " + Z0);
        } finally {
            Trace.endSection();
        }
    }
}
