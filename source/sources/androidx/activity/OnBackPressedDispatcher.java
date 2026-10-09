package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.OnBackInvokedInput;
import defpackage.p;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final Runnable a;
    public final Lazy b = LazyKt.b(new Function0() { // from class: androidx.activity.d
        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            return new OnBackPressedDispatcher.OnBackPressedEventInput(OnBackPressedDispatcher.this);
        }
    });

    public OnBackPressedDispatcher(Runnable runnable) {
        this.a = runnable;
    }

    public final void a(OnBackPressedCallback onBackPressedCallback) {
        onBackPressedCallback.getClass();
        OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedCallback.OnBackPressedEventHandler(onBackPressedCallback, new OnBackPressedCallbackInfo(onBackPressedCallback, null));
        onBackPressedCallback.a.add(onBackPressedEventHandler);
        NavigationEventDispatcher.a(c().c, onBackPressedEventHandler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.activity.OnBackPressedDispatcher$addCallback$observer$1, androidx.lifecycle.LifecycleObserver] */
    public final void b(LifecycleOwner lifecycleOwner, OnBackPressedDispatcherKt$addCallback$callback$1 onBackPressedDispatcherKt$addCallback$callback$1) {
        final Lifecycle g = lifecycleOwner.g();
        if (((LifecycleRegistry) g).i == Lifecycle.State.j) {
            return;
        }
        final OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedCallback.OnBackPressedEventHandler(onBackPressedDispatcherKt$addCallback$callback$1, new OnBackPressedCallbackInfo(onBackPressedDispatcherKt$addCallback$callback$1, lifecycleOwner));
        onBackPressedDispatcherKt$addCallback$callback$1.a.add(onBackPressedEventHandler);
        onBackPressedEventHandler.g(false);
        NavigationEventDispatcher.a(c().c, onBackPressedEventHandler);
        final ?? r1 = new LifecycleEventObserver(this, g) { // from class: androidx.activity.OnBackPressedDispatcher$addCallback$observer$1
            public final /* synthetic */ Lifecycle k;

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* loaded from: classes.dex */
            public static final /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] a;

                static {
                    int[] iArr = new int[Lifecycle.Event.values().length];
                    try {
                        iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    a = iArr;
                }
            }

            {
                this.k = g;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void h(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                int i = WhenMappings.a[event.ordinal()];
                OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler2 = OnBackPressedCallback.OnBackPressedEventHandler.this;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        onBackPressedEventHandler2.e();
                        this.k.b(this);
                        return;
                    }
                    onBackPressedEventHandler2.g(false);
                    return;
                }
                onBackPressedEventHandler2.g(true);
            }
        };
        g.a(r1);
        onBackPressedDispatcherKt$addCallback$callback$1.c.add(new AutoCloseable() { // from class: gc
            @Override // java.lang.AutoCloseable
            public final void close() {
                Lifecycle.this.b(r1);
            }
        });
    }

    public final OnBackPressedEventInput c() {
        return (OnBackPressedEventInput) this.b.getValue();
    }

    public final void d(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        c().c.c(new OnBackInvokedInput(onBackInvokedDispatcher, 0), 1);
        c().c.c(new OnBackInvokedInput(onBackInvokedDispatcher, 1000000), 0);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class OnBackPressedEventInput extends NavigationEventInput {
        public final NavigationEventDispatcher c;

        public OnBackPressedEventInput(OnBackPressedDispatcher onBackPressedDispatcher) {
            NavigationEventDispatcher navigationEventDispatcher = new NavigationEventDispatcher(new p(14, onBackPressedDispatcher));
            navigationEventDispatcher.b(this);
            this.c = navigationEventDispatcher;
        }

        @Override // androidx.navigationevent.NavigationEventInput
        public final void b(boolean z) {
        }
    }
}
