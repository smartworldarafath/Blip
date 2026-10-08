.class final Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CuePointData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:J

.field public final k:J

.field public final l:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->k:J

    .line 7
    .line 8
    iput-wide p5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->l:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 4
    .line 5
    iget-wide p0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

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
    check-cast p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 14
    .line 15
    iget-wide v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->k:J

    .line 22
    .line 23
    iget-wide v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->k:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->l:J

    .line 30
    .line 31
    iget-wide p0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->l:J

    .line 32
    .line 33
    cmp-long p0, v3, p0

    .line 34
    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->k:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->l:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
