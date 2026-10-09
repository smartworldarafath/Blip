.class public Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->a:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->c:J

    .line 9
    .line 10
    iput-wide p6, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->d:J

    .line 11
    .line 12
    iput-wide p8, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->e:J

    .line 13
    .line 14
    iput-wide p10, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->a:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->f(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v9, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->e:J

    .line 8
    .line 9
    iget-wide v11, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->f:J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    iget-wide v5, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->c:J

    .line 14
    .line 15
    iget-wide v7, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->d:J

    .line 16
    .line 17
    invoke-static/range {v1 .. v12}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a(JJJJJJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 22
    .line 23
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    .line 24
    .line 25
    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
