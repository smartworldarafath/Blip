.class public final synthetic Landroidx/media3/exoplayer/mediacodec/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/common/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/e;->b:Landroidx/media3/common/Format;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/e;->b:Landroidx/media3/common/Format;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v3

    .line 30
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/e;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p1, p0, v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c(Landroid/content/Context;Landroidx/media3/common/Format;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d(Landroidx/media3/common/Format;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    return v3
.end method
