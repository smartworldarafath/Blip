package io.sentry.android.core;

import io.sentry.SentryMaskingOptions;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryScreenshotOptions extends SentryMaskingOptions {
    @Override // io.sentry.SentryMaskingOptions
    public final void b(boolean z) {
        super.b(z);
        if (z) {
            a("android.webkit.WebView");
            a("android.widget.VideoView");
            a("androidx.camera.view.PreviewView");
            a("androidx.media3.ui.PlayerView");
            a("com.google.android.exoplayer2.ui.PlayerView");
            a("com.google.android.exoplayer2.ui.StyledPlayerView");
            return;
        }
        CopyOnWriteArraySet copyOnWriteArraySet = this.a;
        copyOnWriteArraySet.remove("android.webkit.WebView");
        copyOnWriteArraySet.remove("android.widget.VideoView");
        copyOnWriteArraySet.remove("androidx.camera.view.PreviewView");
        copyOnWriteArraySet.remove("androidx.media3.ui.PlayerView");
        copyOnWriteArraySet.remove("com.google.android.exoplayer2.ui.PlayerView");
        copyOnWriteArraySet.remove("com.google.android.exoplayer2.ui.StyledPlayerView");
    }

    @Override // io.sentry.SentryMaskingOptions
    public final void d() {
    }
}
