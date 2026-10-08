package io.sentry.android.core.performance;

import android.view.Window;
import defpackage.se;
import io.sentry.android.core.internal.gestures.WindowCallbackAdapter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class WindowContentChangedCallback extends WindowCallbackAdapter {
    public final se k;

    public WindowContentChangedCallback(Window.Callback callback, se seVar) {
        super(callback);
        this.k = seVar;
    }

    @Override // io.sentry.android.core.internal.gestures.WindowCallbackAdapter, android.view.Window.Callback
    public final void onContentChanged() {
        super.onContentChanged();
        this.k.run();
    }
}
