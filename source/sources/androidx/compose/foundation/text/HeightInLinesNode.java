package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.unit.Constraints;
import defpackage.q;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.ranges.RangesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HeightInLinesNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode, ObserverModifierNode {
    public boolean A;
    public int B;
    public int C;
    public TextStyle D;
    public TypefaceResult E;
    public TextStyle x;
    public int y;
    public int z;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        int i;
        int i2;
        FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.k);
        this.D = TextStyleKt.a(this.x, DelegatableNodeKt.g(this).I);
        FontFamily fontFamily = a1().a.f;
        FontWeight fontWeight = a1().a.c;
        if (fontWeight == null) {
            fontWeight = FontWeight.q;
        }
        FontStyle fontStyle = a1().a.d;
        if (fontStyle != null) {
            i = fontStyle.a;
        } else {
            i = 0;
        }
        FontSynthesis fontSynthesis = a1().a.e;
        if (fontSynthesis != null) {
            i2 = fontSynthesis.a;
        } else {
            i2 = 65535;
        }
        this.E = ((FontFamilyResolverImpl) resolver).b(fontFamily, fontWeight, i, i2);
        ObserverModifierNodeKt.a(this, new e(this, 0));
        this.A = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.D = null;
        this.E = null;
        this.A = false;
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void W() {
        this.D = TextStyleKt.a(this.x, DelegatableNodeKt.g(this).I);
        this.A = true;
        LayoutModifierNodeKt.a(this);
    }

    public final void Y0(MeasureScope measureScope, TextStyle textStyle, FontFamily.Resolver resolver) {
        TextLayout textLayout = TextFieldDelegateKt.b(textStyle, measureScope, resolver, 3, true).d;
        float i = textLayout.i(0);
        float i2 = textLayout.i(1);
        float i3 = textLayout.i(2);
        this.B = HeightInLinesModifierKt.a(i, i2, i3, this.y, 1);
        this.C = HeightInLinesModifierKt.a(i, i2, i3, this.z, Integer.MAX_VALUE);
    }

    public final void Z0(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        int i = 0;
        if (this.A) {
            Y0(lookaheadCapablePlaceable, a1(), (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.k));
            this.A = false;
        }
        int i2 = this.B;
        if (i2 >= 0) {
            i = i2;
        }
        this.B = i;
        int i3 = this.C;
        if (i3 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        this.C = i3;
    }

    public final TextStyle a1() {
        TextStyle textStyle = this.D;
        if (textStyle != null) {
            return textStyle;
        }
        throw q.C("Resolved style is not set.");
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        Z0(lookaheadCapablePlaceable);
        int i2 = this.B;
        if (i2 == this.C) {
            return i2;
        }
        int V = intrinsicMeasurable.V(i);
        int i3 = this.B;
        int i4 = this.C;
        if (V < i3) {
            V = i3;
        }
        if (V > i4) {
            return i4;
        }
        return V;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        Z0(lookaheadCapablePlaceable);
        int i2 = this.B;
        int i3 = this.C;
        if (i2 == i3) {
            return i3;
        }
        int b = intrinsicMeasurable.b(i);
        int i4 = this.B;
        int i5 = this.C;
        if (b < i4) {
            b = i4;
        }
        if (b > i5) {
            return i5;
        }
        return b;
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void g() {
        this.A = true;
        LayoutModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        int i;
        int g;
        Map map;
        if (this.A) {
            Y0(measureScope, a1(), (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.k));
            this.A = false;
        }
        int i2 = this.B;
        if (i2 != -1) {
            i = RangesKt.d(i2, Constraints.i(j), Constraints.g(j));
        } else {
            i = Constraints.i(j);
        }
        int i3 = i;
        int i4 = this.C;
        if (i4 != -1) {
            g = RangesKt.d(i4, Constraints.i(j), Constraints.g(j));
        } else {
            g = Constraints.g(j);
        }
        Placeable w = measurable.w(Constraints.a(j, 0, 0, i3, g, 3));
        int i5 = w.j;
        int i6 = w.k;
        defpackage.f fVar = new defpackage.f(w, 5);
        map = EmptyMap.j;
        return measureScope.B(i5, i6, map, fVar);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        if (this.E != null) {
            ObserverModifierNodeKt.a(this, new e(this, 1));
        }
        this.A = true;
        LayoutModifierNodeKt.a(this);
    }
}
