package androidx.activity;

import android.app.Application;
import android.app.PictureInPictureUiState;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.activity.ComponentActivity;
import androidx.activity.contextaware.ContextAwareHelper;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.navigationevent.DirectNavigationEventInput;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.tracing.Trace;
import defpackage.e5;
import defpackage.f5;
import defpackage.h5;
import defpackage.i5;
import defpackage.j5;
import defpackage.k5;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComponentActivity extends androidx.core.app.ComponentActivity implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, OnBackPressedDispatcherOwner, NavigationEventDispatcherOwner, ActivityResultRegistryOwner {
    public static final /* synthetic */ int D = 0;
    public final Lazy A;
    public final Lazy B;
    public final Lazy C;
    public final ContextAwareHelper k;
    public final MenuHostHelper l;
    public final SavedStateRegistryController m;
    public ViewModelStore n;
    public final ReportFullyDrawnExecutorImpl o;
    public final Lazy p;
    public final ComponentActivity$activityResultRegistry$1 q;
    public final CopyOnWriteArrayList r;
    public final CopyOnWriteArrayList s;
    public final CopyOnWriteArrayList t;
    public final CopyOnWriteArrayList u;
    public final CopyOnWriteArrayList v;
    public final CopyOnWriteArrayList w;
    public final CopyOnWriteArrayList x;
    public boolean y;
    public boolean z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NonConfigurationInstances {
        public ViewModelStore a;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ReportFullyDrawnExecutorImpl implements Executor, ViewTreeObserver.OnDrawListener, Runnable {
        public final long j = SystemClock.uptimeMillis() + 10000;
        public Runnable k;
        public boolean l;

        public ReportFullyDrawnExecutorImpl() {
        }

        public final void b(View view) {
            if (!this.l) {
                this.l = true;
                view.getViewTreeObserver().addOnDrawListener(this);
            }
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.getClass();
            this.k = runnable;
            View decorView = ComponentActivity.this.getWindow().getDecorView();
            decorView.getClass();
            if (this.l) {
                if (Intrinsics.a(Looper.myLooper(), Looper.getMainLooper())) {
                    decorView.invalidate();
                    return;
                } else {
                    decorView.postInvalidate();
                    return;
                }
            }
            decorView.postOnAnimation(new Runnable() { // from class: androidx.activity.b
                @Override // java.lang.Runnable
                public final void run() {
                    ComponentActivity.ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = ComponentActivity.ReportFullyDrawnExecutorImpl.this;
                    Runnable runnable2 = reportFullyDrawnExecutorImpl.k;
                    if (runnable2 != null) {
                        runnable2.run();
                        reportFullyDrawnExecutorImpl.k = null;
                    }
                }
            });
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            boolean z;
            Runnable runnable = this.k;
            if (runnable != null) {
                runnable.run();
                this.k = null;
                FullyDrawnReporter fullyDrawnReporter = (FullyDrawnReporter) ComponentActivity.this.p.getValue();
                synchronized (fullyDrawnReporter.b) {
                    z = fullyDrawnReporter.c;
                }
                if (z) {
                    this.l = false;
                    ComponentActivity.this.getWindow().getDecorView().post(this);
                    return;
                }
                return;
            }
            if (SystemClock.uptimeMillis() > this.j) {
                this.l = false;
                ComponentActivity.this.getWindow().getDecorView().post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.activity.ComponentActivity$activityResultRegistry$1] */
    public ComponentActivity() {
        ContextAwareHelper contextAwareHelper = new ContextAwareHelper();
        this.k = contextAwareHelper;
        this.l = new MenuHostHelper(new e5(this, 1));
        SavedStateRegistryController a = SavedStateRegistryController.Companion.a(this);
        this.m = a;
        this.o = new ReportFullyDrawnExecutorImpl();
        this.p = LazyKt.b(new f5(this, 1));
        new AtomicInteger();
        this.q = new ActivityResultRegistry() { // from class: androidx.activity.ComponentActivity$activityResultRegistry$1
            @Override // androidx.activity.result.ActivityResultRegistry
            public final void c(int i, ActivityResultContract activityResultContract, Object obj) {
                Bundle bundle;
                int i2;
                String[] strArr;
                ComponentActivity componentActivity = ComponentActivity.this;
                ActivityResultContract.SynchronousResult b = activityResultContract.b(componentActivity, obj);
                int i3 = 0;
                if (b != null) {
                    new Handler(Looper.getMainLooper()).post(new k5(i, i3, this, b));
                    return;
                }
                Intent a2 = activityResultContract.a(componentActivity, obj);
                if (a2.getExtras() != null) {
                    Bundle extras = a2.getExtras();
                    extras.getClass();
                    if (extras.getClassLoader() == null) {
                        a2.setExtrasClassLoader(componentActivity.getClassLoader());
                    }
                }
                if (a2.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                    bundle = a2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    a2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                } else {
                    bundle = null;
                }
                Bundle bundle2 = bundle;
                if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(a2.getAction())) {
                    String[] stringArrayExtra = a2.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    if (stringArrayExtra == null) {
                        stringArrayExtra = new String[0];
                    }
                    HashSet hashSet = new HashSet();
                    for (int i4 = 0; i4 < stringArrayExtra.length; i4++) {
                        if (!TextUtils.isEmpty(stringArrayExtra[i4])) {
                            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(stringArrayExtra[i4], "android.permission.POST_NOTIFICATIONS")) {
                                hashSet.add(Integer.valueOf(i4));
                            }
                        } else {
                            u2.g(q.l(new StringBuilder("Permission request for permissions "), Arrays.toString(stringArrayExtra), " must not contain null or empty values"));
                            return;
                        }
                    }
                    int size = hashSet.size();
                    if (size > 0) {
                        strArr = new String[stringArrayExtra.length - size];
                    } else {
                        strArr = stringArrayExtra;
                    }
                    if (size > 0) {
                        if (size == stringArrayExtra.length) {
                            return;
                        }
                        int i5 = 0;
                        while (i3 < stringArrayExtra.length) {
                            if (!hashSet.contains(Integer.valueOf(i3))) {
                                strArr[i5] = stringArrayExtra[i3];
                                i5++;
                            }
                            i3++;
                        }
                    }
                    componentActivity.requestPermissions(stringArrayExtra, i);
                    return;
                }
                if ("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(a2.getAction())) {
                    IntentSenderRequest intentSenderRequest = (IntentSenderRequest) a2.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                    try {
                        intentSenderRequest.getClass();
                        i2 = i;
                    } catch (IntentSender.SendIntentException e) {
                        e = e;
                        i2 = i;
                    }
                    try {
                        componentActivity.startIntentSenderForResult(intentSenderRequest.j, i2, intentSenderRequest.k, intentSenderRequest.l, intentSenderRequest.m, 0, bundle2);
                        return;
                    } catch (IntentSender.SendIntentException e2) {
                        e = e2;
                        new Handler(Looper.getMainLooper()).post(new k5(i2, 1, this, e));
                        return;
                    }
                }
                componentActivity.startActivityForResult(a2, i, bundle2);
            }
        };
        this.r = new CopyOnWriteArrayList();
        this.s = new CopyOnWriteArrayList();
        this.t = new CopyOnWriteArrayList();
        this.u = new CopyOnWriteArrayList();
        this.v = new CopyOnWriteArrayList();
        this.w = new CopyOnWriteArrayList();
        this.x = new CopyOnWriteArrayList();
        this.A = LazyKt.b(new f5(this, 2));
        LifecycleRegistry lifecycleRegistry = this.j;
        if (lifecycleRegistry != null) {
            int i = 0;
            lifecycleRegistry.a(new h5(i, this));
            this.j.a(new LifecycleEventObserver() { // from class: androidx.activity.a
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    ComponentActivity componentActivity = ComponentActivity.this;
                    int i2 = ComponentActivity.D;
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        componentActivity.k.b = null;
                        if (!componentActivity.isChangingConfigurations()) {
                            componentActivity.e().a();
                        }
                        ComponentActivity.ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = componentActivity.o;
                        ComponentActivity componentActivity2 = ComponentActivity.this;
                        componentActivity2.getWindow().getDecorView().removeCallbacks(reportFullyDrawnExecutorImpl);
                        componentActivity2.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(reportFullyDrawnExecutorImpl);
                    }
                }
            });
            this.j.a(new LifecycleEventObserver() { // from class: androidx.activity.ComponentActivity.4
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    int i2 = ComponentActivity.D;
                    ComponentActivity componentActivity = ComponentActivity.this;
                    if (componentActivity.n == null) {
                        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) componentActivity.getLastNonConfigurationInstance();
                        if (nonConfigurationInstances != null) {
                            componentActivity.n = nonConfigurationInstances.a;
                        }
                        if (componentActivity.n == null) {
                            componentActivity.n = new ViewModelStore();
                        }
                    }
                    componentActivity.j.b(this);
                }
            });
            a.a();
            SavedStateHandleSupport.b(this);
            a.b.c("android:support:activity-result", new i5(i, this));
            j5 j5Var = new j5(this);
            ComponentActivity componentActivity = contextAwareHelper.b;
            if (componentActivity != null) {
                j5Var.a(componentActivity);
            }
            contextAwareHelper.a.add(j5Var);
            this.B = LazyKt.b(new f5(this, 3));
            this.C = LazyKt.b(new f5(this, 4));
            return;
        }
        u2.l("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        throw null;
    }

    public static void h(ComponentActivity componentActivity) {
        try {
            super.onBackPressed();
        } catch (IllegalStateException e) {
            if (Intrinsics.a(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
            } else {
                throw e;
            }
        } catch (NullPointerException e2) {
            if (!Intrinsics.a(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e2;
            }
        }
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    public final OnBackPressedDispatcher a() {
        return (OnBackPressedDispatcher) this.C.getValue();
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.o.b(decorView);
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.navigationevent.NavigationEventDispatcherOwner
    public final NavigationEventDispatcher b() {
        return a().c().c;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider.Factory c() {
        return (ViewModelProvider.Factory) this.B.getValue();
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras d() {
        Bundle bundle;
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = mutableCreationExtras.a;
        if (application != null) {
            linkedHashMap.put(ViewModelProvider.AndroidViewModelFactory.d, getApplication());
        }
        linkedHashMap.put(SavedStateHandleSupport.a, this);
        linkedHashMap.put(SavedStateHandleSupport.b, this);
        Intent intent = getIntent();
        if (intent != null) {
            bundle = intent.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            linkedHashMap.put(SavedStateHandleSupport.c, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore e() {
        if (getApplication() != null) {
            if (this.n == null) {
                NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
                if (nonConfigurationInstances != null) {
                    this.n = nonConfigurationInstances.a;
                }
                if (this.n == null) {
                    this.n = new ViewModelStore();
                }
            }
            ViewModelStore viewModelStore = this.n;
            viewModelStore.getClass();
            return viewModelStore;
        }
        u2.l("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        return null;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry f() {
        return this.m.b;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return this.j;
    }

    public final void i() {
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        decorView5.getClass();
        decorView5.setTag(R.id.report_drawn, this);
        View decorView6 = getWindow().getDecorView();
        decorView6.getClass();
        decorView6.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (!b(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        ((DirectNavigationEventInput) this.A.getValue()).a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        Iterator it = this.r.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(configuration);
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.m.b(bundle);
        ContextAwareHelper contextAwareHelper = this.k;
        contextAwareHelper.getClass();
        contextAwareHelper.b = this;
        Iterator it = contextAwareHelper.a.iterator();
        while (it.hasNext()) {
            ((j5) ((OnContextAvailableListener) it.next())).a(this);
        }
        super.onCreate(bundle);
        int i = ReportFragment.k;
        ReportFragment.Companion.b(this);
        getPackageManager().hasSystemFeature("android.software.picture_in_picture");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        menu.getClass();
        if (i == 0) {
            super.onCreatePanelMenu(i, menu);
            MenuInflater menuInflater = getMenuInflater();
            Iterator it = this.l.a.iterator();
            while (it.hasNext()) {
                ((MenuProvider) it.next()).c(menu, menuInflater);
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        menuItem.getClass();
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            Iterator it = this.l.a.iterator();
            while (it.hasNext()) {
                if (((MenuProvider) it.next()).a(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.y = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.y = false;
            Iterator it = this.u.iterator();
            it.getClass();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(new MultiWindowModeChangedInfo(z));
            }
        } catch (Throwable th) {
            this.y = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        Iterator it = this.t.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        menu.getClass();
        Iterator it = this.l.a.iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.z = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.z = false;
            Iterator it = this.v.iterator();
            it.getClass();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(new PictureInPictureModeChangedInfo(z));
            }
        } catch (Throwable th) {
            this.z = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureUiStateChanged(PictureInPictureUiState pictureInPictureUiState) {
        Object obj;
        pictureInPictureUiState.getClass();
        super.onPictureInPictureUiStateChanged(pictureInPictureUiState);
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            pictureInPictureUiState.isStashed();
            pictureInPictureUiState.isTransitioningToPip();
            obj = new Object();
        } else if (i >= 31) {
            pictureInPictureUiState.isStashed();
            obj = new Object();
        } else {
            obj = new Object();
        }
        Iterator it = this.w.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(obj);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        menu.getClass();
        if (i == 0) {
            super.onPreparePanel(i, view, menu);
            Iterator it = this.l.a.iterator();
            while (it.hasNext()) {
                ((MenuProvider) it.next()).d(menu);
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        if (!b(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.activity.ComponentActivity$NonConfigurationInstances, java.lang.Object] */
    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances;
        ViewModelStore viewModelStore = this.n;
        if (viewModelStore == null && (nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance()) != null) {
            viewModelStore = nonConfigurationInstances.a;
        }
        if (viewModelStore == null) {
            return null;
        }
        ?? obj = new Object();
        obj.a = viewModelStore;
        return obj;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        LifecycleRegistry lifecycleRegistry = this.j;
        if (lifecycleRegistry != null) {
            Lifecycle.State state = Lifecycle.State.l;
            lifecycleRegistry.d("setCurrentState");
            lifecycleRegistry.f(state);
        }
        super.onSaveInstanceState(bundle);
        this.m.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.s.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator it = this.x.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (Trace.d()) {
                android.os.Trace.beginSection(Trace.e("reportFullyDrawn() for ComponentActivity"));
            }
            super.reportFullyDrawn();
            FullyDrawnReporter fullyDrawnReporter = (FullyDrawnReporter) this.p.getValue();
            synchronized (fullyDrawnReporter.b) {
                try {
                    fullyDrawnReporter.c = true;
                    Iterator it = fullyDrawnReporter.d.iterator();
                    while (it.hasNext()) {
                        ((Function0) it.next()).a();
                    }
                    fullyDrawnReporter.d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            android.os.Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        i();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.o.b(decorView);
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i) {
        intent.getClass();
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i, Bundle bundle) {
        intent.getClass();
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        i();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.o.b(decorView);
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.o.b(decorView);
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        if (this.y) {
            return;
        }
        Iterator it = this.u.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new MultiWindowModeChangedInfo(z));
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        if (this.z) {
            return;
        }
        Iterator it = this.v.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new PictureInPictureModeChangedInfo(z));
        }
    }
}
