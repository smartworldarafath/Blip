.class public final synthetic Landroidx/media3/exoplayer/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/d;->j:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/d;->k:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 2
    .line 3
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/d;->j:I

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/exoplayer/d;->k:I

    .line 8
    .line 9
    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->C(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
