.class public final Landroidx/media3/exoplayer/text/TextRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final C:Landroidx/media3/extractor/text/CueDecoder;

.field public final D:Landroidx/media3/decoder/DecoderInputBuffer;

.field public E:Landroidx/media3/exoplayer/text/CuesResolver;

.field public final F:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

.field public G:Z

.field public H:I

.field public I:Landroidx/media3/extractor/text/SubtitleDecoder;

.field public J:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field public K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field public L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field public M:I

.field public final N:Landroid/os/Handler;

.field public final O:Landroidx/media3/exoplayer/text/TextOutput;

.field public final P:Landroidx/media3/exoplayer/FormatHolder;

.field public Q:Z

.field public R:Z

.field public S:Landroidx/media3/common/Format;

.field public T:J

.field public U:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->O:Landroidx/media3/exoplayer/text/TextOutput;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->N:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 21
    .line 22
    new-instance p1, Landroidx/media3/extractor/text/CueDecoder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/CueDecoder;

    .line 28
    .line 29
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 36
    .line 37
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->P:Landroidx/media3/exoplayer/FormatHolder;

    .line 43
    .line 44
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->U:J

    .line 50
    .line 51
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p1, p1, p2

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 7
    .line 8
    const-string p2, "application/x-media3-cues"

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->G()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 32
    .line 33
    iget p1, p1, Landroidx/media3/common/Format;->Q:I

    .line 34
    .line 35
    if-ne p1, p2, :cond_2

    .line 36
    .line 37
    new-instance p1, Landroidx/media3/exoplayer/text/MergingCuesResolver;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/media3/exoplayer/text/MergingCuesResolver;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;

    .line 44
    .line 45
    invoke-direct {p1}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 49
    .line 50
    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "application/cea-608"

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "application/x-mp4-cea-608"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "application/cea-708"

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const-string v0, "application/x-media3-cues"

    .line 49
    .line 50
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "Legacy decoding is disabled, can\'t handle %s samples (expected %s)."

    .line 55
    .line 56
    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 8
    .line 9
    invoke-virtual {p0, v2, v3}, Landroidx/media3/exoplayer/text/TextRenderer;->J(J)J

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->N:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-virtual {v1, p0, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v1, v0, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->O:Landroidx/media3/exoplayer/text/TextOutput;

    .line 31
    .line 32
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/text/TextOutput;->f(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/text/TextOutput;->c(Landroidx/media3/common/text/CueGroup;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final I()J
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    return-wide v2

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 29
    .line 30
    iget p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    return-wide v0
.end method

.method public final J(J)J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 17
    .line 18
    sub-long/2addr p1, v0

    .line 19
    return-wide p1
.end method

.method public final K()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->G:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 10
    .line 11
    check-cast v2, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;->b:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 16
    .line 17
    iget v4, v1, Landroidx/media3/common/Format;->P:I

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, -0x1

    .line 26
    sparse-switch v5, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    :goto_0
    move v0, v6

    .line 30
    goto :goto_1

    .line 31
    :sswitch_0
    const-string v0, "application/cea-708"

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x2

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string v5, "application/cea-608"

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_2
    const-string v0, "application/x-mp4-cea-608"

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :pswitch_0
    new-instance v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;

    .line 66
    .line 67
    iget-object v1, v1, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 68
    .line 69
    invoke-direct {v0, v4, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :pswitch_1
    new-instance v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;

    .line 74
    .line 75
    invoke-direct {v0, v3, v4}, Landroidx/media3/extractor/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;->f(Landroidx/media3/common/Format;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;->b(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "Decoder"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;-><init>(Landroidx/media3/extractor/text/SubtitleParser;)V

    .line 105
    .line 106
    .line 107
    move-object v0, v1

    .line 108
    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 109
    .line 110
    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 111
    .line 112
    invoke-interface {v0, v1, v2}, Landroidx/media3/decoder/Decoder;->b(J)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    const-string p0, "Attempted to create decoder for unsupported MIME type: "

    .line 117
    .line 118
    invoke-static {p0, v3}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->g()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->g()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "application/x-media3-cues"

    .line 10
    .line 11
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 23
    .line 24
    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->a(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/high16 v4, -0x8000000000000000L

    .line 29
    .line 30
    cmp-long v0, v2, v4

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 45
    .line 46
    if-nez v0, :cond_6

    .line 47
    .line 48
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 53
    .line 54
    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-lez v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sub-int/2addr v4, v1

    .line 69
    invoke-virtual {v0, v4}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    cmp-long v0, v4, v2

    .line 74
    .line 75
    if-lez v0, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 79
    .line 80
    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-lez v4, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    sub-int/2addr v4, v1

    .line 95
    invoke-virtual {v0, v4}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    cmp-long v0, v4, v2

    .line 100
    .line 101
    if-lez v0, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 105
    .line 106
    if-nez p0, :cond_6

    .line 107
    .line 108
    :cond_5
    :goto_0
    return v1

    .line 109
    :catch_0
    :cond_6
    const/4 p0, 0x0

    .line 110
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 2
    .line 3
    return p0
.end method

.method public final d(JJ)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-wide v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->U:J

    .line 16
    .line 17
    cmp-long v0, v7, v5

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    cmp-long v0, v2, v7

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 26
    .line 27
    .line 28
    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_e

    .line 35
    .line 36
    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 42
    .line 43
    const-string v7, "application/x-media3-cues"

    .line 44
    .line 45
    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->O:Landroidx/media3/exoplayer/text/TextOutput;

    .line 50
    .line 51
    iget-object v8, v1, Landroidx/media3/exoplayer/text/TextRenderer;->N:Landroid/os/Handler;

    .line 52
    .line 53
    const/4 v9, 0x5

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x4

    .line 56
    const/4 v12, -0x4

    .line 57
    iget-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->P:Landroidx/media3/exoplayer/FormatHolder;

    .line 58
    .line 59
    const/4 v14, -0x3

    .line 60
    const-wide/32 v15, 0xf4240

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_f

    .line 64
    .line 65
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 77
    .line 78
    invoke-virtual {v1, v13, v0, v9}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-ne v9, v14, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 85
    .line 86
    .line 87
    move-result v17

    .line 88
    if-nez v17, :cond_3

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    if-ne v9, v12, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 95
    .line 96
    .line 97
    move-result v17

    .line 98
    if-nez v17, :cond_4

    .line 99
    .line 100
    iget-wide v5, v0, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 101
    .line 102
    sub-long/2addr v5, v15

    .line 103
    cmp-long v5, v2, v5

    .line 104
    .line 105
    if-gez v5, :cond_6

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_4
    if-eq v9, v12, :cond_5

    .line 110
    .line 111
    if-ne v9, v14, :cond_6

    .line 112
    .line 113
    :cond_5
    move-wide/from16 p3, v5

    .line 114
    .line 115
    iget-wide v5, v1, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 116
    .line 117
    move-wide/from16 v18, v5

    .line 118
    .line 119
    iget-wide v4, v1, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 120
    .line 121
    sub-long v4, v2, v4

    .line 122
    .line 123
    cmp-long v6, v18, p3

    .line 124
    .line 125
    if-eqz v6, :cond_a

    .line 126
    .line 127
    sub-long v14, v18, v15

    .line 128
    .line 129
    cmp-long v4, v4, v14

    .line 130
    .line 131
    if-gez v4, :cond_6

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :cond_6
    invoke-virtual {v1, v13, v0, v10}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eq v4, v12, :cond_7

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_7
    invoke-virtual {v0, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_8

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_8
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 154
    .line 155
    .line 156
    iget-object v4, v0, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-wide v12, v0, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/CueDecoder;

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v9, v5, v6, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 188
    .line 189
    .line 190
    const-class v4, Landroid/os/Bundle;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 201
    .line 202
    .line 203
    const-string v5, "c"

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    new-instance v11, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 213
    .line 214
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-ge v10, v9, :cond_9

    .line 223
    .line 224
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    check-cast v9, Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v9}, Landroidx/media3/common/text/Cue;->b(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-virtual {v6, v9}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v10, v10, 0x1

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_9
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 244
    .line 245
    .line 246
    move-result-object v16

    .line 247
    const-string v5, "d"

    .line 248
    .line 249
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v14

    .line 253
    invoke-direct/range {v11 .. v16}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 257
    .line 258
    .line 259
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 260
    .line 261
    invoke-interface {v0, v11, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->c(Landroidx/media3/extractor/text/CuesWithTiming;J)Z

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    :cond_a
    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 266
    .line 267
    iget-wide v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 268
    .line 269
    invoke-interface {v0, v4, v5}, Landroidx/media3/exoplayer/text/CuesResolver;->a(J)J

    .line 270
    .line 271
    .line 272
    move-result-wide v4

    .line 273
    const-wide/high16 v11, -0x8000000000000000L

    .line 274
    .line 275
    cmp-long v0, v4, v11

    .line 276
    .line 277
    if-nez v0, :cond_b

    .line 278
    .line 279
    iget-boolean v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 280
    .line 281
    if-eqz v6, :cond_b

    .line 282
    .line 283
    if-nez v10, :cond_b

    .line 284
    .line 285
    const/4 v6, 0x1

    .line 286
    iput-boolean v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 287
    .line 288
    :cond_b
    if-eqz v0, :cond_c

    .line 289
    .line 290
    cmp-long v0, v4, v2

    .line 291
    .line 292
    if-gtz v0, :cond_c

    .line 293
    .line 294
    const/4 v10, 0x1

    .line 295
    :cond_c
    if-eqz v10, :cond_e

    .line 296
    .line 297
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 298
    .line 299
    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->b(J)Lcom/google/common/collect/ImmutableList;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 304
    .line 305
    invoke-interface {v4, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->d(J)J

    .line 306
    .line 307
    .line 308
    move-result-wide v4

    .line 309
    new-instance v6, Landroidx/media3/common/text/CueGroup;

    .line 310
    .line 311
    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/text/TextRenderer;->J(J)J

    .line 312
    .line 313
    .line 314
    invoke-direct {v6, v0}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    .line 315
    .line 316
    .line 317
    if-eqz v8, :cond_d

    .line 318
    .line 319
    const/4 v0, 0x1

    .line 320
    invoke-virtual {v8, v0, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_d
    iget-object v0, v6, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    .line 329
    .line 330
    invoke-interface {v7, v0}, Landroidx/media3/exoplayer/text/TextOutput;->f(Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    invoke-interface {v7, v6}, Landroidx/media3/exoplayer/text/TextOutput;->c(Landroidx/media3/common/text/CueGroup;)V

    .line 334
    .line 335
    .line 336
    :goto_2
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 337
    .line 338
    invoke-interface {v0, v4, v5}, Landroidx/media3/exoplayer/text/CuesResolver;->e(J)V

    .line 339
    .line 340
    .line 341
    :cond_e
    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 342
    .line 343
    return-void

    .line 344
    :cond_f
    move-wide/from16 p3, v5

    .line 345
    .line 346
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->G()V

    .line 347
    .line 348
    .line 349
    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 350
    .line 351
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 352
    .line 353
    const-string v4, "Subtitle decoding failed. streamFormat="

    .line 354
    .line 355
    const-string v5, "TextRenderer"

    .line 356
    .line 357
    const/4 v6, 0x0

    .line 358
    if-nez v0, :cond_10

    .line 359
    .line 360
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-interface {v0, v2, v3}, Landroidx/media3/extractor/text/SubtitleDecoder;->c(J)V

    .line 366
    .line 367
    .line 368
    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->d()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 378
    .line 379
    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :catch_0
    move-exception v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 389
    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v5, v2, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->H()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 404
    .line 405
    .line 406
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->a()V

    .line 412
    .line 413
    .line 414
    iput-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 415
    .line 416
    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 417
    .line 418
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_e

    .line 422
    .line 423
    :cond_10
    :goto_3
    iget v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 424
    .line 425
    move-wide/from16 v18, v15

    .line 426
    .line 427
    const/4 v15, 0x2

    .line 428
    if-eq v0, v15, :cond_11

    .line 429
    .line 430
    goto/16 :goto_e

    .line 431
    .line 432
    :cond_11
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 433
    .line 434
    if-eqz v0, :cond_12

    .line 435
    .line 436
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->I()J

    .line 437
    .line 438
    .line 439
    move-result-wide v20

    .line 440
    move v0, v10

    .line 441
    :goto_4
    cmp-long v16, v20, v2

    .line 442
    .line 443
    if-gtz v16, :cond_13

    .line 444
    .line 445
    iget v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 446
    .line 447
    const/16 v17, 0x1

    .line 448
    .line 449
    add-int/lit8 v0, v0, 0x1

    .line 450
    .line 451
    iput v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 452
    .line 453
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->I()J

    .line 454
    .line 455
    .line 456
    move-result-wide v20

    .line 457
    const/4 v0, 0x1

    .line 458
    goto :goto_4

    .line 459
    :cond_12
    move v0, v10

    .line 460
    :cond_13
    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 461
    .line 462
    if-eqz v12, :cond_17

    .line 463
    .line 464
    invoke-virtual {v12, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 465
    .line 466
    .line 467
    move-result v20

    .line 468
    if-eqz v20, :cond_15

    .line 469
    .line 470
    if-nez v0, :cond_17

    .line 471
    .line 472
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->I()J

    .line 473
    .line 474
    .line 475
    move-result-wide v20

    .line 476
    const-wide v22, 0x7fffffffffffffffL

    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    cmp-long v12, v20, v22

    .line 482
    .line 483
    if-nez v12, :cond_17

    .line 484
    .line 485
    iget v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 486
    .line 487
    if-ne v12, v15, :cond_14

    .line 488
    .line 489
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 490
    .line 491
    .line 492
    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 493
    .line 494
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-interface {v12}, Landroidx/media3/decoder/Decoder;->a()V

    .line 498
    .line 499
    .line 500
    iput-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 501
    .line 502
    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 503
    .line 504
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_14
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 509
    .line 510
    .line 511
    const/4 v12, 0x1

    .line 512
    iput-boolean v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 513
    .line 514
    goto :goto_5

    .line 515
    :cond_15
    iget-wide v9, v12, Landroidx/media3/decoder/DecoderOutputBuffer;->k:J

    .line 516
    .line 517
    cmp-long v9, v9, v2

    .line 518
    .line 519
    if-gtz v9, :cond_17

    .line 520
    .line 521
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 522
    .line 523
    if-eqz v0, :cond_16

    .line 524
    .line 525
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->g()V

    .line 526
    .line 527
    .line 528
    :cond_16
    invoke-virtual {v12, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->a(J)I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    iput v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->M:I

    .line 533
    .line 534
    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 535
    .line 536
    iput-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->L:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 537
    .line 538
    const/4 v0, 0x1

    .line 539
    :cond_17
    :goto_5
    if-eqz v0, :cond_1c

    .line 540
    .line 541
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 547
    .line 548
    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->a(J)I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_1a

    .line 553
    .line 554
    iget-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 555
    .line 556
    invoke-virtual {v9}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 557
    .line 558
    .line 559
    move-result v9

    .line 560
    if-nez v9, :cond_18

    .line 561
    .line 562
    goto :goto_6

    .line 563
    :cond_18
    iget-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 564
    .line 565
    const/4 v10, -0x1

    .line 566
    if-ne v0, v10, :cond_19

    .line 567
    .line 568
    invoke-virtual {v9}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    const/16 v17, 0x1

    .line 573
    .line 574
    add-int/lit8 v0, v0, -0x1

    .line 575
    .line 576
    invoke-virtual {v9, v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b(I)J

    .line 577
    .line 578
    .line 579
    move-result-wide v9

    .line 580
    goto :goto_7

    .line 581
    :cond_19
    const/16 v17, 0x1

    .line 582
    .line 583
    add-int/lit8 v0, v0, -0x1

    .line 584
    .line 585
    invoke-virtual {v9, v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b(I)J

    .line 586
    .line 587
    .line 588
    move-result-wide v9

    .line 589
    goto :goto_7

    .line 590
    :cond_1a
    :goto_6
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 591
    .line 592
    iget-wide v9, v0, Landroidx/media3/decoder/DecoderOutputBuffer;->k:J

    .line 593
    .line 594
    :goto_7
    invoke-virtual {v1, v9, v10}, Landroidx/media3/exoplayer/text/TextRenderer;->J(J)J

    .line 595
    .line 596
    .line 597
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 598
    .line 599
    iget-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 600
    .line 601
    invoke-virtual {v9, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->c(J)Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    invoke-direct {v0, v9}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    .line 606
    .line 607
    .line 608
    if-eqz v8, :cond_1b

    .line 609
    .line 610
    const/4 v12, 0x1

    .line 611
    invoke-virtual {v8, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 616
    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_1b
    iget-object v8, v0, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    .line 620
    .line 621
    invoke-interface {v7, v8}, Landroidx/media3/exoplayer/text/TextOutput;->f(Ljava/util/List;)V

    .line 622
    .line 623
    .line 624
    invoke-interface {v7, v0}, Landroidx/media3/exoplayer/text/TextOutput;->c(Landroidx/media3/common/text/CueGroup;)V

    .line 625
    .line 626
    .line 627
    :cond_1c
    :goto_8
    iget v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 628
    .line 629
    if-ne v0, v15, :cond_1d

    .line 630
    .line 631
    goto/16 :goto_e

    .line 632
    .line 633
    :cond_1d
    :goto_9
    :try_start_1
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 634
    .line 635
    if-nez v0, :cond_29

    .line 636
    .line 637
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 638
    .line 639
    if-nez v0, :cond_1f

    .line 640
    .line 641
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->e()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    check-cast v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 651
    .line 652
    if-nez v0, :cond_1e

    .line 653
    .line 654
    goto/16 :goto_e

    .line 655
    .line 656
    :cond_1e
    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 657
    .line 658
    goto :goto_a

    .line 659
    :catch_1
    move-exception v0

    .line 660
    goto/16 :goto_d

    .line 661
    .line 662
    :cond_1f
    :goto_a
    iget v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 663
    .line 664
    const/4 v12, 0x1

    .line 665
    if-ne v7, v12, :cond_20

    .line 666
    .line 667
    iput v11, v0, Landroidx/media3/decoder/Buffer;->j:I

    .line 668
    .line 669
    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 670
    .line 671
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    invoke-interface {v2, v0}, Landroidx/media3/decoder/Decoder;->f(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    .line 675
    .line 676
    .line 677
    iput-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 678
    .line 679
    iput v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 680
    .line 681
    return-void

    .line 682
    :cond_20
    const/4 v7, 0x5

    .line 683
    invoke-virtual {v1, v13, v0, v7}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 684
    .line 685
    .line 686
    move-result v8

    .line 687
    if-ne v8, v14, :cond_21

    .line 688
    .line 689
    invoke-virtual {v0, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 690
    .line 691
    .line 692
    move-result v9

    .line 693
    if-nez v9, :cond_21

    .line 694
    .line 695
    goto/16 :goto_e

    .line 696
    .line 697
    :cond_21
    const/4 v9, -0x4

    .line 698
    if-ne v8, v9, :cond_24

    .line 699
    .line 700
    invoke-virtual {v0, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 701
    .line 702
    .line 703
    move-result v9

    .line 704
    if-nez v9, :cond_23

    .line 705
    .line 706
    iget-wide v8, v0, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 707
    .line 708
    sub-long v8, v8, v18

    .line 709
    .line 710
    cmp-long v8, v2, v8

    .line 711
    .line 712
    if-gez v8, :cond_22

    .line 713
    .line 714
    goto/16 :goto_e

    .line 715
    .line 716
    :cond_22
    const/4 v7, 0x0

    .line 717
    goto :goto_b

    .line 718
    :cond_23
    const/4 v9, -0x4

    .line 719
    :cond_24
    if-eq v8, v9, :cond_25

    .line 720
    .line 721
    if-ne v8, v14, :cond_22

    .line 722
    .line 723
    :cond_25
    iget-wide v8, v1, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 724
    .line 725
    move-wide/from16 v22, v8

    .line 726
    .line 727
    iget-wide v7, v1, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 728
    .line 729
    sub-long v7, v2, v7

    .line 730
    .line 731
    cmp-long v9, v22, p3

    .line 732
    .line 733
    if-eqz v9, :cond_29

    .line 734
    .line 735
    sub-long v9, v22, v18

    .line 736
    .line 737
    cmp-long v7, v7, v9

    .line 738
    .line 739
    if-gez v7, :cond_22

    .line 740
    .line 741
    goto :goto_e

    .line 742
    :goto_b
    invoke-virtual {v1, v13, v0, v7}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    const/4 v9, -0x4

    .line 747
    if-ne v8, v9, :cond_28

    .line 748
    .line 749
    invoke-virtual {v0, v11}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 750
    .line 751
    .line 752
    move-result v8

    .line 753
    if-eqz v8, :cond_26

    .line 754
    .line 755
    const/4 v12, 0x1

    .line 756
    iput-boolean v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 757
    .line 758
    iput-boolean v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->G:Z

    .line 759
    .line 760
    const/4 v12, 0x1

    .line 761
    goto :goto_c

    .line 762
    :cond_26
    iget-object v7, v13, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 763
    .line 764
    if-nez v7, :cond_27

    .line 765
    .line 766
    goto :goto_e

    .line 767
    :cond_27
    iget-wide v7, v7, Landroidx/media3/common/Format;->u:J

    .line 768
    .line 769
    iput-wide v7, v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;->q:J

    .line 770
    .line 771
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 772
    .line 773
    .line 774
    iget-boolean v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->G:Z

    .line 775
    .line 776
    const/4 v12, 0x1

    .line 777
    invoke-virtual {v0, v12}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 778
    .line 779
    .line 780
    move-result v8

    .line 781
    xor-int/2addr v8, v12

    .line 782
    and-int/2addr v7, v8

    .line 783
    iput-boolean v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->G:Z

    .line 784
    .line 785
    :goto_c
    iget-boolean v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->G:Z

    .line 786
    .line 787
    if-nez v7, :cond_1d

    .line 788
    .line 789
    iget-object v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 790
    .line 791
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    invoke-interface {v7, v0}, Landroidx/media3/decoder/Decoder;->f(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    .line 795
    .line 796
    .line 797
    iput-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 798
    .line 799
    goto/16 :goto_9

    .line 800
    .line 801
    :cond_28
    const/4 v12, 0x1

    .line 802
    if-ne v8, v14, :cond_1d

    .line 803
    .line 804
    goto :goto_e

    .line 805
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 811
    .line 812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-static {v5, v2, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->H()V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 826
    .line 827
    .line 828
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 829
    .line 830
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->a()V

    .line 834
    .line 835
    .line 836
    iput-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 837
    .line 838
    const/4 v7, 0x0

    .line 839
    iput v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 840
    .line 841
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 842
    .line 843
    .line 844
    :cond_29
    :goto_e
    return-void
.end method

.method public final f(Landroidx/media3/common/Format;)I
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "application/x-media3-cues"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 15
    .line 16
    check-cast p0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;->b:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;->f(Landroidx/media3/common/Format;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    const-string p0, "application/cea-608"

    .line 30
    .line 31
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    const-string p0, "application/x-mp4-cea-608"

    .line 38
    .line 39
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const-string p0, "application/cea-708"

    .line 46
    .line 47
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->j(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    invoke-static {p0, v2, v2, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_1
    invoke-static {v2, v2, v2, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_2
    :goto_0
    iget p0, p1, Landroidx/media3/common/Format;->T:I

    .line 72
    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    const/4 p0, 0x4

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 p0, 0x2

    .line 78
    :goto_1
    invoke-static {p0, v2, v2, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TextRenderer"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/common/text/CueGroup;

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->O:Landroidx/media3/exoplayer/text/TextOutput;

    .line 13
    .line 14
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/text/TextOutput;->f(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/text/TextOutput;->c(Landroidx/media3/common/text/CueGroup;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->U:J

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->H()V

    .line 12
    .line 13
    .line 14
    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->a()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final v(JZZ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->T:J

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/media3/exoplayer/text/CuesResolver;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->H()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->Q:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->R:Z

    .line 17
    .line 18
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->U:J

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->S:Landroidx/media3/common/Format;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    iget-object p2, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 30
    .line 31
    const-string p3, "application/x-media3-cues"

    .line 32
    .line 33
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    iget p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Landroidx/media3/decoder/Decoder;->a()V

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 56
    .line 57
    iput p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->H:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->flush()V

    .line 72
    .line 73
    .line 74
    iget-wide p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 75
    .line 76
    invoke-interface {p1, p2, p3}, Landroidx/media3/decoder/Decoder;->b(J)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method
