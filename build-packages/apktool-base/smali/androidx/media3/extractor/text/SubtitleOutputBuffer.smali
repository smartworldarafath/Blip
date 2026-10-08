.class public abstract Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public m:Landroidx/media3/extractor/text/Subtitle;

.field public n:J


# virtual methods
.method public final a(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->n:J

    .line 7
    .line 8
    sub-long/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->a(J)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final b(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/Subtitle;->b(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide p0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->n:J

    .line 11
    .line 12
    add-long/2addr v0, p0

    .line 13
    return-wide v0
.end method

.method public final c(J)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->n:J

    .line 7
    .line 8
    sub-long/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->c(J)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->d()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/decoder/Buffer;->j:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->k:J

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->l:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->m:Landroidx/media3/extractor/text/Subtitle;

    .line 12
    .line 13
    return-void
.end method
