.class public interface abstract Lio/sentry/android/replay/capture/CaptureStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/CaptureStrategy$Companion;,
        Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroid/view/MotionEvent;)V
.end method

.method public abstract c(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
.end method

.method public abstract d()Lio/sentry/android/replay/capture/CaptureStrategy;
.end method

.method public abstract e(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
.end method

.method public abstract f(Lkotlin/jvm/functions/Function1;Z)V
.end method

.method public abstract g(Lkotlin/jvm/functions/Function2;)V
.end method

.method public abstract stop()V
.end method
