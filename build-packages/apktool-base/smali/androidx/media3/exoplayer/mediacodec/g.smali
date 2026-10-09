.class public final synthetic Landroidx/media3/exoplayer/mediacodec/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/g;->j:Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/g;->j:Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->a(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->a(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sub-int/2addr p2, p0

    .line 14
    return p2
.end method
