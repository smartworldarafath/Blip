package androidx.activity;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigationevent.DirectNavigationEventInput;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComponentDialog extends Dialog implements LifecycleOwner, OnBackPressedDispatcherOwner, NavigationEventDispatcherOwner, SavedStateRegistryOwner {
    public static final /* synthetic */ int n = 0;
    public LifecycleRegistry j;
    public final SavedStateRegistryController k;
    public final Lazy l;
    public final Lazy m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComponentDialog(ContextThemeWrapper contextThemeWrapper) {
        super(contextThemeWrapper, 0);
        final int i = 0;
        this.k = SavedStateRegistryController.Companion.a(this);
        this.l = LazyKt.b(new Function0(this) { // from class: l5
            public final /* synthetic */ ComponentDialog k;

            {
                this.k = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.navigationevent.NavigationEventInput] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i2 = i;
                ComponentDialog componentDialog = this.k;
                switch (i2) {
                    case 0:
                        int i3 = ComponentDialog.n;
                        ?? obj = new Object();
                        componentDialog.b().b(obj);
                        return obj;
                    default:
                        int i4 = ComponentDialog.n;
                        return new OnBackPressedDispatcher(new e(6, componentDialog));
                }
            }
        });
        final int i2 = 1;
        this.m = LazyKt.b(new Function0(this) { // from class: l5
            public final /* synthetic */ ComponentDialog k;

            {
                this.k = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.navigationevent.NavigationEventInput] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i2;
                ComponentDialog componentDialog = this.k;
                switch (i22) {
                    case 0:
                        int i3 = ComponentDialog.n;
                        ?? obj = new Object();
                        componentDialog.b().b(obj);
                        return obj;
                    default:
                        int i4 = ComponentDialog.n;
                        return new OnBackPressedDispatcher(new e(6, componentDialog));
                }
            }
        });
    }

    public static void c(ComponentDialog componentDialog) {
        super.onBackPressed();
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    public final OnBackPressedDispatcher a() {
        return (OnBackPressedDispatcher) this.m.getValue();
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        e();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.navigationevent.NavigationEventDispatcherOwner
    public final NavigationEventDispatcher b() {
        return a().c().c;
    }

    public final LifecycleRegistry d() {
        LifecycleRegistry lifecycleRegistry = this.j;
        if (lifecycleRegistry == null) {
            LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this, true);
            this.j = lifecycleRegistry2;
            return lifecycleRegistry2;
        }
        return lifecycleRegistry;
    }

    public final void e() {
        Window window = getWindow();
        window.getClass();
        View decorView = window.getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        Window window2 = getWindow();
        window2.getClass();
        View decorView2 = window2.getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        Window window3 = getWindow();
        window3.getClass();
        View decorView3 = window3.getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        Window window4 = getWindow();
        window4.getClass();
        View decorView4 = window4.getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry f() {
        return this.k.b;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return d();
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        ((DirectNavigationEventInput) this.l.getValue()).a();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackPressedDispatcher a = a();
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.getClass();
            a.d(onBackInvokedDispatcher);
        }
        this.k.b(bundle);
        d().e(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.getClass();
        this.k.c(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        d().e(Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        d().e(Lifecycle.Event.ON_DESTROY);
        this.j = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        view.getClass();
        e();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        e();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        e();
        super.setContentView(view, layoutParams);
    }
}
