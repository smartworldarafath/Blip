.class public interface abstract Landroidx/media3/exoplayer/Renderer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/Renderer$WakeupListener;
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract d(JJ)V
.end method

.method public g(JJ)J
    .locals 0

    .line 1
    move-object p1, p0

    .line 2
    check-cast p1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 3
    .line 4
    iget p1, p1, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->a()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->b()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const-wide/32 p0, 0xf4240

    .line 22
    .line 23
    .line 24
    return-wide p0

    .line 25
    :cond_1
    const-wide/16 p0, 0x2710

    .line 26
    .line 27
    return-wide p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public l(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(J)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract q()Landroidx/media3/exoplayer/MediaClock;
.end method
