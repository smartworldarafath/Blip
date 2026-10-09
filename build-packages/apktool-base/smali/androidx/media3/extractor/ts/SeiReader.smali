.class public final Landroidx/media3/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Landroidx/media3/extractor/TrackOutput;

.field public final c:Landroidx/media3/container/ReorderingBufferQueue;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/SeiReader;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/extractor/ts/SeiReader;->b:[Landroidx/media3/extractor/TrackOutput;

    .line 13
    .line 14
    new-instance p1, Landroidx/media3/container/ReorderingBufferQueue;

    .line 15
    .line 16
    new-instance v0, Lp;

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/media3/container/ReorderingBufferQueue;-><init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/extractor/ts/SeiReader;->c:Landroidx/media3/container/ReorderingBufferQueue;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/SeiReader;->b:[Landroidx/media3/extractor/TrackOutput;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 12
    .line 13
    .line 14
    iget v3, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    invoke-interface {p1, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Landroidx/media3/extractor/ts/SeiReader;->a:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/media3/common/Format;

    .line 28
    .line 29
    iget-object v5, v4, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 30
    .line 31
    const-string v6, "application/cea-608"

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    const-string v6, "application/cea-708"

    .line 40
    .line 41
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move v6, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 51
    :goto_2
    const-string v7, "Invalid closed caption MIME type provided: %s"

    .line 52
    .line 53
    invoke-static {v6, v7, v5}, Lcom/google/common/base/Preconditions;->g(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v6, v4, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 62
    .line 63
    .line 64
    iget-object v6, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    .line 65
    .line 66
    :goto_3
    new-instance v7, Landroidx/media3/common/Format$Builder;

    .line 67
    .line 68
    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v6, v7, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "video/mp2t"

    .line 74
    .line 75
    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iput-object v6, v7, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v5, v7, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 86
    .line 87
    iget v5, v4, Landroidx/media3/common/Format;->e:I

    .line 88
    .line 89
    iput v5, v7, Landroidx/media3/common/Format$Builder;->e:I

    .line 90
    .line 91
    iget-object v5, v4, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v5, v7, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 94
    .line 95
    iget v5, v4, Landroidx/media3/common/Format;->P:I

    .line 96
    .line 97
    iput v5, v7, Landroidx/media3/common/Format$Builder;->O:I

    .line 98
    .line 99
    iget-object v4, v4, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 100
    .line 101
    iput-object v4, v7, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 102
    .line 103
    new-instance v4, Landroidx/media3/common/Format;

    .line 104
    .line 105
    invoke-direct {v4, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 109
    .line 110
    .line 111
    aput-object v3, v2, v1

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    return-void
.end method
