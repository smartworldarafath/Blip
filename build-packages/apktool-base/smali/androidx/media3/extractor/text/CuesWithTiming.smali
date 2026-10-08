.class public Landroidx/media3/extractor/text/CuesWithTiming;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(JJLjava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p5}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    .line 7
    move-result-object p5

    .line 8
    iput-object p5, p0, Landroidx/media3/extractor/text/CuesWithTiming;->a:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    .line 11
    .line 12
    iput-wide p3, p0, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long p5, p1, v0

    .line 20
    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    cmp-long p5, p3, v0

    .line 24
    .line 25
    if-nez p5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-long v0, p1, p3

    .line 29
    .line 30
    :cond_1
    :goto_0
    iput-wide v0, p0, Landroidx/media3/extractor/text/CuesWithTiming;->d:J

    .line 31
    .line 32
    return-void
.end method
