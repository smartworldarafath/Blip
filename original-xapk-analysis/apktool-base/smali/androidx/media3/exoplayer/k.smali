.class public final synthetic Landroidx/media3/exoplayer/k;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/common/Player$PositionInfo;

.field public final synthetic l:Landroidx/media3/common/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/k;->j:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/k;->k:Landroidx/media3/common/Player$PositionInfo;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/k;->l:Landroidx/media3/common/Player$PositionInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 2
    .line 3
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/media3/exoplayer/k;->j:I

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/k;->k:Landroidx/media3/common/Player$PositionInfo;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/k;->l:Landroidx/media3/common/Player$PositionInfo;

    .line 13
    .line 14
    invoke-interface {p1, v0, v1, p0}, Landroidx/media3/common/Player$Listener;->j(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
