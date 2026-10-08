.class final Landroidx/media3/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Landroidx/media3/extractor/TrackOutput;

.field public final c:Landroidx/media3/container/ReorderingBufferQueue;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->a:Ljava/util/List;

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
    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->b:[Landroidx/media3/extractor/TrackOutput;

    .line 13
    .line 14
    new-instance p1, Landroidx/media3/container/ReorderingBufferQueue;

    .line 15
    .line 16
    new-instance v0, Landroidx/media3/extractor/ts/a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/a;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Landroidx/media3/container/ReorderingBufferQueue;-><init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->c:Landroidx/media3/container/ReorderingBufferQueue;

    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    invoke-virtual {p1, p0}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x1b2

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    const v0, 0x47413934

    .line 27
    .line 28
    .line 29
    if-ne v1, v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-ne v2, v0, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/media3/extractor/ts/UserDataReader;->c:Landroidx/media3/container/ReorderingBufferQueue;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/UserDataReader;->b:[Landroidx/media3/extractor/TrackOutput;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

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
    iget-object v4, p0, Landroidx/media3/extractor/ts/UserDataReader;->a:Ljava/util/List;

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
    new-instance v6, Landroidx/media3/common/Format$Builder;

    .line 57
    .line 58
    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 62
    .line 63
    .line 64
    iget-object v7, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 67
    .line 68
    const-string v7, "video/mp2t"

    .line 69
    .line 70
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 81
    .line 82
    iget v5, v4, Landroidx/media3/common/Format;->e:I

    .line 83
    .line 84
    iput v5, v6, Landroidx/media3/common/Format$Builder;->e:I

    .line 85
    .line 86
    iget-object v5, v4, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 89
    .line 90
    iget v5, v4, Landroidx/media3/common/Format;->P:I

    .line 91
    .line 92
    iput v5, v6, Landroidx/media3/common/Format$Builder;->O:I

    .line 93
    .line 94
    iget-object v4, v4, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 95
    .line 96
    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 97
    .line 98
    new-instance v4, Landroidx/media3/common/Format;

    .line 99
    .line 100
    invoke-direct {v4, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 104
    .line 105
    .line 106
    aput-object v3, v2, v1

    .line 107
    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method
