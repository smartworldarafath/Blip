.class public final Landroidx/media3/exoplayer/CodecParameters;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/CodecParameters$Builder;
    }
.end annotation


# static fields
.field public static final b:Landroidx/media3/exoplayer/CodecParameters;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/exoplayer/CodecParameters;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/exoplayer/CodecParameters$Builder;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/CodecParameters;-><init>(Ljava/util/HashMap;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/media3/exoplayer/CodecParameters;->b:Landroidx/media3/exoplayer/CodecParameters;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/CodecParameters;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/CodecParameters;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
