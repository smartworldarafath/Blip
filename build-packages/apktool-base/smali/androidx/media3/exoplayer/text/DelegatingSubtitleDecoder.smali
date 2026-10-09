.class final Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final n:Landroidx/media3/extractor/text/SubtitleParser;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 3
    .line 4
    new-array v0, v0, [Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 5
    .line 6
    invoke-direct {p0, v1, v0}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/DecoderOutputBuffer;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 21
    .line 22
    .line 23
    array-length v0, v1

    .line 24
    :goto_1
    if-ge v3, v0, :cond_1

    .line 25
    .line 26
    aget-object v2, v1, v3

    .line 27
    .line 28
    const/16 v4, 0x400

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->h(I)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->n:Landroidx/media3/extractor/text/SubtitleParser;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final o([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->n:Landroidx/media3/extractor/text/SubtitleParser;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/extractor/text/SubtitleParser;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    invoke-interface {p0, p1, p3, p2}, Landroidx/media3/extractor/text/SubtitleParser;->a([BII)Landroidx/media3/extractor/text/Subtitle;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
