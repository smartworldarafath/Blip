package androidx.compose.material.ripple;

import android.view.View;
import android.view.ViewGroup;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material.b;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.fe;
import defpackage.q;
import defpackage.r1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RippleNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, DrawModifierNode, LayoutAwareModifierNode {
    public final b A;
    public StateLayer B;
    public float C;
    public boolean E;
    private final ColorProducer color;
    public final InteractionSource x;
    public final boolean y;
    public final float z;
    public long D = 0;
    public final MutableObjectList F = new MutableObjectList();

    public RippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, b bVar) {
        this.x = interactionSource;
        this.y = z;
        this.z = f;
        this.color = colorProducer;
        this.A = bVar;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        BuildersKt.c(M0(), null, null, new RippleNode$onAttach$1(this, null), 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Y0(PressInteraction pressInteraction) {
        RippleHostView rippleHostView;
        Object remove;
        View view;
        RippleContainer rippleContainer;
        if (pressInteraction instanceof PressInteraction.Press) {
            PressInteraction.Press press = (PressInteraction.Press) pressInteraction;
            long j = this.D;
            float f = this.C;
            AndroidRippleNode androidRippleNode = (AndroidRippleNode) this;
            RippleContainer rippleContainer2 = androidRippleNode.G;
            RippleContainer rippleContainer3 = rippleContainer2;
            if (rippleContainer2 == null) {
                Object obj = (View) CompositionLocalConsumerModifierNodeKt.a(androidRippleNode, AndroidCompositionLocals_androidKt.f);
                while (!(obj instanceof ViewGroup)) {
                    Object parent = ((View) obj).getParent();
                    if (parent instanceof View) {
                        obj = parent;
                    } else {
                        fe.u("Couldn't find a valid parent for ", obj, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?");
                        return;
                    }
                }
                ViewGroup viewGroup = (ViewGroup) obj;
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i < childCount) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof RippleContainer) {
                            rippleContainer = (RippleContainer) childAt;
                            break;
                        }
                        i++;
                    } else {
                        RippleContainer rippleContainer4 = new RippleContainer(viewGroup.getContext());
                        viewGroup.addView(rippleContainer4);
                        rippleContainer = rippleContainer4;
                        break;
                    }
                }
                androidRippleNode.G = rippleContainer;
                rippleContainer3 = rippleContainer;
            }
            ArrayList arrayList = rippleContainer3.k;
            RippleHostMap rippleHostMap = rippleContainer3.m;
            LinkedHashMap linkedHashMap = rippleHostMap.a;
            LinkedHashMap linkedHashMap2 = rippleHostMap.a;
            LinkedHashMap linkedHashMap3 = rippleHostMap.b;
            RippleHostView rippleHostView2 = (RippleHostView) linkedHashMap.get(androidRippleNode);
            View view2 = rippleHostView2;
            if (rippleHostView2 == null) {
                ArrayList arrayList2 = rippleContainer3.l;
                arrayList2.getClass();
                if (arrayList2.isEmpty()) {
                    remove = null;
                } else {
                    remove = arrayList2.remove(0);
                }
                RippleHostView rippleHostView3 = (RippleHostView) remove;
                View view3 = rippleHostView3;
                if (rippleHostView3 == null) {
                    if (rippleContainer3.n > CollectionsKt.u(arrayList)) {
                        View view4 = new View(rippleContainer3.getContext());
                        rippleContainer3.addView(view4);
                        arrayList.add(view4);
                        view = view4;
                    } else {
                        RippleHostView rippleHostView4 = (RippleHostView) arrayList.get(rippleContainer3.n);
                        RippleHostKey rippleHostKey = (RippleHostKey) linkedHashMap3.get(rippleHostView4);
                        view = rippleHostView4;
                        if (rippleHostKey != null) {
                            AndroidRippleNode androidRippleNode2 = (AndroidRippleNode) rippleHostKey;
                            androidRippleNode2.H = null;
                            DrawModifierNodeKt.a(androidRippleNode2);
                            RippleHostView rippleHostView5 = (RippleHostView) linkedHashMap2.get(rippleHostKey);
                            if (rippleHostView5 != null) {
                            }
                            linkedHashMap2.remove(rippleHostKey);
                            rippleHostView4.c();
                            view = rippleHostView4;
                        }
                    }
                    int i2 = rippleContainer3.n;
                    if (i2 < rippleContainer3.j - 1) {
                        rippleContainer3.n = i2 + 1;
                        view3 = view;
                    } else {
                        rippleContainer3.n = 0;
                        view3 = view;
                    }
                }
                linkedHashMap2.put(androidRippleNode, view3);
                linkedHashMap3.put(view3, androidRippleNode);
                view2 = view3;
            }
            RippleHostView rippleHostView6 = view2;
            rippleHostView6.b(press, androidRippleNode.y, j, MathKt.b(f), androidRippleNode.color.a(), ((RippleAlpha) androidRippleNode.A.a()).d, new r1(1, androidRippleNode));
            androidRippleNode.H = rippleHostView6;
            DrawModifierNodeKt.a(androidRippleNode);
            return;
        }
        if (pressInteraction instanceof PressInteraction.Release) {
            RippleHostView rippleHostView7 = ((AndroidRippleNode) this).H;
            if (rippleHostView7 != null) {
                rippleHostView7.d();
                return;
            }
            return;
        }
        if ((pressInteraction instanceof PressInteraction.Cancel) && (rippleHostView = ((AndroidRippleNode) this).H) != null) {
            rippleHostView.d();
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void b(long j) {
        float i0;
        this.E = true;
        Density density = DelegatableNodeKt.g(this).H;
        this.D = IntSizeKt.a(j);
        float f = this.z;
        if (Float.isNaN(f)) {
            long j2 = this.D;
            float d = Size.d(j2);
            float b = Size.b(j2);
            i0 = Offset.d((Float.floatToRawIntBits(b) & 4294967295L) | (Float.floatToRawIntBits(d) << 32)) / 2.0f;
            if (this.y) {
                i0 += density.i0(10.0f);
            }
        } else {
            i0 = density.i0(f);
        }
        this.C = i0;
        MutableObjectList mutableObjectList = this.F;
        Object[] objArr = mutableObjectList.a;
        int i = mutableObjectList.b;
        for (int i2 = 0; i2 < i; i2++) {
            Y0((PressInteraction) objArr[i2]);
        }
        mutableObjectList.k();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        layoutNodeDrawScope.a();
        StateLayer stateLayer = this.B;
        if (stateLayer != null) {
            float f = this.C;
            long a = this.color.a();
            float floatValue = ((Number) stateLayer.c.f()).floatValue();
            if (floatValue > 0.0f) {
                long b = Color.b(a, floatValue);
                if (stateLayer.a) {
                    float d = Size.d(canvasDrawScope.i());
                    float b2 = Size.b(canvasDrawScope.i());
                    CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
                    long d2 = canvasDrawScope$drawContext$1.d();
                    canvasDrawScope$drawContext$1.a().g();
                    try {
                        canvasDrawScope$drawContext$1.a.a.a().n(0.0f, 0.0f, d, b2, 1);
                        DrawScope.J(layoutNodeDrawScope, b, f, 0L, 0.0f, 124);
                    } finally {
                        q.v(canvasDrawScope$drawContext$1, d2);
                    }
                } else {
                    DrawScope.J(layoutNodeDrawScope, b, f, 0L, 0.0f, 124);
                }
            }
        }
        AndroidRippleNode androidRippleNode = (AndroidRippleNode) this;
        Canvas a2 = canvasDrawScope.k.a();
        RippleHostView rippleHostView = androidRippleNode.H;
        if (rippleHostView != null) {
            rippleHostView.e(androidRippleNode.D, MathKt.b(androidRippleNode.C), androidRippleNode.color.a(), ((RippleAlpha) androidRippleNode.A.a()).d);
            rippleHostView.draw(AndroidCanvas_androidKt.a(a2));
        }
    }
}
