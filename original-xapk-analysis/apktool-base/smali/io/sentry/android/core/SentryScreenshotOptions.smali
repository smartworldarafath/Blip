.class public final Lio/sentry/android/core/SentryScreenshotOptions;
.super Lio/sentry/SentryMaskingOptions;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final b(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lio/sentry/SentryMaskingOptions;->b(Z)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.google.android.exoplayer2.ui.StyledPlayerView"

    .line 5
    .line 6
    const-string v1, "com.google.android.exoplayer2.ui.PlayerView"

    .line 7
    .line 8
    const-string v2, "androidx.media3.ui.PlayerView"

    .line 9
    .line 10
    const-string v3, "androidx.camera.view.PreviewView"

    .line 11
    .line 12
    const-string v4, "android.widget.VideoView"

    .line 13
    .line 14
    const-string v5, "android.webkit.WebView"

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v5}, Lio/sentry/SentryMaskingOptions;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lio/sentry/SentryMaskingOptions;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lio/sentry/SentryMaskingOptions;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lio/sentry/SentryMaskingOptions;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lio/sentry/SentryMaskingOptions;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lio/sentry/SentryMaskingOptions;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method
