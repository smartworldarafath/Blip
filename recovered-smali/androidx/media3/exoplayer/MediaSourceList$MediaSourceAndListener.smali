.class final Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/MediaSource;

.field public final b:Landroidx/media3/exoplayer/r;

.field public final c:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/r;Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/r;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->c:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 9
    .line 10
    return-void
.end method
