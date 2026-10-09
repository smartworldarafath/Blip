package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TextFieldSizeNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    public final TextStyle x;
    public TypefaceResult y;
    public TextFieldSize z;

    public TextFieldSizeNode(TextStyle textStyle) {
        this.x = textStyle;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        TextStyle a = TextStyleKt.a(this.x, DelegatableNodeKt.g(this).I);
        FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.k);
        Y0(a, resolver);
        LayoutDirection layoutDirection = DelegatableNodeKt.g(this).I;
        Density density = DelegatableNodeKt.g(this).H;
        TypefaceResult typefaceResult = this.y;
        if (typefaceResult != null) {
            this.z = new TextFieldSize(layoutDirection, density, resolver, a, typefaceResult.getValue());
            return;
        }
        throw q.C("Font resolution state is not set.");
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.y = null;
        this.z = null;
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void W() {
        TextFieldSize textFieldSize = this.z;
        if (textFieldSize != null) {
            TextFieldSize.a(textFieldSize, DelegatableNodeKt.g(this).I, null, null, 30);
        }
        LayoutModifierNodeKt.a(this);
    }

    public final void Y0(TextStyle textStyle, FontFamily.Resolver resolver) {
        int i;
        int i2;
        SpanStyle spanStyle = textStyle.a;
        FontFamily fontFamily = spanStyle.f;
        FontWeight fontWeight = spanStyle.c;
        if (fontWeight == null) {
            fontWeight = FontWeight.q;
        }
        FontStyle fontStyle = spanStyle.d;
        if (fontStyle != null) {
            i = fontStyle.a;
        } else {
            i = 0;
        }
        FontSynthesis fontSynthesis = spanStyle.e;
        if (fontSynthesis != null) {
            i2 = fontSynthesis.a;
        } else {
            i2 = 65535;
        }
        this.y = ((FontFamilyResolverImpl) resolver).b(fontFamily, fontWeight, i, i2);
        LayoutModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void g() {
        TextFieldSize textFieldSize = this.z;
        if (textFieldSize != null) {
            TextFieldSize.a(textFieldSize, null, DelegatableNodeKt.g(this).H, null, 29);
        }
        LayoutModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        TextFieldSize textFieldSize = this.z;
        if (textFieldSize != null) {
            MutableState mutableState = textFieldSize.f;
            TypefaceResult typefaceResult = this.y;
            if (typefaceResult != null) {
                Object value = typefaceResult.getValue();
                if (!Intrinsics.a(value, textFieldSize.e)) {
                    textFieldSize.e = value;
                    ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
                }
                if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
                    textFieldSize.g = TextFieldDelegateKt.a(textFieldSize.d, textFieldSize.b, textFieldSize.c);
                    ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
                }
                long j2 = textFieldSize.g;
                Placeable w = measurable.w(ConstraintsKt.e(j, ConstraintsKt.b((int) (j2 >> 32), 0, (int) (j2 & 4294967295L), 0, 10)));
                int i = w.j;
                int i2 = w.k;
                defpackage.f fVar = new defpackage.f(w, 13);
                map = EmptyMap.j;
                return measureScope.B(i, i2, map, fVar);
            }
            throw q.C("Font resolution state is not set.");
        }
        throw q.C("Min size state is not set.");
    }
}
