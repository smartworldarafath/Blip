.class final Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final j:Ljava/util/List;

.field public final k:[J

.field public final l:[J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->j:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->k:[J

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 37
    .line 38
    mul-int/lit8 v2, v0, 0x2

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->k:[J

    .line 41
    .line 42
    iget-wide v4, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->b:J

    .line 43
    .line 44
    aput-wide v4, v3, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    iget-wide v4, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->c:J

    .line 49
    .line 50
    aput-wide v4, v3, v2

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->k:[J

    .line 56
    .line 57
    array-length v0, p1

    .line 58
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->l:[J

    .line 63
    .line 64
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->l:[J

    .line 3
    .line 4
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/Util;->a([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    array-length p0, p0

    .line 9
    if-ge p1, p0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final b(I)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->l:[J

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    if-ge p1, v2, :cond_1

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 18
    .line 19
    .line 20
    aget-wide p0, p0, p1

    .line 21
    .line 22
    return-wide p0
.end method

.method public final c(J)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    iget-object v4, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->j:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge v3, v5, :cond_2

    .line 20
    .line 21
    mul-int/lit8 v5, v3, 0x2

    .line 22
    .line 23
    iget-object v6, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->k:[J

    .line 24
    .line 25
    aget-wide v7, v6, v5

    .line 26
    .line 27
    cmp-long v7, v7, p1

    .line 28
    .line 29
    if-gtz v7, :cond_1

    .line 30
    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    aget-wide v5, v6, v5

    .line 34
    .line 35
    cmp-long v5, p1, v5

    .line 36
    .line 37
    if-gez v5, :cond_1

    .line 38
    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 44
    .line 45
    iget-object v5, v4, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->a:Landroidx/media3/common/text/Cue;

    .line 46
    .line 47
    iget v6, v5, Landroidx/media3/common/text/Cue;->e:F

    .line 48
    .line 49
    const v7, -0x800001

    .line 50
    .line 51
    .line 52
    cmpl-float v6, v6, v7

    .line 53
    .line 54
    if-nez v6, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance p0, Lv1;

    .line 67
    .line 68
    const/16 p1, 0x8

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lv1;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-ge v2, p0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 87
    .line 88
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->a:Landroidx/media3/common/text/Cue;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/media3/common/text/Cue;->a()Landroidx/media3/common/text/Cue$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    rsub-int/lit8 p1, v2, -0x1

    .line 95
    .line 96
    int-to-float p1, p1

    .line 97
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    return-object v0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->l:[J

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method
