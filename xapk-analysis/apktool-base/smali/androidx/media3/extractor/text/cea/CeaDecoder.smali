.class abstract Landroidx/media3/extractor/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;,
        Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->a:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->a:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    new-instance v3, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->b:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    :goto_1
    const/4 v1, 0x2

    .line 39
    if-ge v0, v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->b:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    new-instance v2, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    .line 44
    .line 45
    new-instance v3, Landroidx/media3/extractor/text/cea/b;

    .line 46
    .line 47
    invoke-direct {v3, p0}, Landroidx/media3/extractor/text/cea/b;-><init>(Landroidx/media3/extractor/text/cea/CeaDecoder;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v3, v2, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->o:Landroidx/media3/extractor/text/cea/b;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->c:Ljava/util/ArrayDeque;

    .line 67
    .line 68
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->g:J

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->j()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final f(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->d:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 21
    .line 22
    const-wide/high16 v2, -0x8000000000000000L

    .line 23
    .line 24
    cmp-long v2, v0, v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-wide v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->g:J

    .line 29
    .line 30
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v4, v2, v4

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-gez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->a:Ljava/util/ArrayDeque;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->f:J

    .line 53
    .line 54
    const-wide/16 v2, 0x1

    .line 55
    .line 56
    add-long/2addr v2, v0

    .line 57
    iput-wide v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->f:J

    .line 58
    .line 59
    iput-wide v0, p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->r:J

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->c:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_1
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->d:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 68
    .line 69
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->f:J

    .line 4
    .line 5
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->e:J

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->c:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->a:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 22
    .line 23
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->d:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->d:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public abstract g()Landroidx/media3/extractor/text/Subtitle;
.end method

.method public abstract h(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
.end method

.method public abstract i()Landroidx/media3/extractor/text/SubtitleInputBuffer;
.end method

.method public j()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->c:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 23
    .line 24
    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v2, v2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 27
    .line 28
    iget-wide v4, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->e:J

    .line 29
    .line 30
    cmp-long v2, v2, v4

    .line 31
    .line 32
    if-gtz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->a:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 54
    .line 55
    iget v0, p0, Landroidx/media3/decoder/Buffer;->j:I

    .line 56
    .line 57
    or-int/2addr v0, v2

    .line 58
    iput v0, p0, Landroidx/media3/decoder/Buffer;->j:I

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->h(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->k()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->g()Landroidx/media3/extractor/text/Subtitle;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 85
    .line 86
    iget-wide v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 87
    .line 88
    iput-wide v2, v0, Landroidx/media3/decoder/DecoderOutputBuffer;->k:J

    .line 89
    .line 90
    iput-object p0, v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 91
    .line 92
    iput-wide v2, v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->n:J

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public abstract k()Z
.end method
