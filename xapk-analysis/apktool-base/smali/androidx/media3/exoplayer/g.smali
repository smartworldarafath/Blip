.class public final synthetic Landroidx/media3/exoplayer/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/g;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    sget p2, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/g;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 20
    .line 21
    iget-object p2, p2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 22
    .line 23
    const/16 v0, 0x28

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {p2, v0, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p2}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 34
    .line 35
    new-instance p2, Landroidx/media3/exoplayer/f;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-direct {p2, p1, v0}, Landroidx/media3/exoplayer/f;-><init>(II)V

    .line 39
    .line 40
    .line 41
    const/16 p1, 0x15

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/g;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/Player$Commands;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->D(Landroidx/media3/common/Player$Commands;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
