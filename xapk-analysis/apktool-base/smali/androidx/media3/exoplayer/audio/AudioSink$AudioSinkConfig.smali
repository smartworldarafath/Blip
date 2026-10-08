.class public final Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Lcom/google/common/primitives/ImmutableIntArray;

.field public final c:Landroidx/media3/common/Timeline;

.field public final d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->a:Landroidx/media3/common/Format;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->c:Landroidx/media3/common/Timeline;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->c:Landroidx/media3/common/Timeline;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->a:Landroidx/media3/common/Format;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->a:Landroidx/media3/common/Format;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->c:Landroidx/media3/common/Timeline;

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->c:Landroidx/media3/common/Timeline;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 46
    .line 47
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->a:Landroidx/media3/common/Format;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/Format;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit16 v0, v0, 0x3c1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/primitives/ImmutableIntArray;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->c:Landroidx/media3/common/Timeline;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v2, v0

    .line 30
    mul-int/lit8 v2, v2, 0x1f

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_1
    add-int/2addr v2, v1

    .line 42
    return v2
.end method
