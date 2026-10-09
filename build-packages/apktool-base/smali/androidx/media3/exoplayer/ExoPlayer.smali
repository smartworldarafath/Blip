.class public interface abstract Landroidx/media3/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayer$Builder;,
        Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;,
        Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    }
.end annotation


# virtual methods
.method public abstract M(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
.end method

.method public abstract a()V
.end method

.method public abstract b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V
.end method

.method public abstract d()V
.end method

.method public abstract isScrubbingModeEnabled()Z
.end method

.method public abstract p(Landroidx/media3/exoplayer/SeekParameters;)V
.end method

.method public abstract s()V
.end method

.method public abstract setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
.end method

.method public abstract setScrubbingModeEnabled(Z)V
.end method
