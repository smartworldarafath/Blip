package androidx.compose.ui.window;

import android.annotation.SuppressLint;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.d;
import defpackage.k8;
import defpackage.kb;
import defpackage.p;
import defpackage.s1;
import defpackage.v2;
import defpackage.wc;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public final class PopupLayout extends AbstractComposeView {
    public static final wc N = new wc(4);
    public final WindowManager.LayoutParams A;
    public PopupPositionProvider B;
    public LayoutDirection C;
    public final MutableState D;
    public final MutableState E;
    public IntRect F;
    public final State G;
    public final Rect H;
    public final SnapshotStateObserver I;
    public v2 J;
    public final MutableState K;
    public boolean L;
    public final int[] M;
    public Function0 t;
    public PopupProperties u;
    public String v;
    public final View w;
    public final boolean x;
    public final PopupLayoutHelper y;
    public final WindowManager z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.compose.ui.window.PopupLayout$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(0.0f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.ui.window.PopupLayoutHelper] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public PopupLayout(Function0 function0, PopupProperties popupProperties, String str, View view, Density density, PopupPositionProvider popupPositionProvider, UUID uuid, boolean z) {
        super(view.getContext());
        ?? r0;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            r0 = new Object();
        } else if (i >= 29) {
            r0 = new Object();
        } else {
            r0 = new Object();
        }
        this.t = function0;
        this.u = popupProperties;
        this.v = str;
        this.w = view;
        this.x = z;
        this.y = r0;
        Object systemService = view.getContext().getSystemService("window");
        systemService.getClass();
        this.z = (WindowManager) systemService;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        PopupProperties popupProperties2 = this.u;
        boolean b = AndroidPopup_androidKt.b(view);
        boolean z2 = popupProperties2.b;
        int i2 = popupProperties2.a;
        if (z2 && b) {
            i2 |= 8192;
        } else if (z2 && !b) {
            i2 &= -8193;
        }
        layoutParams.flags = i2;
        layoutParams.type = this.u.f;
        layoutParams.token = view.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(view.getContext().getResources().getString(R.string.default_popup_window_title));
        this.A = layoutParams;
        this.B = popupPositionProvider;
        this.C = LayoutDirection.j;
        this.D = SnapshotStateKt.g(null);
        this.E = SnapshotStateKt.g(null);
        this.G = SnapshotStateKt.e(new kb(5, this));
        this.H = new Rect();
        this.I = new SnapshotStateObserver(new s1(this, 2));
        setId(android.R.id.content);
        setTag(R.id.view_tree_lifecycle_owner, ViewTreeLifecycleOwner.a(view));
        setTag(R.id.view_tree_view_model_store_owner, ViewTreeViewModelStoreOwner.a(view));
        setTag(R.id.view_tree_saved_state_registry_owner, ViewTreeSavedStateRegistryOwner.a(view));
        setTag(R.id.compose_view_saveable_id_tag, "Popup:" + uuid);
        setClipChildren(false);
        setElevation(density.i0(8.0f));
        setOutlineProvider(new ViewOutlineProvider());
        this.K = SnapshotStateKt.g(ComposableSingletons$AndroidPopup_androidKt.a);
        this.M = new int[2];
    }

    private final Function2<Composer, Integer, Unit> getContent() {
        return (Function2) ((SnapshotMutableStateImpl) this.K).getValue();
    }

    private final IntRect getDisplayBounds() {
        int i = this.u.a & 512;
        View view = this.w;
        Rect rect = this.H;
        PopupLayoutHelper popupLayoutHelper = this.y;
        if (i == 0) {
            ((PopupLayoutHelperImpl) popupLayoutHelper).getClass();
            view.getWindowVisibleDisplayFrame(rect);
        } else {
            popupLayoutHelper.b(view, rect);
        }
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    private final LayoutCoordinates getParentLayoutCoordinates() {
        return (LayoutCoordinates) ((SnapshotMutableStateImpl) this.E).getValue();
    }

    public static boolean m(PopupLayout popupLayout) {
        LayoutCoordinates parentLayoutCoordinates = popupLayout.getParentLayoutCoordinates();
        if (parentLayoutCoordinates == null || !parentLayoutCoordinates.o()) {
            parentLayoutCoordinates = null;
        }
        if (parentLayoutCoordinates != null && popupLayout.m6getPopupContentSizebOM6tXw() != null) {
            return true;
        }
        return false;
    }

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        ((SnapshotMutableStateImpl) this.K).setValue(function2);
    }

    private final void setParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        ((SnapshotMutableStateImpl) this.E).setValue(layoutCoordinates);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void a(int i, Composer composer) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-857613600);
        if (gapComposer.h(this)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            getContent().n(gapComposer, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new d(i, 16, this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.u.c) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getKeyCode() == 4 || keyEvent.getKeyCode() == 111) {
            KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
            if (keyDispatcherState == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            }
            if (keyEvent.getAction() == 1 && keyDispatcherState.isTracking(keyEvent) && !keyEvent.isCanceled()) {
                Function0 function0 = this.t;
                if (function0 != null) {
                    function0.a();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void g(boolean z, int i, int i2, int i3, int i4) {
        super.g(z, i, i2, i3, i4);
        this.u.getClass();
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        WindowManager.LayoutParams layoutParams = this.A;
        layoutParams.width = measuredWidth;
        layoutParams.height = childAt.getMeasuredHeight();
        ((PopupLayoutHelperImpl) this.y).getClass();
        this.z.updateViewLayout(this, layoutParams);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.G.getValue()).booleanValue();
    }

    public final WindowManager.LayoutParams getParams$ui() {
        return this.A;
    }

    public final LayoutDirection getParentLayoutDirection() {
        return this.C;
    }

    /* renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m6getPopupContentSizebOM6tXw() {
        return (IntSize) ((SnapshotMutableStateImpl) this.D).getValue();
    }

    public final PopupPositionProvider getPositionProvider() {
        return this.B;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.L;
    }

    public final String getTestTag() {
        return this.v;
    }

    public /* bridge */ /* synthetic */ View getViewRoot() {
        return null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void h(int i, int i2) {
        this.u.getClass();
        IntRect displayBounds = getDisplayBounds();
        super.h(View.MeasureSpec.makeMeasureSpec(displayBounds.c - displayBounds.a, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayBounds.a(), Integer.MIN_VALUE));
    }

    public final void n(CompositionContext compositionContext, Function2 function2) {
        setParentCompositionContext(compositionContext);
        setContent(function2);
        this.L = true;
    }

    public final void o(Function0 function0, PopupProperties popupProperties, String str, LayoutDirection layoutDirection) {
        int i;
        this.t = function0;
        this.v = str;
        if (!Intrinsics.a(this.u, popupProperties)) {
            popupProperties.getClass();
            this.u = popupProperties;
            boolean b = AndroidPopup_androidKt.b(this.w);
            boolean z = popupProperties.b;
            int i2 = popupProperties.a;
            if (z && b) {
                i2 |= 8192;
            } else if (z && !b) {
                i2 &= -8193;
            }
            WindowManager.LayoutParams layoutParams = this.A;
            layoutParams.flags = i2;
            ((PopupLayoutHelperImpl) this.y).getClass();
            this.z.updateViewLayout(this, layoutParams);
        }
        int ordinal = layoutDirection.ordinal();
        if (ordinal != 0) {
            i = 1;
            if (ordinal != 1) {
                k8.e();
                return;
            }
        } else {
            i = 0;
        }
        super.setLayoutDirection(i);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        SnapshotStateObserver snapshotStateObserver = this.I;
        snapshotStateObserver.h = Snapshot.Companion.d(snapshotStateObserver.d);
        if (this.u.c && Build.VERSION.SDK_INT >= 33) {
            if (this.J == null) {
                this.J = new v2(0, this.t);
            }
            Api33Impl.a(this, this.J);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SnapshotStateObserver snapshotStateObserver = this.I;
        p pVar = snapshotStateObserver.h;
        if (pVar != null) {
            pVar.a();
        }
        snapshotStateObserver.a();
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.b(this, this.J);
        }
        this.J = null;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.u.d) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && (motionEvent.getX() < 0.0f || motionEvent.getX() >= getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() >= getHeight())) {
            Function0 function0 = this.t;
            if (function0 != null) {
                function0.a();
                return true;
            }
        } else if (motionEvent != null && motionEvent.getAction() == 4) {
            Function0 function02 = this.t;
            if (function02 != null) {
                function02.a();
            }
        } else {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public final void p() {
        long d;
        LayoutCoordinates parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates != null) {
            if (!parentLayoutCoordinates.o()) {
                parentLayoutCoordinates = null;
            }
            if (parentLayoutCoordinates != null) {
                long f = parentLayoutCoordinates.f();
                if (this.x) {
                    d = parentLayoutCoordinates.u(0L);
                } else {
                    d = parentLayoutCoordinates.d(0L);
                }
                long round = (Math.round(Float.intBitsToFloat((int) (d >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (d & 4294967295L))) & 4294967295L);
                int i = (int) (round >> 32);
                int i2 = (int) (round & 4294967295L);
                IntRect intRect = new IntRect(i, i2, ((int) (f >> 32)) + i, ((int) (f & 4294967295L)) + i2);
                if (!intRect.equals(this.F)) {
                    this.F = intRect;
                    r();
                }
            }
        }
    }

    public final void q(LayoutCoordinates layoutCoordinates) {
        setParentLayoutCoordinates(layoutCoordinates);
        p();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    public final void r() {
        IntSize m6getPopupContentSizebOM6tXw;
        final IntRect intRect = this.F;
        if (intRect != null && (m6getPopupContentSizebOM6tXw = m6getPopupContentSizebOM6tXw()) != null) {
            final long j = m6getPopupContentSizebOM6tXw.a;
            IntRect displayBounds = getDisplayBounds();
            final long a = (displayBounds.a() & 4294967295L) | ((displayBounds.c - displayBounds.a) << 32);
            final ?? obj = new Object();
            obj.j = 0L;
            this.I.e(this, N, new Function0() { // from class: vd
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    PopupLayout popupLayout = this;
                    Ref$LongRef.this.j = popupLayout.B.a(intRect, a, popupLayout.C, j);
                    return Unit.a;
                }
            });
            long j2 = obj.j;
            WindowManager.LayoutParams layoutParams = this.A;
            layoutParams.x = (int) (j2 >> 32);
            layoutParams.y = (int) (j2 & 4294967295L);
            boolean z = this.u.e;
            PopupLayoutHelper popupLayoutHelper = this.y;
            if (z) {
                popupLayoutHelper.a(this, (int) (a >> 32), (int) (a & 4294967295L));
            }
            ((PopupLayoutHelperImpl) popupLayoutHelper).getClass();
            this.z.updateViewLayout(this, layoutParams);
        }
    }

    public final void setParentLayoutDirection(LayoutDirection layoutDirection) {
        this.C = layoutDirection;
    }

    /* renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m7setPopupContentSizefhxjrPA(IntSize intSize) {
        ((SnapshotMutableStateImpl) this.D).setValue(intSize);
    }

    public final void setPositionProvider(PopupPositionProvider popupPositionProvider) {
        this.B = popupPositionProvider;
    }

    public final void setTestTag(String str) {
        this.v = str;
    }

    public static /* synthetic */ void getParams$ui$annotations() {
    }

    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
    }
}
