.class Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AviSeekMap"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Landroidx/media3/extractor/avi/AviExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/avi/AviExtractor;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;->b:Landroidx/media3/extractor/avi/AviExtractor;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;->a:J

    .line 7
    .line 8
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
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;->b:Landroidx/media3/extractor/avi/AviExtractor;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/avi/ChunkReader;->b(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-virtual {v2, p1, p2}, Landroidx/media3/extractor/avi/ChunkReader;->b(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    .line 25
    .line 26
    iget-wide v3, v3, Landroidx/media3/extractor/SeekPoint;->b:J

    .line 27
    .line 28
    iget-object v5, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    .line 29
    .line 30
    iget-wide v5, v5, Landroidx/media3/extractor/SeekPoint;->b:J

    .line 31
    .line 32
    cmp-long v3, v3, v5

    .line 33
    .line 34
    if-gez v3, :cond_0

    .line 35
    .line 36
    move-object v0, v2

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
