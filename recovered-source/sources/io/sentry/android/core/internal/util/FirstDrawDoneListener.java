package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import defpackage.se;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.android.core.performance.WindowContentChangedCallback;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirstDrawDoneListener implements ViewTreeObserver.OnDrawListener {
    public final Handler j = new Handler(Looper.getMainLooper());
    public final AtomicReference k;
    public final Runnable l;

    public FirstDrawDoneListener(View view, Runnable runnable) {
        this.k = new AtomicReference(view);
        this.l = runnable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, Runnable runnable, BuildInfoProvider buildInfoProvider) {
        Window.Callback obj;
        Window window = activity.getWindow();
        if (window != null) {
            View peekDecorView = window.peekDecorView();
            if (peekDecorView != null) {
                FirstDrawDoneListener firstDrawDoneListener = new FirstDrawDoneListener(peekDecorView, runnable);
                buildInfoProvider.getClass();
                peekDecorView.getViewTreeObserver().addOnDrawListener(firstDrawDoneListener);
            } else {
                Window.Callback callback = window.getCallback();
                if (callback != null) {
                    obj = callback;
                } else {
                    obj = new Object();
                }
                window.setCallback(new WindowContentChangedCallback(obj, new se(window, callback, runnable, buildInfoProvider, 2)));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        final View view = (View) this.k.getAndSet(null);
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.sentry.android.core.internal.util.b
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                view.getViewTreeObserver().removeOnDrawListener(FirstDrawDoneListener.this);
            }
        });
        this.j.postAtFrontOfQueue(this.l);
    }
}
