.class public abstract Landroidx/media3/common/MediaItem$SubtitleConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleConfiguration"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x2

    .line 6
    invoke-static {v2, v3, v4, v0, v1}, Lq;->q(IIIII)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of p0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
