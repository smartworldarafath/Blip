.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final m:Lcom/google/common/base/Supplier;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:I

.field public l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk8;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lk8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->m:Lcom/google/common/base/Supplier;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 14
    .line 15
    iput-boolean p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g:Z

    .line 16
    .line 17
    iput-boolean p8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e:Z

    .line 18
    .line 19
    iput-boolean p9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 20
    .line 21
    iput-boolean p10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h:Z

    .line 22
    .line 23
    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    .line 28
    .line 29
    const p1, -0x800001

    .line 30
    .line 31
    .line 32
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->l:F

    .line 33
    .line 34
    const/4 p1, -0x1

    .line 35
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->j:I

    .line 36
    .line 37
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->k:I

    .line 38
    .line 39
    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/graphics/Point;

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->e(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    mul-int/2addr p1, v0

    .line 16
    invoke-static {p2, v1}, Landroidx/media3/common/util/Util;->e(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    mul-int/2addr p2, v1

    .line 21
    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 22
    .line 23
    .line 24
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 25
    .line 26
    iget p2, v2, Landroid/graphics/Point;->y:I

    .line 27
    .line 28
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 29
    .line 30
    cmpl-double v0, p3, v0

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 35
    .line 36
    cmpg-double v0, p3, v0

    .line 37
    .line 38
    if-gez v0, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide p3

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/Double;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    cmpg-double p0, p3, p0

    .line 70
    .line 71
    if-gtz p0, :cond_3

    .line 72
    .line 73
    :goto_0
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 11

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 2
    .line 3
    const-string v1, "adaptive-playback"

    .line 4
    .line 5
    invoke-virtual {p3, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    const-string v1, "tunneled-playback"

    .line 10
    .line 11
    invoke-virtual {p3, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    const-string v1, "secure-playback"

    .line 15
    .line 16
    invoke-virtual {p3, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x23

    .line 23
    .line 24
    if-lt v1, v2, :cond_2

    .line 25
    .line 26
    const-string v1, "detached-surface"

    .line 27
    .line 28
    invoke-virtual {p3, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    sget-object v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->m:Lcom/google/common/base/Supplier;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const v2, 0x3176c

    .line 49
    .line 50
    .line 51
    if-le v1, v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "Xiaomi"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    const-string v2, "OPPO"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    const-string v2, "realme"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    const-string v2, "motorola"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    const-string v2, "LENOVO"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    const-string v2, "Fairphone"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 106
    :goto_1
    move-object v2, p1

    .line 107
    move-object v3, p2

    .line 108
    move-object v4, p3

    .line 109
    move v5, p4

    .line 110
    move/from16 v6, p5

    .line 111
    .line 112
    move/from16 v7, p6

    .line 113
    .line 114
    move v10, v1

    .line 115
    move-object v1, p0

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 118
    goto :goto_1

    .line 119
    :goto_3
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method


# virtual methods
.method public final b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 4
    .line 5
    iget-object v2, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p2, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 8
    .line 9
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    .line 21
    .line 22
    if-eqz v4, :cond_e

    .line 23
    .line 24
    iget v4, p1, Landroidx/media3/common/Format;->C:I

    .line 25
    .line 26
    iget v5, p2, Landroidx/media3/common/Format;->C:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    or-int/lit16 v0, v0, 0x400

    .line 31
    .line 32
    :cond_1
    iget v4, p1, Landroidx/media3/common/Format;->w:I

    .line 33
    .line 34
    iget v5, p2, Landroidx/media3/common/Format;->w:I

    .line 35
    .line 36
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    iget v4, p1, Landroidx/media3/common/Format;->x:I

    .line 39
    .line 40
    iget v5, p2, Landroidx/media3/common/Format;->x:I

    .line 41
    .line 42
    if-eq v4, v5, :cond_3

    .line 43
    .line 44
    :cond_2
    const/4 v2, 0x1

    .line 45
    :cond_3
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e:Z

    .line 46
    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    or-int/lit16 v0, v0, 0x200

    .line 52
    .line 53
    :cond_4
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->e(Landroidx/media3/common/ColorInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_5

    .line 58
    .line 59
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->e(Landroidx/media3/common/ColorInfo;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_6

    .line 64
    .line 65
    :cond_5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    or-int/lit16 v0, v0, 0x800

    .line 72
    .line 73
    :cond_6
    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 74
    .line 75
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "SM-T230"

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    .line 86
    .line 87
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->b(Landroidx/media3/common/Format;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    or-int/lit8 v0, v0, 0x2

    .line 102
    .line 103
    :cond_7
    iget v1, p1, Landroidx/media3/common/Format;->z:I

    .line 104
    .line 105
    const/4 v3, -0x1

    .line 106
    if-eq v1, v3, :cond_8

    .line 107
    .line 108
    iget v4, p1, Landroidx/media3/common/Format;->A:I

    .line 109
    .line 110
    if-eq v4, v3, :cond_8

    .line 111
    .line 112
    iget v3, p2, Landroidx/media3/common/Format;->z:I

    .line 113
    .line 114
    if-ne v1, v3, :cond_8

    .line 115
    .line 116
    iget v1, p2, Landroidx/media3/common/Format;->A:I

    .line 117
    .line 118
    if-ne v4, v1, :cond_8

    .line 119
    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    or-int/lit8 v0, v0, 0x2

    .line 123
    .line 124
    :cond_8
    if-nez v0, :cond_a

    .line 125
    .line 126
    iget-object v1, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 127
    .line 128
    const-string v2, "video/dolby-vision"

    .line 129
    .line 130
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_a

    .line 135
    .line 136
    invoke-static {p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {p2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    if-eqz v2, :cond_9

    .line 147
    .line 148
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Ljava/lang/Integer;

    .line 151
    .line 152
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_a

    .line 159
    .line 160
    :cond_9
    or-int/lit8 v0, v0, 0x2

    .line 161
    .line 162
    :cond_a
    if-nez v0, :cond_c

    .line 163
    .line 164
    new-instance v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->b(Landroidx/media3/common/Format;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_b

    .line 171
    .line 172
    const/4 v0, 0x3

    .line 173
    :goto_1
    move v5, v0

    .line 174
    goto :goto_2

    .line 175
    :cond_b
    const/4 v0, 0x2

    .line 176
    goto :goto_1

    .line 177
    :goto_2
    const/4 v6, 0x0

    .line 178
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 179
    .line 180
    move-object v3, p1

    .line 181
    move-object v4, p2

    .line 182
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 183
    .line 184
    .line 185
    return-object v1

    .line 186
    :cond_c
    move-object v4, p1

    .line 187
    move-object v5, p2

    .line 188
    :cond_d
    move v7, v0

    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_e
    move-object v4, p1

    .line 192
    move-object v5, p2

    .line 193
    iget p1, v4, Landroidx/media3/common/Format;->J:I

    .line 194
    .line 195
    iget p2, v5, Landroidx/media3/common/Format;->J:I

    .line 196
    .line 197
    if-eq p1, p2, :cond_f

    .line 198
    .line 199
    or-int/lit16 v0, v0, 0x1000

    .line 200
    .line 201
    :cond_f
    iget p1, v4, Landroidx/media3/common/Format;->L:I

    .line 202
    .line 203
    iget p2, v5, Landroidx/media3/common/Format;->L:I

    .line 204
    .line 205
    if-eq p1, p2, :cond_10

    .line 206
    .line 207
    or-int/lit16 v0, v0, 0x2000

    .line 208
    .line 209
    :cond_10
    iget p1, v4, Landroidx/media3/common/Format;->M:I

    .line 210
    .line 211
    iget p2, v5, Landroidx/media3/common/Format;->M:I

    .line 212
    .line 213
    if-eq p1, p2, :cond_11

    .line 214
    .line 215
    or-int/lit16 v0, v0, 0x4000

    .line 216
    .line 217
    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 218
    .line 219
    if-nez v0, :cond_14

    .line 220
    .line 221
    const-string p2, "audio/mp4a-latm"

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    const-string v1, "audio/ac4"

    .line 228
    .line 229
    if-nez p2, :cond_12

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-eqz p2, :cond_14

    .line 236
    .line 237
    :cond_12
    invoke-static {v4}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {v5}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz p2, :cond_14

    .line 246
    .line 247
    if-eqz v2, :cond_14

    .line 248
    .line 249
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v3, Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v6, Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    const/16 v7, 0x2a

    .line 266
    .line 267
    if-ne v3, v7, :cond_13

    .line 268
    .line 269
    if-ne v6, v7, :cond_13

    .line 270
    .line 271
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 272
    .line 273
    const/4 v6, 0x3

    .line 274
    const/4 v7, 0x0

    .line 275
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 276
    .line 277
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 278
    .line 279
    .line 280
    return-object v2

    .line 281
    :cond_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_14

    .line 286
    .line 287
    invoke-virtual {p2, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    if-eqz p2, :cond_14

    .line 292
    .line 293
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 294
    .line 295
    const/4 v6, 0x3

    .line 296
    const/4 v7, 0x0

    .line 297
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 298
    .line 299
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 300
    .line 301
    .line 302
    return-object v2

    .line 303
    :cond_14
    if-nez v0, :cond_16

    .line 304
    .line 305
    const-string p2, "audio/eac3-joc"

    .line 306
    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-nez p2, :cond_15

    .line 312
    .line 313
    const-string p2, "audio/eac3"

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    if-eqz p2, :cond_16

    .line 320
    .line 321
    :cond_15
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 322
    .line 323
    const/4 v6, 0x3

    .line 324
    const/4 v7, 0x0

    .line 325
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 326
    .line 327
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 328
    .line 329
    .line 330
    return-object v2

    .line 331
    :cond_16
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format;->b(Landroidx/media3/common/Format;)Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    if-nez p2, :cond_17

    .line 336
    .line 337
    or-int/lit8 v0, v0, 0x20

    .line 338
    .line 339
    :cond_17
    const-string p2, "audio/opus"

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_18

    .line 346
    .line 347
    or-int/lit8 p1, v0, 0x2

    .line 348
    .line 349
    move v0, p1

    .line 350
    :cond_18
    if-nez v0, :cond_d

    .line 351
    .line 352
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 353
    .line 354
    const/4 v6, 0x1

    .line 355
    const/4 v7, 0x0

    .line 356
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 357
    .line 358
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 359
    .line 360
    .line 361
    return-object v2

    .line 362
    :goto_3
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 363
    .line 364
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 365
    .line 366
    const/4 v6, 0x0

    .line 367
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 368
    .line 369
    .line 370
    return-object v2
.end method

.method public final c(Landroid/content/Context;Landroidx/media3/common/Format;Z)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->d(Landroidx/media3/common/Format;)Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "video/hevc"

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v3, :cond_9

    .line 16
    .line 17
    const-string v9, "video/mv-hevc"

    .line 18
    .line 19
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    if-eqz v10, :cond_9

    .line 24
    .line 25
    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-eqz v9, :cond_1

    .line 34
    .line 35
    :cond_0
    :goto_0
    const/16 v17, 0x1

    .line 36
    .line 37
    goto/16 :goto_f

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_9

    .line 44
    .line 45
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    iget-object v2, v1, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-ge v9, v10, :cond_7

    .line 55
    .line 56
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    check-cast v10, [B

    .line 61
    .line 62
    array-length v12, v10

    .line 63
    const/4 v13, 0x3

    .line 64
    if-le v12, v13, :cond_5

    .line 65
    .line 66
    new-array v14, v13, [Z

    .line 67
    .line 68
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    const/4 v8, 0x0

    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    :goto_2
    array-length v4, v10

    .line 76
    if-ge v8, v4, :cond_3

    .line 77
    .line 78
    array-length v4, v10

    .line 79
    invoke-static {v10, v8, v4, v14}, Landroidx/media3/container/NalUnitUtil;->b([BII[Z)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    array-length v8, v10

    .line 84
    if-eq v4, v8, :cond_2

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v15, v8}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    add-int/lit8 v8, v4, 0x3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v15}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    move/from16 v8, v16

    .line 101
    .line 102
    :goto_3
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-ge v8, v14, :cond_6

    .line 107
    .line 108
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    check-cast v14, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    add-int/2addr v14, v13

    .line 119
    if-ge v14, v12, :cond_4

    .line 120
    .line 121
    new-instance v14, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 122
    .line 123
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    check-cast v15, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    add-int/2addr v15, v13

    .line 134
    invoke-direct {v14, v10, v15, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 135
    .line 136
    .line 137
    invoke-static {v14}, Landroidx/media3/container/NalUnitUtil;->f(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    iget v7, v15, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->a:I

    .line 142
    .line 143
    const/16 v11, 0x21

    .line 144
    .line 145
    if-ne v7, v11, :cond_4

    .line 146
    .line 147
    iget v7, v15, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->b:I

    .line 148
    .line 149
    if-nez v7, :cond_4

    .line 150
    .line 151
    const/4 v2, 0x4

    .line 152
    invoke-virtual {v14, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    .line 160
    .line 161
    .line 162
    const/4 v4, 0x1

    .line 163
    const/4 v7, 0x0

    .line 164
    invoke-static {v14, v4, v2, v7}, Landroidx/media3/container/NalUnitUtil;->g(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget v8, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->a:I

    .line 169
    .line 170
    iget-boolean v9, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->b:Z

    .line 171
    .line 172
    iget v10, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->c:I

    .line 173
    .line 174
    iget v11, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->d:I

    .line 175
    .line 176
    iget-object v12, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->e:[I

    .line 177
    .line 178
    iget v13, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->f:I

    .line 179
    .line 180
    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/CodecSpecificDataUtil;->a(IZII[II)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    goto :goto_4

    .line 185
    :cond_4
    const/4 v7, 0x0

    .line 186
    add-int/lit8 v8, v8, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_5
    const/16 v16, 0x0

    .line 190
    .line 191
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_7
    const/4 v7, 0x0

    .line 196
    const/16 v16, 0x0

    .line 197
    .line 198
    move-object v2, v7

    .line 199
    :goto_4
    if-nez v2, :cond_8

    .line 200
    .line 201
    move-object v2, v7

    .line 202
    const/4 v8, -0x1

    .line 203
    goto :goto_5

    .line 204
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 209
    .line 210
    const-string v7, "\\."

    .line 211
    .line 212
    const/4 v8, -0x1

    .line 213
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    iget-object v7, v1, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 218
    .line 219
    invoke-static {v2, v4, v7}, Landroidx/media3/common/util/CodecSpecificDataUtil;->c(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    goto :goto_5

    .line 224
    :cond_9
    const/4 v8, -0x1

    .line 225
    const/16 v16, 0x0

    .line 226
    .line 227
    :goto_5
    if-nez v2, :cond_a

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_a
    iget-boolean v4, v2, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->c:Z

    .line 232
    .line 233
    if-nez v4, :cond_b

    .line 234
    .line 235
    return v16

    .line 236
    :cond_b
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 237
    .line 238
    .line 239
    iget v7, v2, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->a:I

    .line 240
    .line 241
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 242
    .line 243
    .line 244
    iget v2, v2, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->b:I

    .line 245
    .line 246
    const-string v4, "video/dolby-vision"

    .line 247
    .line 248
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    const/16 v4, 0x8

    .line 253
    .line 254
    const/4 v9, 0x2

    .line 255
    iget-object v10, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 256
    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    sparse-switch v3, :sswitch_data_0

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :sswitch_0
    const-string v3, "video/avc"

    .line 271
    .line 272
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-nez v3, :cond_c

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_c
    move v8, v9

    .line 280
    goto :goto_6

    .line 281
    :sswitch_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-nez v3, :cond_d

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_d
    const/4 v8, 0x1

    .line 289
    goto :goto_6

    .line 290
    :sswitch_2
    const-string v3, "video/av01"

    .line 291
    .line 292
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-nez v3, :cond_e

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_e
    move/from16 v8, v16

    .line 300
    .line 301
    :goto_6
    packed-switch v8, :pswitch_data_0

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :pswitch_0
    move v7, v4

    .line 306
    :goto_7
    move/from16 v2, v16

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :pswitch_1
    move v7, v9

    .line 310
    goto :goto_7

    .line 311
    :cond_f
    :goto_8
    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    .line 312
    .line 313
    const-string v8, "audio/ac4"

    .line 314
    .line 315
    if-nez v3, :cond_10

    .line 316
    .line 317
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-nez v3, :cond_10

    .line 322
    .line 323
    const/16 v3, 0x2a

    .line 324
    .line 325
    if-eq v7, v3, :cond_10

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_10
    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 330
    .line 331
    iget-object v11, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 332
    .line 333
    if-nez v11, :cond_11

    .line 334
    .line 335
    move/from16 v12, v16

    .line 336
    .line 337
    new-array v11, v12, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 338
    .line 339
    :cond_11
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-eqz v8, :cond_15

    .line 344
    .line 345
    array-length v8, v11

    .line 346
    if-nez v8, :cond_15

    .line 347
    .line 348
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    if-eqz v3, :cond_12

    .line 353
    .line 354
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    goto :goto_9

    .line 359
    :cond_12
    move v3, v9

    .line 360
    :goto_9
    const/16 v8, 0x12

    .line 361
    .line 362
    if-le v3, v8, :cond_13

    .line 363
    .line 364
    const/16 v4, 0x10

    .line 365
    .line 366
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    const-string v8, "android.hardware.type.automotive"

    .line 371
    .line 372
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    const/16 v8, 0x402

    .line 377
    .line 378
    if-eqz v3, :cond_14

    .line 379
    .line 380
    invoke-static {v8, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    filled-new-array {v3}, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    :goto_a
    move-object v11, v3

    .line 389
    goto :goto_b

    .line 390
    :cond_14
    const/16 v3, 0x101

    .line 391
    .line 392
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    const/16 v11, 0x201

    .line 397
    .line 398
    invoke-static {v11, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    const/16 v12, 0x202

    .line 403
    .line 404
    invoke-static {v12, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 405
    .line 406
    .line 407
    move-result-object v12

    .line 408
    invoke-static {v8, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    const/16 v13, 0x404

    .line 413
    .line 414
    invoke-static {v13, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    filled-new-array {v3, v11, v12, v8, v4}, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    goto :goto_a

    .line 423
    :cond_15
    :goto_b
    array-length v3, v11

    .line 424
    const/4 v12, 0x0

    .line 425
    :goto_c
    if-ge v12, v3, :cond_18

    .line 426
    .line 427
    aget-object v4, v11, v12

    .line 428
    .line 429
    iget v8, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 430
    .line 431
    if-ne v8, v7, :cond_16

    .line 432
    .line 433
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 434
    .line 435
    if-ge v4, v2, :cond_17

    .line 436
    .line 437
    if-nez p3, :cond_16

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_16
    :goto_d
    const/16 v17, 0x1

    .line 441
    .line 442
    goto :goto_10

    .line 443
    :cond_17
    :goto_e
    sget-object v4, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 444
    .line 445
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-eqz v4, :cond_0

    .line 450
    .line 451
    if-ne v9, v7, :cond_0

    .line 452
    .line 453
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 454
    .line 455
    const-string v8, "sailfish"

    .line 456
    .line 457
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    if-nez v8, :cond_16

    .line 462
    .line 463
    const-string v8, "marlin"

    .line 464
    .line 465
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    if-eqz v4, :cond_0

    .line 470
    .line 471
    goto :goto_d

    .line 472
    :goto_f
    return v17

    .line 473
    :goto_10
    add-int/lit8 v12, v12, 0x1

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v3, "codec.profileLevel, "

    .line 479
    .line 480
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v1, v1, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v1, ", "

    .line 489
    .line 490
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    const/16 v16, 0x0

    .line 504
    .line 505
    return v16

    .line 506
    nop

    .line 507
    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_2
        -0x63185e82 -> :sswitch_1
        0x4f62373a -> :sswitch_0
    .end sparse-switch

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/media3/common/Format;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/flac"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget p1, p1, Landroidx/media3/common/Format;->M:I

    .line 12
    .line 13
    const/16 v0, 0x16

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, "c2.android.flac.decoder"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public final e(Landroid/content/Context;Landroidx/media3/common/Format;)Z
    .locals 6

    .line 1
    iget-object v0, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v2

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c(Landroid/content/Context;Landroidx/media3/common/Format;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d(Landroidx/media3/common/Format;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    :goto_1
    return v2

    .line 39
    :cond_3
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget p1, p2, Landroidx/media3/common/Format;->w:I

    .line 44
    .line 45
    if-lez p1, :cond_e

    .line 46
    .line 47
    iget v1, p2, Landroidx/media3/common/Format;->x:I

    .line 48
    .line 49
    if-gtz v1, :cond_4

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_4
    iget p2, p2, Landroidx/media3/common/Format;->B:F

    .line 54
    .line 55
    float-to-double v2, p2

    .line 56
    invoke-virtual {p0, p1, v1, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(IID)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_5
    iget p1, p2, Landroidx/media3/common/Format;->L:I

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 64
    .line 65
    const/4 v4, -0x1

    .line 66
    if-eq p1, v4, :cond_7

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-nez v5, :cond_6

    .line 73
    .line 74
    const-string p1, "sampleRate.aCaps"

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_6
    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_7

    .line 85
    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "sampleRate.support, "

    .line 89
    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_7
    iget p1, p2, Landroidx/media3/common/Format;->J:I

    .line 105
    .line 106
    if-eq p1, v4, :cond_e

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-nez p2, :cond_8

    .line 113
    .line 114
    const-string p1, "channelCount.aCaps"

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v2

    .line 120
    :cond_8
    invoke-virtual {p2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-gt p2, v0, :cond_d

    .line 125
    .line 126
    if-lez p2, :cond_9

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_9
    const-string v3, "audio/mpeg"

    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_d

    .line 137
    .line 138
    const-string v3, "audio/3gpp"

    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_d

    .line 145
    .line 146
    const-string v3, "audio/amr-wb"

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_d

    .line 153
    .line 154
    const-string v3, "audio/mp4a-latm"

    .line 155
    .line 156
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_d

    .line 161
    .line 162
    const-string v3, "audio/vorbis"

    .line 163
    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_d

    .line 169
    .line 170
    const-string v3, "audio/opus"

    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_d

    .line 177
    .line 178
    const-string v3, "audio/raw"

    .line 179
    .line 180
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_d

    .line 185
    .line 186
    const-string v3, "audio/flac"

    .line 187
    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_d

    .line 193
    .line 194
    const-string v3, "audio/g711-alaw"

    .line 195
    .line 196
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_d

    .line 201
    .line 202
    const-string v3, "audio/g711-mlaw"

    .line 203
    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-nez v3, :cond_d

    .line 209
    .line 210
    const-string v3, "audio/gsm"

    .line 211
    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_a

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_a
    const-string v3, "audio/ac3"

    .line 220
    .line 221
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    const/4 v1, 0x6

    .line 228
    goto :goto_2

    .line 229
    :cond_b
    const-string v3, "audio/eac3"

    .line 230
    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_c

    .line 236
    .line 237
    const/16 v1, 0x10

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_c
    const/16 v1, 0x1e

    .line 241
    .line 242
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v4, "AssumedMaxChannelAdjustment: "

    .line 245
    .line 246
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v4, ", ["

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string p2, " to "

    .line 263
    .line 264
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string p2, "]"

    .line 271
    .line 272
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    const-string v3, "MediaCodecInfo"

    .line 280
    .line 281
    invoke-static {v3, p2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    move p2, v1

    .line 285
    :cond_d
    :goto_3
    if-ge p2, p1, :cond_e

    .line 286
    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v0, "channelCount.support, "

    .line 290
    .line 291
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return v2

    .line 305
    :cond_e
    :goto_4
    return v0
.end method

.method public final f(Landroidx/media3/common/Format;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->d(Landroidx/media3/common/Format;)Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-boolean p1, p0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->c:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 19
    .line 20
    .line 21
    iget p0, p0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->a:I

    .line 22
    .line 23
    const/16 p1, 0x2a

    .line 24
    .line 25
    if-ne p0, p1, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final g(IID)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p1, "sizeAndRate.vCaps"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x1d

    .line 19
    .line 20
    const-string v4, "@"

    .line 21
    .line 22
    const-string v5, "x"

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    if-lt v2, v3, :cond_c

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    if-lt v2, v3, :cond_9

    .line 29
    .line 30
    sget-object v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->a:Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    invoke-static {v0}, Lz8;->g(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_9

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_2
    invoke-static {}, Lz8;->h()V

    .line 55
    .line 56
    .line 57
    double-to-int v8, p3

    .line 58
    invoke-static {p1, p2, v8}, Lz8;->d(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    move v9, v1

    .line 63
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-ge v9, v10, :cond_4

    .line 68
    .line 69
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-static {v10}, Lz8;->e(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-static {v10, v8}, Lz8;->r(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_3

    .line 82
    .line 83
    move v3, v7

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move v3, v6

    .line 89
    :goto_1
    if-ne v3, v6, :cond_a

    .line 90
    .line 91
    sget-object v8, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->a:Ljava/lang/Boolean;

    .line 92
    .line 93
    if-nez v8, :cond_a

    .line 94
    .line 95
    const/16 v8, 0x25

    .line 96
    .line 97
    if-lt v2, v8, :cond_6

    .line 98
    .line 99
    :cond_5
    move v2, v1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    invoke-static {v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->a(Z)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    const/16 v9, 0x23

    .line 106
    .line 107
    if-lt v2, v9, :cond_8

    .line 108
    .line 109
    if-ne v8, v6, :cond_5

    .line 110
    .line 111
    :cond_7
    :goto_2
    move v2, v6

    .line 112
    goto :goto_3

    .line 113
    :cond_8
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->a(Z)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-ne v2, v7, :cond_7

    .line 118
    .line 119
    if-ne v8, v6, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    sput-object v8, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->a:Ljava/lang/Boolean;

    .line 127
    .line 128
    if-eqz v2, :cond_a

    .line 129
    .line 130
    :cond_9
    :goto_4
    move v3, v1

    .line 131
    :cond_a
    if-ne v3, v7, :cond_b

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_b
    if-ne v3, v6, :cond_c

    .line 136
    .line 137
    const-string v0, "sizeAndRate.cover, "

    .line 138
    .line 139
    invoke-static {v0, p1, v5, p2, v4}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return v1

    .line 154
    :cond_c
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_10

    .line 159
    .line 160
    if-ge p1, p2, :cond_f

    .line 161
    .line 162
    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 163
    .line 164
    const-string v2, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 165
    .line 166
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_d

    .line 173
    .line 174
    const-string v2, "mcv5a"

    .line 175
    .line 176
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_d

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_d
    invoke-static {v0, p2, p1, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_e

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_e
    const-string v0, "sizeAndRate.rotated, "

    .line 193
    .line 194
    invoke-static {v0, p1, v5, p2, v4}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string p2, ", "

    .line 206
    .line 207
    const-string p3, "AssumedSupport ["

    .line 208
    .line 209
    const-string p4, "] ["

    .line 210
    .line 211
    invoke-static {p3, p1, p4, v3, p2}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p0, "]"

    .line 229
    .line 230
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const-string p1, "MediaCodecInfo"

    .line 238
    .line 239
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return v6

    .line 243
    :cond_f
    :goto_5
    const-string v0, "sizeAndRate.support, "

    .line 244
    .line 245
    invoke-static {v0, p1, v5, p2, v4}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return v1

    .line 260
    :cond_10
    :goto_6
    return v6
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NoSupport ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "] ["

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, "]"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "MediaCodecInfo"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
