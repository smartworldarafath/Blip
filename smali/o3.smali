.class public final synthetic Lo3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic k:I

.field public final synthetic l:J

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo3;->j:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 5
    .line 6
    iput p2, p0, Lo3;->k:I

    .line 7
    .line 8
    iput-wide p3, p0, Lo3;->l:J

    .line 9
    .line 10
    iput-wide p5, p0, Lo3;->m:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo3;->j:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 4
    .line 5
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lo3;->k:I

    .line 8
    .line 9
    iget-wide v3, p0, Lo3;->l:J

    .line 10
    .line 11
    iget-wide v5, p0, Lo3;->m:J

    .line 12
    .line 13
    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->D(IJJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
