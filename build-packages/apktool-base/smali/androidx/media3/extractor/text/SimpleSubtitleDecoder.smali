.class public abstract Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder<",
        "Landroidx/media3/extractor/text/SubtitleInputBuffer;",
        "Landroidx/media3/extractor/text/SubtitleOutputBuffer;",
        "Landroidx/media3/extractor/text/SubtitleDecoderException;",
        ">;",
        "Landroidx/media3/extractor/text/SubtitleDecoder;"
    }
.end annotation


# virtual methods
.method public final c(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1

    .line 1
    new-instance p0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final h()Landroidx/media3/decoder/DecoderOutputBuffer;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;-><init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final i(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 1

    .line 1
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 2
    .line 3
    const-string v0, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final j(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/DecoderOutputBuffer;Z)Landroidx/media3/decoder/DecoderException;
    .locals 4

    .line 1
    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 2
    .line 3
    check-cast p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, v1, v0, p3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->o([BIZ)Landroidx/media3/extractor/text/Subtitle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 23
    .line 24
    iget-wide v2, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->q:J

    .line 25
    .line 26
    iput-wide v0, p2, Landroidx/media3/decoder/DecoderOutputBuffer;->k:J

    .line 27
    .line 28
    iput-object p0, p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 29
    .line 30
    const-wide p0, 0x7fffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long p0, v2, p0

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-wide v0, v2

    .line 41
    :goto_0
    iput-wide v0, p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->n:J

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    iput-boolean p0, p2, Landroidx/media3/decoder/DecoderOutputBuffer;->l:Z
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    return-object p0
.end method

.method public abstract o([BIZ)Landroidx/media3/extractor/text/Subtitle;
.end method
