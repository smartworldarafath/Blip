.class public final Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b([BIILandroidx/media3/common/util/Consumer;)V
    .locals 11

    .line 1
    add-int/2addr p3, p2

    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    invoke-virtual {p0, p3, p1}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 8
    .line 9
    .line 10
    new-instance v5, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_8

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x0

    .line 26
    const/4 p3, 0x1

    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    if-lt p1, v0, :cond_0

    .line 30
    .line 31
    move p1, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move p1, p2

    .line 34
    :goto_1
    const-string v1, "Incomplete Mp4Webvtt Top Level box header found."

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->d(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const v2, 0x76747463

    .line 48
    .line 49
    .line 50
    if-ne v1, v2, :cond_7

    .line 51
    .line 52
    add-int/lit8 p1, p1, -0x8

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    move-object v2, v1

    .line 56
    move-object v3, v2

    .line 57
    :cond_1
    :goto_2
    if-lez p1, :cond_4

    .line 58
    .line 59
    if-lt p1, v0, :cond_2

    .line 60
    .line 61
    move v4, p3

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    move v4, p2

    .line 64
    :goto_3
    const-string v6, "Incomplete vtt cue box header found."

    .line 65
    .line 66
    invoke-static {v6, v4}, Lcom/google/common/base/Preconditions;->d(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    add-int/lit8 p1, p1, -0x8

    .line 78
    .line 79
    sub-int/2addr v4, v0

    .line 80
    iget-object v7, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 81
    .line 82
    iget v8, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 83
    .line 84
    sget-object v9, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v9, Ljava/lang/String;

    .line 87
    .line 88
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    .line 90
    invoke-direct {v9, v7, v8, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 94
    .line 95
    .line 96
    sub-int/2addr p1, v4

    .line 97
    const v4, 0x73747467

    .line 98
    .line 99
    .line 100
    if-ne v6, v4, :cond_3

    .line 101
    .line 102
    new-instance v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v9, v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->e(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->a()Landroidx/media3/common/text/Cue$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const v4, 0x7061796c

    .line 116
    .line 117
    .line 118
    if-ne v6, v4, :cond_1

    .line 119
    .line 120
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {v1, v2, v4}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    if-nez v2, :cond_5

    .line 132
    .line 133
    const-string v2, ""

    .line 134
    .line 135
    :cond_5
    if-eqz v3, :cond_6

    .line 136
    .line 137
    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 138
    .line 139
    iput-object v1, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    sget-object p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->a:Ljava/util/regex/Pattern;

    .line 147
    .line 148
    new-instance p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 149
    .line 150
    invoke-direct {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->c:Ljava/lang/CharSequence;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->a()Landroidx/media3/common/text/Cue$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_4
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    add-int/lit8 p1, p1, -0x8

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_8
    new-instance v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 176
    .line 177
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p4, v0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method
