package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.input.pointer.RequestDisallowInterceptTouchEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.VelocityKt;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.a7;
import defpackage.c;
import defpackage.h;
import defpackage.m2;
import defpackage.n;
import defpackage.n2;
import defpackage.o2;
import defpackage.p2;
import defpackage.q0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3, ComposeNodeLifecycleCallback, OwnerScope, OnApplyWindowInsetsListener {
    public static final h J = new h(11);
    public final o2 A;
    public final o2 B;
    public Function1 C;
    public final int[] D;
    public int E;
    public int F;
    public final NestedScrollingParentHelper G;
    public boolean H;
    public final LayoutNode I;
    public final NestedScrollDispatcher j;
    public final View k;
    public final Owner l;
    public Function0 m;
    public boolean n;
    public Function0 o;
    public Function0 p;
    public Modifier q;
    public Function1 r;
    public Density s;
    public Function1 t;
    public LifecycleOwner u;
    public SavedStateRegistryOwner v;
    public final int[] w;
    public long x;
    public WindowInsetsCompat y;
    public Function1 z;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, kotlin.jvm.functions.Function1, androidx.compose.ui.input.pointer.RequestDisallowInterceptTouchEvent] */
    public AndroidViewHolder(Context context, GapComposer.CompositionContextImpl compositionContextImpl, int i, NestedScrollDispatcher nestedScrollDispatcher, View view, Owner owner) {
        super(context);
        this.j = nestedScrollDispatcher;
        this.k = view;
        this.l = owner;
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.a;
        setTag(R.id.androidx_compose_ui_view_composition_context, compositionContextImpl);
        int i2 = 0;
        setSaveFromParentEnabled(false);
        addView(view);
        final ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) this;
        ViewCompat.r(this, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder.2
            {
                super(1);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list) {
                h hVar = AndroidViewHolder.J;
                return ViewFactoryHolder.this.m(windowInsetsCompat);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsAnimationCompat.BoundsCompat d(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                InnerNodeCoordinator innerNodeCoordinator = ViewFactoryHolder.this.I.O.c;
                if (innerNodeCoordinator.l0.w) {
                    long b = IntOffsetKt.b(innerNodeCoordinator.S(0L));
                    int i3 = (int) (b >> 32);
                    int i4 = 0;
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    int i5 = (int) (b & 4294967295L);
                    if (i5 < 0) {
                        i5 = 0;
                    }
                    long f = LayoutCoordinatesKt.c(innerNodeCoordinator).f();
                    int i6 = (int) (f >> 32);
                    int i7 = (int) (f & 4294967295L);
                    long j = innerNodeCoordinator.l;
                    long b2 = IntOffsetKt.b(innerNodeCoordinator.S((Float.floatToRawIntBits((int) (j >> 32)) << 32) | (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L)));
                    int i8 = i6 - ((int) (b2 >> 32));
                    if (i8 < 0) {
                        i8 = 0;
                    }
                    int i9 = i7 - ((int) (b2 & 4294967295L));
                    if (i9 >= 0) {
                        i4 = i9;
                    }
                    if (i3 != 0 || i5 != 0 || i8 != 0 || i4 != 0) {
                        return new WindowInsetsAnimationCompat.BoundsCompat(AndroidViewHolder.l(boundsCompat.a, i3, i5, i8, i4), AndroidViewHolder.l(boundsCompat.b, i3, i5, i8, i4));
                    }
                }
                return boundsCompat;
            }
        });
        ViewCompat.q(this, this);
        this.m = new n(13);
        this.o = new n(13);
        this.p = new n(13);
        Modifier.Companion companion = Modifier.Companion.b;
        this.q = companion;
        this.s = DensityKt.b(1.0f);
        int i3 = 2;
        this.w = new int[2];
        this.x = 0L;
        this.A = new o2(viewFactoryHolder, i2);
        int i4 = 1;
        this.B = new o2(viewFactoryHolder, i4);
        this.D = new int[2];
        this.E = Integer.MIN_VALUE;
        this.F = Integer.MIN_VALUE;
        this.G = new Object();
        final LayoutNode layoutNode = new LayoutNode(3);
        layoutNode.x = viewFactoryHolder;
        Modifier a = SemanticsModifierKt.a(NestedScrollModifierKt.a(companion, AndroidViewHolder_androidKt.a, nestedScrollDispatcher), true, new h(12));
        PointerInteropFilter pointerInteropFilter = new PointerInteropFilter();
        pointerInteropFilter.b = new m2(viewFactoryHolder, 2);
        ?? obj = new Object();
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent = pointerInteropFilter.c;
        if (requestDisallowInterceptTouchEvent != null) {
            requestDisallowInterceptTouchEvent.j = null;
        }
        pointerInteropFilter.c = obj;
        obj.j = pointerInteropFilter;
        setOnRequestDisallowInterceptTouchEvent$ui(obj);
        Modifier l = OnGloballyPositionedModifierKt.a(DrawModifierKt.b(a.l(pointerInteropFilter), new p2(viewFactoryHolder, layoutNode, viewFactoryHolder)), new n2(viewFactoryHolder, layoutNode, i4)).l(new BringIntoViewElement(new m2(viewFactoryHolder, 0)));
        layoutNode.h0(this.q.l(l));
        this.r = new defpackage.b(i3, layoutNode, l);
        layoutNode.d0(this.s);
        this.t = new c(7, layoutNode);
        layoutNode.V = new n2(viewFactoryHolder, layoutNode, i2);
        layoutNode.W = new m2(viewFactoryHolder, 1);
        layoutNode.g0(new MeasurePolicy() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final MeasureResult a(MeasureScope measureScope, List list, long j) {
                ViewFactoryHolder viewFactoryHolder2 = ViewFactoryHolder.this;
                if (viewFactoryHolder2.getChildCount() == 0) {
                    return MeasureScope.h0(measureScope, Constraints.j(j), Constraints.i(j), new a7(15));
                }
                if (Constraints.j(j) != 0) {
                    viewFactoryHolder2.getChildAt(0).setMinimumWidth(Constraints.j(j));
                }
                if (Constraints.i(j) != 0) {
                    viewFactoryHolder2.getChildAt(0).setMinimumHeight(Constraints.i(j));
                }
                int j2 = Constraints.j(j);
                int h = Constraints.h(j);
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder2.getLayoutParams();
                layoutParams.getClass();
                int k = AndroidViewHolder.k(viewFactoryHolder2, j2, h, layoutParams.width);
                int i5 = Constraints.i(j);
                int g = Constraints.g(j);
                ViewGroup.LayoutParams layoutParams2 = viewFactoryHolder2.getLayoutParams();
                layoutParams2.getClass();
                viewFactoryHolder2.measure(k, AndroidViewHolder.k(viewFactoryHolder2, i5, g, layoutParams2.height));
                return MeasureScope.h0(measureScope, viewFactoryHolder2.getMeasuredWidth(), viewFactoryHolder2.getMeasuredHeight(), new n2(viewFactoryHolder2, layoutNode, 2));
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i5) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                ViewFactoryHolder viewFactoryHolder2 = ViewFactoryHolder.this;
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder2.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder2.measure(makeMeasureSpec, AndroidViewHolder.k(viewFactoryHolder2, 0, i5, layoutParams.height));
                return viewFactoryHolder2.getMeasuredWidth();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i5) {
                ViewFactoryHolder viewFactoryHolder2 = ViewFactoryHolder.this;
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder2.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder2.measure(AndroidViewHolder.k(viewFactoryHolder2, 0, i5, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return viewFactoryHolder2.getMeasuredHeight();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i5) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                ViewFactoryHolder viewFactoryHolder2 = ViewFactoryHolder.this;
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder2.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder2.measure(makeMeasureSpec, AndroidViewHolder.k(viewFactoryHolder2, 0, i5, layoutParams.height));
                return viewFactoryHolder2.getMeasuredWidth();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i5) {
                ViewFactoryHolder viewFactoryHolder2 = ViewFactoryHolder.this;
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder2.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder2.measure(AndroidViewHolder.k(viewFactoryHolder2, 0, i5, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return viewFactoryHolder2.getMeasuredHeight();
            }
        });
        this.I = layoutNode;
    }

    private final OwnerSnapshotObserver getSnapshotObserver() {
        if (!isAttachedToWindow()) {
            InlineClassHelperKt.b("Expected AndroidViewHolder to be attached when observing reads.");
        }
        return this.l.getSnapshotObserver();
    }

    public static void j(ViewFactoryHolder viewFactoryHolder) {
        if (viewFactoryHolder.n && viewFactoryHolder.isAttachedToWindow() && viewFactoryHolder.k.getParent() == viewFactoryHolder) {
            OwnerSnapshotObserver snapshotObserver = viewFactoryHolder.getSnapshotObserver();
            snapshotObserver.a.e(viewFactoryHolder, J, viewFactoryHolder.m);
        }
    }

    public static final int k(ViewFactoryHolder viewFactoryHolder, int i, int i2, int i3) {
        if (i3 < 0 && i != i2) {
            if (i3 == -2 && i2 != Integer.MAX_VALUE) {
                return View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
            }
            if (i3 == -1 && i2 != Integer.MAX_VALUE) {
                return View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            }
            return View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        return View.MeasureSpec.makeMeasureSpec(RangesKt.d(i3, i, i2), 1073741824);
    }

    public static Insets l(Insets insets, int i, int i2, int i3, int i4) {
        int i5 = insets.a - i;
        int i6 = 0;
        if (i5 < 0) {
            i5 = 0;
        }
        int i7 = insets.b - i2;
        if (i7 < 0) {
            i7 = 0;
        }
        int i8 = insets.c - i3;
        if (i8 < 0) {
            i8 = 0;
        }
        int i9 = insets.d - i4;
        if (i9 >= 0) {
            i6 = i9;
        }
        return Insets.b(i5, i7, i8, i6);
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void a() {
        this.p.a();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void b() {
        this.o.a();
        removeAllViewsInLayout();
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void c(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        int i6;
        NestedScrollNode nestedScrollNode;
        long j;
        if (!this.k.isNestedScrollingEnabled()) {
            return;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(i * (-1.0f)) << 32) | (Float.floatToRawIntBits(i2 * (-1.0f)) & 4294967295L);
        long floatToRawIntBits2 = (Float.floatToRawIntBits(i3 * (-1.0f)) << 32) | (Float.floatToRawIntBits(i4 * (-1.0f)) & 4294967295L);
        if (i5 == 0) {
            i6 = 1;
        } else {
            i6 = 2;
        }
        NestedScrollNode nestedScrollNode2 = this.j.a;
        if (nestedScrollNode2 != null) {
            nestedScrollNode = nestedScrollNode2.Z0();
        } else {
            nestedScrollNode = null;
        }
        NestedScrollNode nestedScrollNode3 = nestedScrollNode;
        if (nestedScrollNode3 != null) {
            j = nestedScrollNode3.w0(i6, floatToRawIntBits, floatToRawIntBits2);
        } else {
            j = 0;
        }
        iArr[0] = MathKt.b(Float.intBitsToFloat((int) (j >> 32))) * (-1);
        iArr[1] = MathKt.b(Float.intBitsToFloat((int) (j & 4294967295L))) * (-1);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void d(View view, int i, int i2, int i3, int i4, int i5) {
        int i6;
        NestedScrollNode nestedScrollNode;
        if (!this.k.isNestedScrollingEnabled()) {
            return;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(i * (-1.0f)) << 32) | (Float.floatToRawIntBits(i2 * (-1.0f)) & 4294967295L);
        long floatToRawIntBits2 = (Float.floatToRawIntBits(i3 * (-1.0f)) << 32) | (Float.floatToRawIntBits(i4 * (-1.0f)) & 4294967295L);
        if (i5 == 0) {
            i6 = 1;
        } else {
            i6 = 2;
        }
        int i7 = i6;
        NestedScrollNode nestedScrollNode2 = this.j.a;
        if (nestedScrollNode2 != null) {
            nestedScrollNode = nestedScrollNode2.Z0();
        } else {
            nestedScrollNode = null;
        }
        NestedScrollNode nestedScrollNode3 = nestedScrollNode;
        if (nestedScrollNode3 != null) {
            nestedScrollNode3.w0(i7, floatToRawIntBits, floatToRawIntBits2);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean e(View view, View view2, int i, int i2) {
        if ((i & 2) != 0 || (i & 1) != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void f(View view, View view2, int i, int i2) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.G;
        if (i2 == 1) {
            nestedScrollingParentHelper.b = i;
        } else {
            nestedScrollingParentHelper.a = i;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(View view, int i) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.G;
        if (i == 1) {
            nestedScrollingParentHelper.b = 0;
        } else {
            nestedScrollingParentHelper.a = 0;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        int[] iArr = this.D;
        getLocationInWindow(iArr);
        int i = iArr[0];
        region.op(i, iArr[1], getWidth() + i, getHeight() + iArr[1], Region.Op.DIFFERENCE);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return getClass().getName();
    }

    public final Density getDensity() {
        return this.s;
    }

    public final View getInteropView() {
        return this.k;
    }

    public final LayoutNode getLayoutNode() {
        return this.I;
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.k.getLayoutParams();
        if (layoutParams == null) {
            return new ViewGroup.LayoutParams(-1, -1);
        }
        return layoutParams;
    }

    public final LifecycleOwner getLifecycleOwner() {
        return this.u;
    }

    public final Modifier getModifier() {
        return this.q;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.G;
        return nestedScrollingParentHelper.b | nestedScrollingParentHelper.a;
    }

    public final Function1<Density, Unit> getOnDensityChanged$ui() {
        return this.t;
    }

    public final Function1<Modifier, Unit> getOnModifierChanged$ui() {
        return this.r;
    }

    public final Function1<Boolean, Unit> getOnRequestDisallowInterceptTouchEvent$ui() {
        return this.C;
    }

    public final Function0<Unit> getRelease() {
        return this.p;
    }

    public final Function0<Unit> getReset() {
        return this.o;
    }

    public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
        return this.v;
    }

    public final Function0<Unit> getUpdate() {
        return this.m;
    }

    public final View getView() {
        return this.k;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void h(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        NestedScrollNode nestedScrollNode;
        long j;
        if (!this.k.isNestedScrollingEnabled()) {
            return;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(i * (-1.0f)) << 32) | (Float.floatToRawIntBits(i2 * (-1.0f)) & 4294967295L);
        if (i3 == 0) {
            i4 = 1;
        } else {
            i4 = 2;
        }
        NestedScrollNode nestedScrollNode2 = this.j.a;
        if (nestedScrollNode2 != null) {
            nestedScrollNode = nestedScrollNode2.Z0();
        } else {
            nestedScrollNode = null;
        }
        if (nestedScrollNode != null) {
            j = nestedScrollNode.Q(i4, floatToRawIntBits);
        } else {
            j = 0;
        }
        iArr[0] = MathKt.b(Float.intBitsToFloat((int) (j >> 32))) * (-1);
        iArr[1] = MathKt.b(Float.intBitsToFloat((int) (j & 4294967295L))) * (-1);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat i(View view, WindowInsetsCompat windowInsetsCompat) {
        this.y = new WindowInsetsCompat(windowInsetsCompat);
        return m(windowInsetsCompat);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        super.invalidateChildInParent(iArr, rect);
        if (this.H) {
            this.k.postOnAnimation(new q0(3, this.B));
            return null;
        }
        this.I.G();
        return null;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.k.isNestedScrollingEnabled();
    }

    public final WindowInsetsCompat m(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat.m()) {
            InnerNodeCoordinator innerNodeCoordinator = this.I.O.c;
            if (innerNodeCoordinator.l0.w) {
                long b = IntOffsetKt.b(innerNodeCoordinator.S(0L));
                int i = (int) (b >> 32);
                int i2 = 0;
                if (i < 0) {
                    i = 0;
                }
                int i3 = (int) (b & 4294967295L);
                if (i3 < 0) {
                    i3 = 0;
                }
                long f = LayoutCoordinatesKt.c(innerNodeCoordinator).f();
                int i4 = (int) (f >> 32);
                int i5 = (int) (f & 4294967295L);
                long j = innerNodeCoordinator.l;
                long b2 = IntOffsetKt.b(innerNodeCoordinator.S((Float.floatToRawIntBits((int) (j >> 32)) << 32) | (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L)));
                int i6 = i4 - ((int) (b2 >> 32));
                if (i6 < 0) {
                    i6 = 0;
                }
                int i7 = i5 - ((int) (4294967295L & b2));
                if (i7 >= 0) {
                    i2 = i7;
                }
                if (i != 0 || i3 != 0 || i6 != 0 || i2 != 0) {
                    return windowInsetsCompat.n(i, i3, i6, i2);
                }
            }
        }
        return windowInsetsCompat;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A.a();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onDescendantInvalidated(View view, View view2) {
        super.onDescendantInvalidated(view, view2);
        if (this.H) {
            this.k.postOnAnimation(new q0(3, this.B));
        } else {
            this.I.G();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSnapshotObserver().a.b(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.k.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        View view = this.k;
        if (view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            return;
        }
        if (view.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        view.measure(i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        this.E = i;
        this.F = i2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.k.isNestedScrollingEnabled()) {
            return false;
        }
        BuildersKt.c(this.j.c(), null, null, new AndroidViewHolder$onNestedFling$1(z, this, VelocityKt.a(f * (-1.0f), f2 * (-1.0f)), null), 3);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        if (!this.k.isNestedScrollingEnabled()) {
            return false;
        }
        BuildersKt.c(this.j.c(), null, null, new AndroidViewHolder$onNestedPreFling$1(this, VelocityKt.a(f * (-1.0f), f2 * (-1.0f)), null), 3);
        return false;
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        androidx.compose.ui.geometry.Rect rect2;
        Function1 function1 = this.z;
        if (function1 != null) {
            if (rect != null) {
                rect2 = new androidx.compose.ui.geometry.Rect(rect.left, rect.top, rect.right, rect.bottom);
            } else {
                rect2 = null;
            }
            function1.b(rect2);
            return true;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        Function1 function1 = this.C;
        if (function1 != null) {
            function1.b(Boolean.valueOf(z));
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void setDensity(Density density) {
        if (density != this.s) {
            this.s = density;
            Function1 function1 = this.t;
            if (function1 != null) {
                function1.b(density);
            }
        }
    }

    public final void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != this.u) {
            this.u = lifecycleOwner;
            setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
        }
    }

    public final void setModifier(Modifier modifier) {
        if (modifier != this.q) {
            this.q = modifier;
            Function1 function1 = this.r;
            if (function1 != null) {
                function1.b(modifier);
            }
        }
    }

    public final void setOnDensityChanged$ui(Function1<? super Density, Unit> function1) {
        this.t = function1;
    }

    public final void setOnModifierChanged$ui(Function1<? super Modifier, Unit> function1) {
        this.r = function1;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui(Function1<? super Boolean, Unit> function1) {
        this.C = function1;
    }

    public final void setRelease(Function0<Unit> function0) {
        this.p = function0;
    }

    public final void setReset(Function0<Unit> function0) {
        this.o = function0;
    }

    public final void setSavedStateRegistryOwner(SavedStateRegistryOwner savedStateRegistryOwner) {
        if (savedStateRegistryOwner != this.v) {
            this.v = savedStateRegistryOwner;
            setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
        }
    }

    public final void setUpdate(Function0<Unit> function0) {
        this.m = function0;
        this.n = true;
        this.A.a();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        return isAttachedToWindow();
    }
}
