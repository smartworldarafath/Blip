.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/DefaultDataSource$Factory;

.field public final b:Lp;

.field public final c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

.field public final d:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DefaultDataSource$Factory;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lp;

    .line 7
    .line 8
    const/16 v2, 0xf

    .line 9
    .line 10
    invoke-direct {v1, v2, v0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->a:Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 27
    .line 28
    iput-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->b:Lp;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    .line 31
    .line 32
    iput-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->d:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 33
    .line 34
    const/high16 p1, 0x100000

    .line 35
    .line 36
    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->e:I

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f:Z

    .line 40
    .line 41
    return-void
.end method
