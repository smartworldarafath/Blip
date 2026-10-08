.class public final Landroidx/media3/extractor/text/vobsub/VobsubParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
    }
.end annotation


# static fields
.field public static final e:Landroidx/media3/extractor/text/CuesWithTiming;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->e:Landroidx/media3/extractor/text/CuesWithTiming;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

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
    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    new-instance v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->c:Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    .line 24
    .line 25
    new-instance p0, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [B

    .line 33
    .line 34
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-direct {p0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 44
    .line 45
    const-string p1, "\\r?\\n"

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    array-length p1, p0

    .line 53
    move v3, v1

    .line 54
    :goto_0
    if-ge v3, p1, :cond_3

    .line 55
    .line 56
    aget-object v4, p0, v3

    .line 57
    .line 58
    const-string v5, "palette: "

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const-string v6, "VobsubParser"

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    const/16 v5, 0x9

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, ","

    .line 75
    .line 76
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    array-length v5, v4

    .line 81
    new-array v5, v5, [I

    .line 82
    .line 83
    iput-object v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 84
    .line 85
    move v5, v1

    .line 86
    :goto_1
    array-length v7, v4

    .line 87
    if-ge v5, v7, :cond_2

    .line 88
    .line 89
    iget-object v7, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 90
    .line 91
    aget-object v8, v4, v5

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const/16 v9, 0x10

    .line 98
    .line 99
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_2

    .line 104
    :catch_0
    move-exception v8

    .line 105
    const-string v9, "Parsing color failed"

    .line 106
    .line 107
    invoke-static {v6, v9, v8}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    move v8, v1

    .line 111
    :goto_2
    aput v8, v7, v5

    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    const-string v5, "size: "

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    const/4 v5, 0x6

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const-string v7, "x"

    .line 134
    .line 135
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    array-length v7, v5

    .line 140
    const/4 v8, 0x2

    .line 141
    if-eq v7, v8, :cond_1

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v7, "Ignoring malformed IDX size line: \'"

    .line 146
    .line 147
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, "\'"

    .line 154
    .line 155
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v6, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_1
    :try_start_1
    aget-object v4, v5, v1

    .line 167
    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iput v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->g:I

    .line 173
    .line 174
    const/4 v4, 0x1

    .line 175
    aget-object v5, v5, v4

    .line 176
    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iput v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->h:I

    .line 182
    .line 183
    iput-boolean v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->d:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catch_1
    move-exception v4

    .line 187
    const-string v5, "Parsing IDX failed"

    .line 188
    .line 189
    invoke-static {v6, v5, v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_3
    return-void
.end method


# virtual methods
.method public final b([BIILandroidx/media3/common/util/Consumer;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int v2, v1, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->d:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/util/zip/Inflater;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->d:Ljava/util/zip/Inflater;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->d:Ljava/util/zip/Inflater;

    .line 29
    .line 30
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/16 v4, 0x78

    .line 43
    .line 44
    if-ne v2, v4, :cond_1

    .line 45
    .line 46
    iget-object v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 47
    .line 48
    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->y(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 55
    .line 56
    iget v2, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 57
    .line 58
    invoke-virtual {v3, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->c:Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    .line 62
    .line 63
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    .line 69
    .line 70
    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    iput-boolean v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    iput-object v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    .line 77
    .line 78
    const/4 v6, -0x1

    .line 79
    iput v6, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    .line 80
    .line 81
    iput v6, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    .line 82
    .line 83
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/4 v8, 0x2

    .line 88
    if-lt v7, v8, :cond_16

    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eq v9, v7, :cond_2

    .line 95
    .line 96
    goto/16 :goto_10

    .line 97
    .line 98
    :cond_2
    iget-object v7, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 99
    .line 100
    const/4 v9, 0x1

    .line 101
    const-string v10, "VobsubParser"

    .line 102
    .line 103
    if-nez v7, :cond_3

    .line 104
    .line 105
    const-string v7, "Skipping SPU (no palette)"

    .line 106
    .line 107
    invoke-static {v10, v7}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    move-wide/from16 p0, v1

    .line 111
    .line 112
    move/from16 p3, v4

    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_3
    iget-boolean v7, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->d:Z

    .line 117
    .line 118
    if-nez v7, :cond_4

    .line 119
    .line 120
    const-string v7, "Skipping SPU (no plane)"

    .line 121
    .line 122
    invoke-static {v10, v7}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    iget v7, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 127
    .line 128
    sub-int/2addr v7, v8

    .line 129
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    add-int/2addr v11, v7

    .line 134
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    const/4 v12, 0x4

    .line 142
    if-ge v11, v12, :cond_5

    .line 143
    .line 144
    move-wide/from16 p0, v1

    .line 145
    .line 146
    move/from16 p3, v4

    .line 147
    .line 148
    move/from16 v11, p3

    .line 149
    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_5
    iget v11, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    mul-int/lit16 v13, v13, 0x2710

    .line 159
    .line 160
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    add-int/2addr v14, v7

    .line 165
    if-eq v14, v11, :cond_6

    .line 166
    .line 167
    iget v11, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 168
    .line 169
    if-ge v14, v11, :cond_6

    .line 170
    .line 171
    move v11, v9

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    move v11, v4

    .line 174
    :goto_2
    if-eqz v11, :cond_7

    .line 175
    .line 176
    move v15, v14

    .line 177
    goto :goto_3

    .line 178
    :cond_7
    iget v15, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 179
    .line 180
    :goto_3
    move-wide/from16 p0, v1

    .line 181
    .line 182
    move/from16 v16, v9

    .line 183
    .line 184
    :goto_4
    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 185
    .line 186
    if-ge v1, v15, :cond_e

    .line 187
    .line 188
    if-eqz v16, :cond_e

    .line 189
    .line 190
    int-to-long v1, v13

    .line 191
    iget-object v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a:[I

    .line 192
    .line 193
    move/from16 p3, v4

    .line 194
    .line 195
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    const/16 v6, 0xff

    .line 200
    .line 201
    if-eq v4, v6, :cond_8

    .line 202
    .line 203
    const/4 v6, 0x3

    .line 204
    packed-switch v4, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    const-string v1, "Unrecognized command: "

    .line 208
    .line 209
    invoke-static {v1, v4, v10}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    :goto_5
    move/from16 v1, p3

    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :pswitch_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-ge v1, v12, :cond_9

    .line 221
    .line 222
    const-string v1, "Incomplete offsets command"

    .line 223
    .line 224
    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    iput v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    .line 233
    .line 234
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    iput v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    .line 239
    .line 240
    :goto_6
    :pswitch_1
    move v1, v9

    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :pswitch_2
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    const/4 v2, 0x6

    .line 248
    if-ge v1, v2, :cond_a

    .line 249
    .line 250
    const-string v1, "Incomplete area command"

    .line 251
    .line 252
    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    shl-int/2addr v1, v12

    .line 269
    shr-int/lit8 v5, v2, 0x4

    .line 270
    .line 271
    or-int/2addr v1, v5

    .line 272
    and-int/lit8 v2, v2, 0xf

    .line 273
    .line 274
    shl-int/lit8 v2, v2, 0x8

    .line 275
    .line 276
    or-int/2addr v2, v4

    .line 277
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    shl-int/2addr v4, v12

    .line 290
    shr-int/lit8 v17, v5, 0x4

    .line 291
    .line 292
    or-int v4, v4, v17

    .line 293
    .line 294
    and-int/lit8 v5, v5, 0xf

    .line 295
    .line 296
    shl-int/lit8 v5, v5, 0x8

    .line 297
    .line 298
    or-int/2addr v5, v6

    .line 299
    new-instance v6, Landroid/graphics/Rect;

    .line 300
    .line 301
    add-int/2addr v2, v9

    .line 302
    add-int/2addr v5, v9

    .line 303
    invoke-direct {v6, v1, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    .line 305
    .line 306
    iput-object v6, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :pswitch_3
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-ge v1, v8, :cond_b

    .line 314
    .line 315
    const-string v1, "Incomplete alpha command"

    .line 316
    .line 317
    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_b
    iget-boolean v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    .line 322
    .line 323
    if-nez v1, :cond_c

    .line 324
    .line 325
    const-string v1, "Ignoring alpha command before color command"

    .line 326
    .line 327
    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    aget v4, v5, v6

    .line 340
    .line 341
    move/from16 v17, v6

    .line 342
    .line 343
    shr-int/lit8 v6, v1, 0x4

    .line 344
    .line 345
    invoke-static {v4, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    aput v4, v5, v17

    .line 350
    .line 351
    aget v4, v5, v8

    .line 352
    .line 353
    and-int/lit8 v1, v1, 0xf

    .line 354
    .line 355
    invoke-static {v4, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    aput v1, v5, v8

    .line 360
    .line 361
    aget v1, v5, v9

    .line 362
    .line 363
    shr-int/lit8 v4, v2, 0x4

    .line 364
    .line 365
    invoke-static {v1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    aput v1, v5, v9

    .line 370
    .line 371
    aget v1, v5, p3

    .line 372
    .line 373
    and-int/lit8 v2, v2, 0xf

    .line 374
    .line 375
    invoke-static {v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    aput v1, v5, p3

    .line 380
    .line 381
    goto/16 :goto_6

    .line 382
    .line 383
    :pswitch_4
    move/from16 v17, v6

    .line 384
    .line 385
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-ge v1, v8, :cond_d

    .line 390
    .line 391
    const-string v1, "Incomplete color command"

    .line 392
    .line 393
    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_5

    .line 397
    .line 398
    :cond_d
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    iget-object v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 407
    .line 408
    shr-int/lit8 v6, v1, 0x4

    .line 409
    .line 410
    invoke-static {v4, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a([II)I

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    aput v4, v5, v17

    .line 415
    .line 416
    iget-object v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 417
    .line 418
    and-int/lit8 v1, v1, 0xf

    .line 419
    .line 420
    invoke-static {v4, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a([II)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    aput v1, v5, v8

    .line 425
    .line 426
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 427
    .line 428
    shr-int/lit8 v4, v2, 0x4

    .line 429
    .line 430
    invoke-static {v1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a([II)I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    aput v1, v5, v9

    .line 435
    .line 436
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 437
    .line 438
    and-int/lit8 v2, v2, 0xf

    .line 439
    .line 440
    invoke-static {v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a([II)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    aput v1, v5, p3

    .line 445
    .line 446
    iput-boolean v9, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    .line 447
    .line 448
    goto/16 :goto_6

    .line 449
    .line 450
    :pswitch_5
    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    .line 451
    .line 452
    goto/16 :goto_6

    .line 453
    .line 454
    :pswitch_6
    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    .line 455
    .line 456
    goto/16 :goto_6

    .line 457
    .line 458
    :goto_7
    move/from16 v4, p3

    .line 459
    .line 460
    move/from16 v16, v1

    .line 461
    .line 462
    const/4 v5, 0x0

    .line 463
    const/4 v6, -0x1

    .line 464
    goto/16 :goto_4

    .line 465
    .line 466
    :cond_e
    move/from16 p3, v4

    .line 467
    .line 468
    if-eqz v11, :cond_f

    .line 469
    .line 470
    invoke-virtual {v3, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 471
    .line 472
    .line 473
    :cond_f
    :goto_8
    if-nez v11, :cond_15

    .line 474
    .line 475
    :goto_9
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    .line 476
    .line 477
    if-eqz v1, :cond_10

    .line 478
    .line 479
    iget-boolean v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->d:Z

    .line 480
    .line 481
    if-eqz v1, :cond_10

    .line 482
    .line 483
    iget-boolean v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    .line 484
    .line 485
    if-eqz v1, :cond_10

    .line 486
    .line 487
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    .line 488
    .line 489
    if-eqz v1, :cond_10

    .line 490
    .line 491
    iget v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    .line 492
    .line 493
    const/4 v4, -0x1

    .line 494
    if-eq v2, v4, :cond_10

    .line 495
    .line 496
    iget v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    .line 497
    .line 498
    if-eq v2, v4, :cond_10

    .line 499
    .line 500
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-lt v1, v8, :cond_10

    .line 505
    .line 506
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    .line 507
    .line 508
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-ge v1, v8, :cond_11

    .line 513
    .line 514
    :cond_10
    const/4 v2, 0x0

    .line 515
    goto :goto_a

    .line 516
    :cond_11
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    .line 517
    .line 518
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    mul-int/2addr v4, v2

    .line 527
    new-array v2, v4, [I

    .line 528
    .line 529
    new-instance v4, Landroidx/media3/common/util/ParsableBitArray;

    .line 530
    .line 531
    invoke-direct {v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 532
    .line 533
    .line 534
    iget v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    .line 535
    .line 536
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v4, v9, v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 543
    .line 544
    .line 545
    iget v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    .line 546
    .line 547
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 551
    .line 552
    .line 553
    move/from16 v3, p3

    .line 554
    .line 555
    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 567
    .line 568
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    new-instance v3, Landroidx/media3/common/text/Cue$Builder;

    .line 573
    .line 574
    invoke-direct {v3}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 575
    .line 576
    .line 577
    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 578
    .line 579
    const/4 v2, 0x0

    .line 580
    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 581
    .line 582
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 583
    .line 584
    int-to-float v2, v2

    .line 585
    iget v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->g:I

    .line 586
    .line 587
    int-to-float v4, v4

    .line 588
    div-float/2addr v2, v4

    .line 589
    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 590
    .line 591
    const/4 v5, 0x0

    .line 592
    iput v5, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 593
    .line 594
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 595
    .line 596
    int-to-float v2, v2

    .line 597
    iget v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->h:I

    .line 598
    .line 599
    int-to-float v4, v4

    .line 600
    div-float/2addr v2, v4

    .line 601
    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 602
    .line 603
    iput v5, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 604
    .line 605
    iput v5, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 606
    .line 607
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    int-to-float v2, v2

    .line 612
    iget v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->g:I

    .line 613
    .line 614
    int-to-float v4, v4

    .line 615
    div-float/2addr v2, v4

    .line 616
    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->l:F

    .line 617
    .line 618
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    int-to-float v1, v1

    .line 623
    iget v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->h:I

    .line 624
    .line 625
    int-to-float v2, v2

    .line 626
    div-float/2addr v1, v2

    .line 627
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->m:F

    .line 628
    .line 629
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    goto :goto_b

    .line 634
    :goto_a
    move-object v5, v2

    .line 635
    :goto_b
    iget-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    .line 636
    .line 637
    cmp-long v3, v1, p0

    .line 638
    .line 639
    if-eqz v3, :cond_13

    .line 640
    .line 641
    iget-wide v3, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    .line 642
    .line 643
    cmp-long v6, v3, p0

    .line 644
    .line 645
    if-eqz v6, :cond_12

    .line 646
    .line 647
    cmp-long v6, v1, v3

    .line 648
    .line 649
    if-lez v6, :cond_12

    .line 650
    .line 651
    sub-long/2addr v1, v3

    .line 652
    :cond_12
    move-wide v9, v1

    .line 653
    goto :goto_c

    .line 654
    :cond_13
    move-wide/from16 v9, p0

    .line 655
    .line 656
    :goto_c
    new-instance v6, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 657
    .line 658
    if-eqz v5, :cond_14

    .line 659
    .line 660
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    :goto_d
    move-object v11, v1

    .line 665
    goto :goto_e

    .line 666
    :cond_14
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    goto :goto_d

    .line 671
    :goto_e
    iget-wide v7, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    .line 672
    .line 673
    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 674
    .line 675
    .line 676
    :goto_f
    move-object/from16 v0, p4

    .line 677
    .line 678
    goto :goto_11

    .line 679
    :cond_15
    const/4 v5, 0x0

    .line 680
    const/4 v6, -0x1

    .line 681
    move-wide/from16 v1, p0

    .line 682
    .line 683
    move/from16 v4, p3

    .line 684
    .line 685
    goto/16 :goto_1

    .line 686
    .line 687
    :cond_16
    :goto_10
    sget-object v6, Landroidx/media3/extractor/text/vobsub/VobsubParser;->e:Landroidx/media3/extractor/text/CuesWithTiming;

    .line 688
    .line 689
    goto :goto_f

    .line 690
    :goto_11
    invoke-interface {v0, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    nop

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
