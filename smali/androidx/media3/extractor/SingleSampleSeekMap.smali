.class public final Landroidx/media3/extractor/SingleSampleSeekMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 3

    .line 1
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 2
    .line 3
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final g()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method
