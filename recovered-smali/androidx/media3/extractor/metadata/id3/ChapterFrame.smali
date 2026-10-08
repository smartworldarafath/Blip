.class public final Landroidx/media3/extractor/metadata/id3/ChapterFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/metadata/Chapter;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:[Landroidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 4

    .line 1
    const-string v0, "CHAP"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-gt p2, p3, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput p2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->c:I

    .line 18
    .line 19
    iput p3, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->d:I

    .line 20
    .line 21
    array-length p1, p8

    .line 22
    move p2, v0

    .line 23
    :goto_1
    const/4 p3, 0x0

    .line 24
    if-ge p2, p1, :cond_2

    .line 25
    .line 26
    aget-object v1, p8, p2

    .line 27
    .line 28
    instance-of v2, v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 33
    .line 34
    iget-object v2, v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->c:Lcom/google/common/collect/ImmutableList;

    .line 35
    .line 36
    iget-object v1, v1, Landroidx/media3/extractor/metadata/id3/Id3Frame;->a:Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "TIT2"

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object p1, p3

    .line 63
    :goto_2
    if-eqz p1, :cond_3

    .line 64
    .line 65
    new-instance p2, Landroidx/media3/common/Label;

    .line 66
    .line 67
    invoke-direct {p2, p3, p1}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iput-wide p4, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->e:J

    .line 71
    .line 72
    iput-wide p6, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->f:J

    .line 73
    .line 74
    iput-object p8, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->g:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-class v2, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    .line 18
    .line 19
    iget v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->c:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->c:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->d:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->d:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-wide v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->e:J

    .line 32
    .line 33
    iget-wide v4, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->e:J

    .line 34
    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-wide v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->f:J

    .line 40
    .line 41
    iget-wide v4, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->f:J

    .line 42
    .line 43
    cmp-long v2, v2, v4

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->b:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->g:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->g:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 60
    .line 61
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    return v0

    .line 68
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->c:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->d:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->e:J

    .line 14
    .line 15
    long-to-int v1, v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->f:J

    .line 20
    .line 21
    long-to-int v1, v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->b:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    add-int/2addr v0, p0

    .line 36
    return v0
.end method
