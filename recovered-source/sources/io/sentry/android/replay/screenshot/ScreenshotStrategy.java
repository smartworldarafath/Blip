package io.sentry.android.replay.screenshot;

import android.view.View;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ScreenshotStrategy {
    boolean a();

    void b(View view);

    void c();

    void close();

    void onContentChanged();
}
