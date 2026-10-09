.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field public static final c:[I

.field public static final d:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field public static final e:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field public a:Lcom/google/common/collect/ImmutableList;

.field public final b:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:[I

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 11
    .line 12
    new-instance v1, Lf7;

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lf7;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 23
    .line 24
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 25
    .line 26
    new-instance v1, Lf7;

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lf7;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->e:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->b:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->b:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    goto :goto_0

    .line 8
    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/avif/AvifExtractor;

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/extractor/avif/AvifExtractor;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    new-instance p0, Landroidx/media3/extractor/heif/HeifExtractor;

    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/media3/extractor/heif/HeifExtractor;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/bmp/BmpExtractor;

    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/webp/WebpExtractor;

    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/media3/extractor/webp/WebpExtractor;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    new-instance p0, Landroidx/media3/extractor/png/PngExtractor;

    .line 45
    .line 46
    invoke-direct {p0}, Landroidx/media3/extractor/png/PngExtractor;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_6
    new-instance p0, Landroidx/media3/extractor/avi/AviExtractor;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Landroidx/media3/extractor/avi/AviExtractor;-><init>(Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_7
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->e:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 63
    .line 64
    new-array p1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->a([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_0

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_8
    new-instance p0, Landroidx/media3/extractor/jpeg/JpegExtractor;

    .line 77
    .line 78
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_9
    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    .line 86
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    iput v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 91
    .line 92
    const-wide/16 v0, -0x1

    .line 93
    .line 94
    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->d:J

    .line 95
    .line 96
    const/4 p1, -0x1

    .line 97
    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    .line 98
    .line 99
    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 100
    .line 101
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_a
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->a:Lcom/google/common/collect/ImmutableList;

    .line 106
    .line 107
    if-nez p1, :cond_1

    .line 108
    .line 109
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->a:Lcom/google/common/collect/ImmutableList;

    .line 114
    .line 115
    :cond_1
    new-instance p1, Landroidx/media3/extractor/ts/TsExtractor;

    .line 116
    .line 117
    new-instance v2, Landroidx/media3/common/util/TimestampAdjuster;

    .line 118
    .line 119
    const-wide/16 v3, 0x0

    .line 120
    .line 121
    invoke-direct {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 122
    .line 123
    .line 124
    new-instance v3, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    .line 125
    .line 126
    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->a:Lcom/google/common/collect/ImmutableList;

    .line 127
    .line 128
    invoke-direct {v3, p0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, v1, v0, v2, v3}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_b
    new-instance p0, Landroidx/media3/extractor/ts/PsExtractor;

    .line 139
    .line 140
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_c
    new-instance p0, Landroidx/media3/extractor/ogg/OggExtractor;

    .line 148
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_d
    new-instance p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 157
    .line 158
    const/16 p1, 0x2c0

    .line 159
    .line 160
    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance p0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 167
    .line 168
    const/16 p1, 0xa0

    .line 169
    .line 170
    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_e
    new-instance p0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 178
    .line 179
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_f
    new-instance p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 187
    .line 188
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_10
    new-instance p0, Landroidx/media3/extractor/flv/FlvExtractor;

    .line 196
    .line 197
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 213
    .line 214
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->a([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    if-eqz p0, :cond_2

    .line 219
    .line 220
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_2
    new-instance p0, Landroidx/media3/extractor/flac/FlacExtractor;

    .line 225
    .line 226
    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_12
    new-instance p0, Landroidx/media3/extractor/amr/AmrExtractor;

    .line 234
    .line 235
    invoke-direct {p0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_13
    new-instance p0, Landroidx/media3/extractor/ts/AdtsExtractor;

    .line 243
    .line 244
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_14
    new-instance p0, Landroidx/media3/extractor/ts/Ac4Extractor;

    .line 252
    .line 253
    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_15
    new-instance p0, Landroidx/media3/extractor/ts/Ac3Extractor;

    .line 261
    .line 262
    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
