package androidx.compose.ui.platform;

import android.content.Context;
import android.os.IBinder;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.core.viewtree.ViewTree;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.fe;
import defpackage.n1;
import defpackage.pi;
import defpackage.q;
import defpackage.u2;
import java.lang.ref.WeakReference;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractComposeView extends ViewGroup {
    public static final /* synthetic */ int s = 0;
    public WeakReference j;
    public IBinder k;
    public Composition l;
    public CompositionContext m;
    public ComposeViewContext n;
    public n1 o;
    public boolean p;
    public boolean q;
    public boolean r;

    public AbstractComposeView(Context context) {
        super(context, null, 0);
        setClipChildren(false);
        setClipToPadding(false);
        setImportantForAccessibility(1);
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(this);
        addOnAttachStateChangeListener(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1);
        pi piVar = new pi(this);
        PoolingContainer.a(this, piVar);
        this.o = new n1(this, viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1, piVar, 10);
    }

    private final void setParentContext(CompositionContext compositionContext) {
        if (this.m != compositionContext) {
            this.m = compositionContext;
            if (compositionContext != null) {
                this.j = null;
            }
            Composition composition = this.l;
            if (composition != null) {
                composition.a();
                this.l = null;
                if (isAttachedToWindow()) {
                    f();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.k != iBinder) {
            this.k = iBinder;
            this.j = null;
        }
    }

    public abstract void a(int i, Composer composer);

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        c();
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams) {
        c();
        return super.addViewInLayout(view, i, layoutParams);
    }

    public final void b() {
        if (isAttachedToWindow()) {
            setPreviousAttachedWindowToken(getWindowToken());
            if (this.n == null) {
                AndroidComposeView androidComposeView = null;
                if (getChildCount() != 0) {
                    View childAt = getChildAt(0);
                    if (childAt instanceof AndroidComposeView) {
                        androidComposeView = (AndroidComposeView) childAt;
                    }
                }
                if (androidComposeView != null) {
                    androidComposeView.setComposeViewContext(l(ComposeView_androidKt.b(this), androidComposeView.getComposeViewContext()));
                }
            }
            if (getShouldCreateCompositionOnAttachedToWindow()) {
                f();
            }
        }
    }

    public final void c() {
        if (this.q) {
            return;
        }
        fe.t(q.i("Cannot add views to ", getClass().getSimpleName(), "; only Compose content is supported"));
    }

    public final void d() {
        ComposeViewContext composeViewContext;
        View view;
        if (this.m == null && !isAttachedToWindow() && ((composeViewContext = this.n) == null || (view = composeViewContext.a) == null || !view.isAttachedToWindow())) {
            u2.l("createComposition requires a previous call to createComposition(ComposeViewContext), a parent reference, or the View to be attached to a window. Attach the View or call setParentCompositionReference.");
        } else {
            f();
        }
    }

    public final void e() {
        AndroidComposeView androidComposeView;
        View childAt = getChildAt(0);
        if (childAt instanceof AndroidComposeView) {
            androidComposeView = (AndroidComposeView) childAt;
        } else {
            androidComposeView = null;
        }
        if (androidComposeView != null && androidComposeView.M0) {
            androidComposeView.getComposeViewContext().b();
            androidComposeView.M0 = false;
        }
        Composition composition = this.l;
        if (composition != null) {
            composition.a();
        }
        this.l = null;
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f() {
        if (this.l == null) {
            boolean z = false;
            Object[] objArr = 0;
            try {
                this.q = true;
                Trace.beginSection("Compose:initializeView");
                try {
                    ComposeViewContext composeViewContext = this.n;
                    if (composeViewContext == null) {
                        composeViewContext = j();
                    }
                    this.l = Wrapper_androidKt.a(this, composeViewContext, new ComposableLambdaImpl(1003123809, true, new defpackage.d((int) (objArr == true ? 1 : 0), (Object) this)));
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } finally {
                this.q = false;
            }
        }
    }

    public void g(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    /* renamed from: getAutoClearFocusBehavior-4UtRPd4, reason: not valid java name */
    public final int m0getAutoClearFocusBehavior4UtRPd4() {
        AutoClearFocusBehavior autoClearFocusBehavior;
        Object tag = getTag(R.id.auto_clear_focus_behavior_tag);
        if (tag instanceof AutoClearFocusBehavior) {
            autoClearFocusBehavior = (AutoClearFocusBehavior) tag;
        } else {
            autoClearFocusBehavior = null;
        }
        if (autoClearFocusBehavior != null) {
            return autoClearFocusBehavior.a;
        }
        return 1;
    }

    public final ComposeViewContext getComposeViewContext$ui() {
        return this.n;
    }

    public final boolean getHasComposition() {
        if (this.l != null) {
            return true;
        }
        return false;
    }

    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.p;
    }

    public void h(int i, int i2) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(i, i2);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(i)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(i2)));
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + childAt.getMeasuredWidth(), getPaddingBottom() + getPaddingTop() + childAt.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup
    public final boolean isTransitionGroup() {
        if (this.r && !super.isTransitionGroup()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ComposeViewContext j() {
        AndroidComposeView androidComposeView;
        ComposeViewContext composeViewContext;
        ComposeViewContext c;
        ViewModelStoreOwner viewModelStoreOwner;
        ViewModelStoreOwner viewModelStoreOwner2 = null;
        if (getChildCount() != 0) {
            View childAt = getChildAt(0);
            if (childAt instanceof AndroidComposeView) {
                androidComposeView = (AndroidComposeView) childAt;
            } else {
                androidComposeView = null;
            }
            if (androidComposeView != null) {
                composeViewContext = androidComposeView.getComposeViewContext();
                View b = ComposeView_androidKt.b(this);
                c = ComposeView_androidKt.c(b);
                if (c != null) {
                    CompositionContext k = k();
                    LifecycleOwner a = ViewTreeLifecycleOwner.a(b);
                    if (a == null) {
                        if (composeViewContext != null) {
                            a = composeViewContext.d();
                        } else {
                            a = null;
                        }
                        if (a == null) {
                            u2.l("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
                            return null;
                        }
                    }
                    LifecycleOwner lifecycleOwner = a;
                    SavedStateRegistryOwner a2 = ViewTreeSavedStateRegistryOwner.a(b);
                    if (a2 == null) {
                        if (composeViewContext != null) {
                            composeViewContext.g();
                            a2 = composeViewContext.e;
                            a2.getClass();
                        } else {
                            a2 = null;
                        }
                        if (a2 == null) {
                            u2.l("Composed into the View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
                            return null;
                        }
                    }
                    SavedStateRegistryOwner savedStateRegistryOwner = a2;
                    ViewModelStoreOwner a3 = ViewTreeViewModelStoreOwner.a(b);
                    if (a3 == null) {
                        if (composeViewContext != null) {
                            composeViewContext.g();
                            viewModelStoreOwner2 = composeViewContext.f;
                        }
                        viewModelStoreOwner = viewModelStoreOwner2;
                    } else {
                        viewModelStoreOwner = a3;
                    }
                    ComposeViewContext composeViewContext2 = new ComposeViewContext(ComposeView_androidKt.c(ComposeView_androidKt.b(b)), b, k, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner);
                    b.setTag(R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(composeViewContext2));
                    return composeViewContext2;
                }
                return l(b, c);
            }
        }
        composeViewContext = null;
        View b2 = ComposeView_androidKt.b(this);
        c = ComposeView_androidKt.c(b2);
        if (c != null) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
    
        if (r2 > 0) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0072  */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.CompositionContext] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.runtime.CompositionContext] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.CompositionContext] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.runtime.Recomposer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CompositionContext k() {
        CompositionContext compositionContext;
        Object obj;
        Recomposer recomposer = this.m;
        if (recomposer == 0) {
            recomposer = WindowRecomposer_androidKt.a(this);
            if (recomposer == 0) {
                Object parent = getParent();
                recomposer = recomposer;
                while (recomposer == 0 && (parent instanceof View)) {
                    View view = (View) parent;
                    CompositionContext a = WindowRecomposer_androidKt.a(view);
                    parent = ViewTree.a(view);
                    recomposer = a;
                }
            }
            Object obj2 = null;
            if (recomposer != 0) {
                if ((recomposer instanceof Recomposer) && ((Recomposer.State) recomposer.u.getValue()).compareTo(Recomposer.State.k) <= 0) {
                    obj = null;
                } else {
                    obj = recomposer;
                }
                if (obj != null) {
                    this.j = new WeakReference(obj);
                }
            } else {
                recomposer = 0;
            }
            if (recomposer == 0) {
                WeakReference weakReference = this.j;
                if (weakReference != null && (compositionContext = (CompositionContext) weakReference.get()) != null) {
                    boolean z = compositionContext instanceof Recomposer;
                    recomposer = compositionContext;
                    if (z) {
                        int compareTo = ((Recomposer.State) ((Recomposer) compositionContext).u.getValue()).compareTo(Recomposer.State.k);
                        recomposer = compositionContext;
                    }
                    if (recomposer == 0) {
                        recomposer = WindowRecomposer_androidKt.b(this);
                        if (((Recomposer.State) recomposer.u.getValue()).compareTo(Recomposer.State.k) > 0) {
                            obj2 = recomposer;
                        }
                        if (obj2 != null) {
                            this.j = new WeakReference(obj2);
                        }
                    }
                }
                recomposer = 0;
                if (recomposer == 0) {
                }
            }
        }
        return recomposer;
    }

    public final ComposeViewContext l(View view, ComposeViewContext composeViewContext) {
        CompositionContext k = k();
        LifecycleOwner a = ViewTreeLifecycleOwner.a(view);
        ViewModelStoreOwner a2 = ViewTreeViewModelStoreOwner.a(view);
        SavedStateRegistryOwner a3 = ViewTreeSavedStateRegistryOwner.a(view);
        if (k == composeViewContext.c() && a == composeViewContext.d()) {
            composeViewContext.g();
            if (a2 == composeViewContext.f) {
                composeViewContext.g();
                SavedStateRegistryOwner savedStateRegistryOwner = composeViewContext.e;
                savedStateRegistryOwner.getClass();
                if (a3 == savedStateRegistryOwner) {
                    return composeViewContext;
                }
            }
        }
        if (k.j() != composeViewContext.c().j()) {
            e();
        }
        if (a == null) {
            a = composeViewContext.d();
        }
        LifecycleOwner lifecycleOwner = a;
        if (a3 == null) {
            composeViewContext.g();
            a3 = composeViewContext.e;
            a3.getClass();
        }
        ComposeViewContext composeViewContext2 = new ComposeViewContext(composeViewContext, view, k, lifecycleOwner, a3, a2);
        view.setTag(R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(composeViewContext2));
        return composeViewContext2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.a;
        Object a = ViewTree.a(this);
        View view = this;
        while (a instanceof View) {
            View view2 = (View) a;
            if (view2.getId() == 16908290) {
                break;
            }
            view = view2;
            a = view2.getParent();
        }
        if (view.getParent() == null) {
            getHandler().postAtFrontOfQueue(new defpackage.e(0, this));
        } else {
            b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        g(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        f();
        h(i, i2);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setLayoutDirection(i);
        }
    }

    /* renamed from: setAutoClearFocusBehavior-17tfJxM, reason: not valid java name */
    public final void m1setAutoClearFocusBehavior17tfJxM(int i) {
        setTag(R.id.auto_clear_focus_behavior_tag, new AutoClearFocusBehavior(i));
    }

    public final void setComposeViewContext$ui(ComposeViewContext composeViewContext) {
        AndroidComposeView androidComposeView;
        if (this.n != composeViewContext) {
            if (composeViewContext == null) {
                e();
            } else if (getChildCount() != 0) {
                View childAt = getChildAt(0);
                if (childAt instanceof AndroidComposeView) {
                    androidComposeView = (AndroidComposeView) childAt;
                } else {
                    androidComposeView = null;
                }
                if (androidComposeView != null) {
                    if (androidComposeView.getCoroutineContext() != composeViewContext.c().j()) {
                        e();
                    }
                    androidComposeView.setComposeViewContext(composeViewContext);
                }
            }
            this.n = composeViewContext;
        }
    }

    public final void setParentCompositionContext(CompositionContext compositionContext) {
        setParentContext(compositionContext);
    }

    public final void setShowLayoutBounds(boolean z) {
        this.p = z;
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt != null) {
            ((Owner) childAt).setShowLayoutBounds(z);
        }
    }

    @Override // android.view.ViewGroup
    public void setTransitionGroup(boolean z) {
        super.setTransitionGroup(z);
        this.r = true;
    }

    public final void setViewCompositionStrategy(ViewCompositionStrategy viewCompositionStrategy) {
        n1 n1Var = this.o;
        if (n1Var != null) {
            n1Var.a();
        }
        ((ViewCompositionStrategy.DisposeOnDetachedFromWindowOrReleasedFromPool) viewCompositionStrategy).getClass();
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(this);
        addOnAttachStateChangeListener(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1);
        pi piVar = new pi(this);
        PoolingContainer.a(this, piVar);
        this.o = new n1(this, viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1, piVar, 10);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        c();
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        c();
        return super.addViewInLayout(view, i, layoutParams, z);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        c();
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c();
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        c();
        super.addView(view, i, layoutParams);
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }
}
