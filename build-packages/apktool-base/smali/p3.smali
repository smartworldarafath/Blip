.class public final synthetic Lp3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic k:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp3;->j:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 5
    .line 6
    iput-wide p2, p0, Lp3;->k:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3;->j:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 4
    .line 5
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v1, p0, Lp3;->k:J

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->x(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
