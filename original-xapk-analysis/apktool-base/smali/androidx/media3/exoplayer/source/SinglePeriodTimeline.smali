.class public final Landroidx/media3/exoplayer/source/SinglePeriodTimeline;
.super Landroidx/media3/common/Timeline;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Landroidx/media3/common/MediaItem;

.field public final f:Landroidx/media3/common/MediaItem$LiveConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->g:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "SinglePeriodTimeline"

    .line 14
    .line 15
    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 18
    .line 19
    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(JZZLandroidx/media3/common/MediaItem;)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object p4, p5, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p4, 0x0

    .line 7
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->b:J

    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->c:J

    .line 13
    .line 14
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->d:Z

    .line 15
    .line 16
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p5, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->e:Landroidx/media3/common/MediaItem;

    .line 20
    .line 21
    iput-object p4, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->f:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->g:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq p0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->h(II)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p3, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->g:Ljava/lang/Object;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p3, p1

    .line 12
    :goto_0
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->c:Landroidx/media3/common/AdPlaybackState;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p3, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 23
    .line 24
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->b:J

    .line 25
    .line 26
    iput-wide v1, p2, Landroidx/media3/common/Timeline$Period;->d:J

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    iput-wide v1, p2, Landroidx/media3/common/Timeline$Period;->e:J

    .line 31
    .line 32
    iput-object v0, p2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 33
    .line 34
    iput-boolean p1, p2, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 35
    .line 36
    return-object p2
.end method

.method public final h()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/google/common/base/Preconditions;->h(II)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->g:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p0
.end method

.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 9

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Lcom/google/common/base/Preconditions;->h(II)V

    .line 3
    .line 4
    .line 5
    sget-object p1, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->f:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 8
    .line 9
    iget-wide v7, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->c:J

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->e:Landroidx/media3/common/MediaItem;

    .line 12
    .line 13
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->d:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    move-object v0, p2

    .line 19
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/common/Timeline$Window;->b(Landroidx/media3/common/MediaItem;ZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJ)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final o()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
