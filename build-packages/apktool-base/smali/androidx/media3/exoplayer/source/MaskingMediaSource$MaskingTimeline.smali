.class final Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaskingTimeline"
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    sget-object p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p0, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    return-object p2
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    return-object p1
.end method

.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->c:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object p0, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    return-object p2
.end method
