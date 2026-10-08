package androidx.compose.ui.window;

import android.content.Context;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.WindowCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.k8;
import defpackage.u2;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.math.MathKt;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DialogWrapper extends ComponentDialog {
    public Function0 o;
    public DialogProperties p;
    public final View q;
    public final DialogLayout r;
    public boolean s;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.activity.OnBackPressedDispatcherKt$addCallback$callback$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DialogWrapper(Function0 function0, DialogProperties dialogProperties, View view, LayoutDirection layoutDirection, Density density, UUID uuid) {
        super(new ContextThemeWrapper(r1, r2));
        int i;
        Context context = view.getContext();
        if (dialogProperties.e) {
            i = R.style.DialogWindowTheme;
        } else {
            i = R.style.FloatingDialogWindowTheme;
        }
        this.o = function0;
        this.p = dialogProperties;
        this.q = view;
        Window window = getWindow();
        if (window != null) {
            DialogProperties dialogProperties2 = this.p;
            Window window2 = getWindow();
            if (window2 != null) {
                WindowManager.LayoutParams attributes = window2.getAttributes();
                attributes.type = dialogProperties2.g;
                window2.setAttributes(attributes);
            }
            window.requestFeature(1);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowCompat.a(window, this.p.e);
            window.setGravity(17);
            if (!this.p.e) {
                window.addFlags(65792);
                WindowManager.LayoutParams attributes2 = window.getAttributes();
                Api28Impl.a.a(attributes2);
                if (Build.VERSION.SDK_INT >= 30) {
                    Api30Impl api30Impl = Api30Impl.a;
                    api30Impl.b(attributes2, 0);
                    api30Impl.c(attributes2, 0);
                }
                window.setAttributes(attributes2);
            }
            DialogLayout dialogLayout = new DialogLayout(getContext(), window);
            setTitle(this.p.f);
            dialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
            dialogLayout.setClipChildren(false);
            dialogLayout.setElevation(density.i0(8.0f));
            dialogLayout.setOutlineProvider(new ViewOutlineProvider());
            this.r = dialogLayout;
            View decorView = window.getDecorView();
            ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
            if (viewGroup != null) {
                h(viewGroup);
            }
            setContentView(dialogLayout);
            dialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewTreeLifecycleOwner.a(view));
            dialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewTreeViewModelStoreOwner.a(view));
            dialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, ViewTreeSavedStateRegistryOwner.a(view));
            i(this.o, this.p, layoutDirection);
            OnBackPressedDispatcher a = a();
            final a aVar = new a(this, 1);
            a.getClass();
            a.b(this, new OnBackPressedCallback() { // from class: androidx.activity.OnBackPressedDispatcherKt$addCallback$callback$1
                {
                    super(true);
                }

                @Override // androidx.activity.OnBackPressedCallback
                public final void b() {
                    androidx.compose.ui.window.a.this.b(this);
                }
            });
            return;
        }
        u2.l("Dialog has no window");
        throw null;
    }

    public static final void h(ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        viewGroup.setClipChildren(false);
        if (!(viewGroup instanceof DialogLayout)) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof ViewGroup) {
                    viewGroup2 = (ViewGroup) childAt;
                } else {
                    viewGroup2 = null;
                }
                if (viewGroup2 != null) {
                    h(viewGroup2);
                }
            }
        }
    }

    public final void i(Function0 function0, DialogProperties dialogProperties, LayoutDirection layoutDirection) {
        int i;
        int i2;
        boolean z;
        int i3;
        this.o = function0;
        this.p = dialogProperties;
        SecureFlagPolicy secureFlagPolicy = dialogProperties.c;
        boolean b = AndroidPopup_androidKt.b(this.q);
        int ordinal = secureFlagPolicy.ordinal();
        int i4 = 0;
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    b = false;
                } else {
                    k8.e();
                    return;
                }
            } else {
                b = true;
            }
        }
        Window window = getWindow();
        window.getClass();
        if (b) {
            i = 8192;
        } else {
            i = -8193;
        }
        window.setFlags(i, 8192);
        int ordinal2 = layoutDirection.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                i2 = 1;
            } else {
                k8.e();
                return;
            }
        } else {
            i2 = 0;
        }
        DialogLayout dialogLayout = this.r;
        dialogLayout.setLayoutDirection(i2);
        boolean z2 = dialogProperties.e;
        boolean z3 = dialogProperties.d;
        Window window2 = dialogLayout.t;
        if (dialogLayout.x && z3 == dialogLayout.v && z2 == dialogLayout.w) {
            z = false;
        } else {
            z = true;
        }
        dialogLayout.v = z3;
        dialogLayout.w = z2;
        if (z) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (z3) {
                i3 = -2;
            } else {
                i3 = -1;
            }
            if (i3 != attributes.width || !dialogLayout.x) {
                window2.setLayout(i3, -2);
                dialogLayout.x = true;
            }
        }
        setCanceledOnTouchOutside(dialogProperties.b);
        Window window3 = getWindow();
        if (window3 != null) {
            if (!z2) {
                if (Build.VERSION.SDK_INT < 31) {
                    i4 = 16;
                } else {
                    i4 = 48;
                }
            }
            window3.setSoftInputMode(i4);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.p.a && keyEvent.isTracking() && !keyEvent.isCanceled() && i == 111) {
            this.o.a();
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if (r5 <= r1) goto L31;
     */
    @Override // android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        View childAt;
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (this.p.b) {
            DialogLayout dialogLayout = this.r;
            dialogLayout.getClass();
            if (Math.abs(motionEvent.getX()) <= Float.MAX_VALUE && Math.abs(motionEvent.getY()) <= Float.MAX_VALUE && (childAt = dialogLayout.getChildAt(0)) != null) {
                int left = childAt.getLeft() + dialogLayout.getLeft();
                int width = childAt.getWidth() + left;
                int top = childAt.getTop() + dialogLayout.getTop();
                int height = childAt.getHeight() + top;
                int b = MathKt.b(motionEvent.getX());
                if (left <= b) {
                    if (b <= width) {
                        int b2 = MathKt.b(motionEvent.getY());
                        if (top <= b2) {
                        }
                    }
                }
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 3) {
                        this.s = false;
                        return onTouchEvent;
                    }
                } else if (this.s) {
                    this.o.a();
                    this.s = false;
                    return true;
                }
                return onTouchEvent;
            }
            this.s = true;
            return true;
        }
        int actionMasked2 = motionEvent.getActionMasked();
        if (actionMasked2 == 0 || actionMasked2 == 1 || actionMasked2 == 3) {
            this.s = false;
            return onTouchEvent;
        }
        return onTouchEvent;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }
}
