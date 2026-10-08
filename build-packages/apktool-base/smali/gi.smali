.class public final synthetic Lgi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/Thread;

    .line 4
    .line 5
    const-string v0, "ExoPlayer:AudioTrackReleaseThread"

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
