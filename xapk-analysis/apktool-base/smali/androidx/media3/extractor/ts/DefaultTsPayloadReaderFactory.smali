.class public final Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->c:[B

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->a:Ljava/util/List;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-lez p1, :cond_6

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 25
    .line 26
    add-int/2addr v2, v1

    .line 27
    const/16 v1, 0x86

    .line 28
    .line 29
    if-ne p1, v1, :cond_5

    .line 30
    .line 31
    new-instance p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    and-int/lit8 p1, p1, 0x1f

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    move v3, v1

    .line 44
    :goto_1
    if-ge v3, p1, :cond_5

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    and-int/lit16 v6, v5, 0x80

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    move v6, v7

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    move v6, v1

    .line 65
    :goto_2
    if-eqz v6, :cond_1

    .line 66
    .line 67
    and-int/lit8 v5, v5, 0x3f

    .line 68
    .line 69
    const-string v8, "application/cea-708"

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_1
    const-string v8, "application/cea-608"

    .line 73
    .line 74
    move v5, v7

    .line 75
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    int-to-byte v9, v9

    .line 80
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 81
    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    and-int/lit8 v6, v9, 0x40

    .line 86
    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    move v6, v7

    .line 90
    goto :goto_4

    .line 91
    :cond_2
    move v6, v1

    .line 92
    :goto_4
    sget-object v9, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 93
    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    new-array v6, v7, [B

    .line 97
    .line 98
    aput-byte v7, v6, v1

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_3
    new-array v6, v7, [B

    .line 102
    .line 103
    aput-byte v1, v6, v1

    .line 104
    .line 105
    :goto_5
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    goto :goto_6

    .line 110
    :cond_4
    const/4 v6, 0x0

    .line 111
    :goto_6
    new-instance v7, Landroidx/media3/common/Format$Builder;

    .line 112
    .line 113
    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    iput-object v8, v7, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v4, v7, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 123
    .line 124
    iput v5, v7, Landroidx/media3/common/Format$Builder;->O:I

    .line 125
    .line 126
    iput-object v6, v7, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 127
    .line 128
    new-instance v4, Landroidx/media3/common/Format;

    .line 129
    .line 130
    invoke-direct {v4, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_6
    return-object p0
.end method
