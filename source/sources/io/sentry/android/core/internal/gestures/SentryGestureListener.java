package io.sentry.android.core.internal.gestures;

import android.app.Activity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import defpackage.fe;
import defpackage.n5;
import defpackage.p;
import defpackage.q;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.IScopes;
import io.sentry.ITransaction;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SpanStatus;
import io.sentry.TransactionContext;
import io.sentry.TransactionOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.internal.gestures.UiElement;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.Objects;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryGestureListener implements GestureDetector.OnGestureListener {
    public final WeakReference j;
    public final IScopes k;
    public final SentryAndroidOptions l;
    public UiElement m = null;
    public ITransaction n = null;
    public GestureType o;
    public final ScrollState p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.internal.gestures.SentryGestureListener$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[GestureType.values().length];
            a = iArr;
            try {
                iArr[GestureType.Click.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[GestureType.Scroll.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[GestureType.Swipe.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[GestureType.Unknown.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum GestureType {
        Click,
        Scroll,
        Swipe,
        Unknown
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ScrollState {
        public GestureType a;
        public UiElement b;
        public float c;
        public float d;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [io.sentry.android.core.internal.gestures.SentryGestureListener$ScrollState, java.lang.Object] */
    public SentryGestureListener(Activity activity, ScopesAdapter scopesAdapter, SentryAndroidOptions sentryAndroidOptions) {
        GestureType gestureType = GestureType.Unknown;
        this.o = gestureType;
        ?? obj = new Object();
        obj.a = gestureType;
        obj.c = 0.0f;
        obj.d = 0.0f;
        this.p = obj;
        this.j = new WeakReference(activity);
        this.k = scopesAdapter;
        this.l = sentryAndroidOptions;
    }

    public final void a(UiElement uiElement, GestureType gestureType, Map map, MotionEvent motionEvent) {
        String str;
        if (!this.l.isEnableUserInteractionBreadcrumbs()) {
            return;
        }
        int i = AnonymousClass1.a[gestureType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    str = "unknown";
                } else {
                    str = "swipe";
                }
            } else {
                str = "scroll";
            }
        } else {
            str = "click";
        }
        Hint hint = new Hint();
        hint.d(motionEvent, "android:motionEvent");
        hint.d(uiElement.a.get(), "android:view");
        String str2 = uiElement.c;
        String str3 = uiElement.b;
        Breadcrumb breadcrumb = new Breadcrumb();
        breadcrumb.n = "user";
        breadcrumb.p = "ui.".concat(str);
        if (str2 != null) {
            breadcrumb.c(str2, "view.id");
        }
        if (str3 != null) {
            breadcrumb.c(str3, "view.class");
        }
        for (Map.Entry entry : map.entrySet()) {
            breadcrumb.o.put((String) entry.getKey(), entry.getValue());
        }
        breadcrumb.r = SentryLevel.INFO;
        this.k.a(breadcrumb, hint);
    }

    public final View b(String str) {
        Activity activity = (Activity) this.j.get();
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (activity == null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, q.i("Activity is null in ", str, ". No breadcrumb captured."), new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, q.i("Window is null in ", str, ". No breadcrumb captured."), new Object[0]);
            return null;
        }
        View peekDecorView = window.peekDecorView();
        if (peekDecorView == null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, q.i("DecorView is null in ", str, ". No breadcrumb captured."), new Object[0]);
            return null;
        }
        return peekDecorView;
    }

    public final void c(UiElement uiElement, GestureType gestureType) {
        boolean z;
        boolean z2;
        String str;
        Long valueOf;
        if (gestureType == this.o && uiElement.equals(this.m)) {
            z = true;
        } else {
            z = false;
        }
        if (gestureType == GestureType.Click || !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        SentryAndroidOptions sentryAndroidOptions = this.l;
        boolean isTracingEnabled = sentryAndroidOptions.isTracingEnabled();
        IScopes iScopes = this.k;
        if (isTracingEnabled && sentryAndroidOptions.isEnableUserInteractionTracing()) {
            Activity activity = (Activity) this.j.get();
            if (activity == null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Activity is null, no transaction captured.", new Object[0]);
                return;
            }
            String str2 = uiElement.c;
            if (str2 == null) {
                Objects.b(null, "UiElement.tag can't be null");
                str2 = null;
            }
            ITransaction iTransaction = this.n;
            if (iTransaction != null) {
                if (!z2 && !iTransaction.d()) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, q.i("The view with id: ", str2, " already has an ongoing transaction assigned. Rescheduling finish"), new Object[0]);
                    if (sentryAndroidOptions.getIdleTimeout() != null) {
                        this.n.p();
                        return;
                    }
                    return;
                }
                d(SpanStatus.OK);
            }
            String str3 = activity.getClass().getSimpleName() + "." + str2;
            int i = AnonymousClass1.a[gestureType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        str = "unknown";
                    } else {
                        str = "swipe";
                    }
                } else {
                    str = "scroll";
                }
            } else {
                str = "click";
            }
            String concat = "ui.action.".concat(str);
            TransactionOptions transactionOptions = new TransactionOptions();
            transactionOptions.f = true;
            long deadlineTimeout = sentryAndroidOptions.getDeadlineTimeout();
            if (deadlineTimeout <= 0) {
                valueOf = null;
            } else {
                valueOf = Long.valueOf(deadlineTimeout);
            }
            transactionOptions.h = valueOf;
            transactionOptions.g = sentryAndroidOptions.getIdleTimeout();
            transactionOptions.c = true;
            transactionOptions.d = "auto.ui.gesture_listener." + uiElement.d;
            ITransaction n = iScopes.n(new TransactionContext(str3, TransactionNameSource.COMPONENT, concat, null), transactionOptions);
            iScopes.o(new n5(12, this, n));
            this.n = n;
            this.m = uiElement;
            this.o = gestureType;
            return;
        }
        if (z2) {
            if (sentryAndroidOptions.isEnableAutoTraceIdGeneration()) {
                iScopes.o(new fe(29));
            }
            this.m = uiElement;
            this.o = gestureType;
        }
    }

    public final void d(SpanStatus spanStatus) {
        ITransaction iTransaction = this.n;
        if (iTransaction != null) {
            SpanStatus a = iTransaction.a();
            ITransaction iTransaction2 = this.n;
            if (a == null) {
                iTransaction2.g(spanStatus);
            } else {
                iTransaction2.h();
            }
        }
        this.k.o(new p(24, this));
        this.n = null;
        if (this.m != null) {
            this.m = null;
        }
        this.o = GestureType.Unknown;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        ScrollState scrollState = this.p;
        scrollState.b = null;
        scrollState.a = GestureType.Unknown;
        scrollState.c = 0.0f;
        scrollState.d = 0.0f;
        scrollState.c = motionEvent.getX();
        scrollState.d = motionEvent.getY();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.p.a = GestureType.Swipe;
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        View b = b("onScroll");
        if (b != null && motionEvent != null) {
            ScrollState scrollState = this.p;
            if (scrollState.a == GestureType.Unknown) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                UiElement.Type type = UiElement.Type.SCROLLABLE;
                SentryAndroidOptions sentryAndroidOptions = this.l;
                UiElement a = ViewUtils.a(sentryAndroidOptions, b, x, y, type);
                if (a == null) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Unable to find scroll target. No breadcrumb captured.", new Object[0]);
                    scrollState.a = GestureType.Scroll;
                    return false;
                }
                ILogger logger = sentryAndroidOptions.getLogger();
                SentryLevel sentryLevel = SentryLevel.DEBUG;
                StringBuilder sb = new StringBuilder("Scroll target found: ");
                String str = a.c;
                if (str == null) {
                    Objects.b(null, "UiElement.tag can't be null");
                    str = null;
                }
                sb.append(str);
                logger.c(sentryLevel, sb.toString(), new Object[0]);
                scrollState.b = a;
                scrollState.a = GestureType.Scroll;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        View b = b("onSingleTapUp");
        if (b != null && motionEvent != null) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            UiElement.Type type = UiElement.Type.CLICKABLE;
            SentryAndroidOptions sentryAndroidOptions = this.l;
            UiElement a = ViewUtils.a(sentryAndroidOptions, b, x, y, type);
            if (a == null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Unable to find click target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            GestureType gestureType = GestureType.Click;
            a(a, gestureType, Collections.EMPTY_MAP, motionEvent);
            c(a, gestureType);
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }
}
