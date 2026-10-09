.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;
.implements Landroidx/media3/exoplayer/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Landroidx/media3/datasource/StatsDataSource;

.field public final d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

.field public final e:Landroidx/media3/extractor/ExtractorOutput;

.field public final f:Landroidx/media3/common/util/ConditionVariable;

.field public final g:Landroidx/media3/extractor/PositionHolder;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Landroidx/media3/datasource/DataSpec;

.field public l:Landroidx/media3/extractor/TrackOutput;

.field public m:Z

.field public final synthetic n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->b:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p1, Landroidx/media3/datasource/StatsDataSource;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 14
    .line 15
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 16
    .line 17
    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->e:Landroidx/media3/extractor/ExtractorOutput;

    .line 18
    .line 19
    iput-object p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->f:Landroidx/media3/common/util/ConditionVariable;

    .line 20
    .line 21
    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    .line 30
    .line 31
    sget-object p1, Landroidx/media3/exoplayer/source/LoadEventInfo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    .line 38
    .line 39
    const-wide/16 p1, 0x0

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c(JLjava/lang/String;)Landroidx/media3/datasource/DataSpec;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v0

    .line 6
    move-object v4, v2

    .line 7
    :catch_0
    :cond_0
    :goto_0
    if-nez v3, :cond_10

    .line 8
    .line 9
    iget-boolean v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->h:Z

    .line 10
    .line 11
    if-nez v5, :cond_10

    .line 12
    .line 13
    const-wide/16 v5, -0x1

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    :try_start_0
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 17
    .line 18
    iget-wide v13, v8, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 19
    .line 20
    invoke-virtual {v1, v13, v14, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c(JLjava/lang/String;)Landroidx/media3/datasource/DataSpec;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    .line 25
    .line 26
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 27
    .line 28
    invoke-virtual {v8, v4}, Landroidx/media3/datasource/StatsDataSource;->l(Landroidx/media3/datasource/DataSpec;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    iget-boolean v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    if-ne v3, v7, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 40
    .line 41
    check-cast v0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    cmp-long v0, v2, v5

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 52
    .line 53
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 54
    .line 55
    check-cast v2, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v0, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 62
    .line 63
    :cond_2
    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 64
    .line 65
    if-eqz v0, :cond_10

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 68
    .line 69
    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :cond_3
    :try_start_2
    iget-object v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 73
    .line 74
    iget-object v4, v4, Landroidx/media3/datasource/StatsDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 75
    .line 76
    invoke-interface {v4}, Landroidx/media3/datasource/DataSource;->i()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v10, "ETag"

    .line 81
    .line 82
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/util/List;

    .line 87
    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-nez v10, :cond_4

    .line 95
    .line 96
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_9

    .line 105
    .line 106
    :cond_4
    move-object v4, v2

    .line 107
    :goto_2
    cmp-long v10, v8, v5

    .line 108
    .line 109
    if-eqz v10, :cond_5

    .line 110
    .line 111
    add-long/2addr v8, v13

    .line 112
    iget-object v10, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 113
    .line 114
    iget-object v11, v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 115
    .line 116
    new-instance v12, Landroidx/media3/exoplayer/source/b;

    .line 117
    .line 118
    const/4 v15, 0x2

    .line 119
    invoke-direct {v12, v10, v15}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    move-wide v15, v8

    .line 126
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 127
    .line 128
    iget-object v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 129
    .line 130
    iget-object v9, v9, Landroidx/media3/datasource/StatsDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 131
    .line 132
    invoke-interface {v9}, Landroidx/media3/datasource/DataSource;->i()Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-static {v9}, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->d(Ljava/util/Map;)Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    iput-object v9, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 141
    .line 142
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 143
    .line 144
    iget-object v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 145
    .line 146
    iget-object v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 147
    .line 148
    if-eqz v9, :cond_6

    .line 149
    .line 150
    iget v9, v9, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->f:I

    .line 151
    .line 152
    const/4 v10, -0x1

    .line 153
    if-eq v9, v10, :cond_6

    .line 154
    .line 155
    new-instance v10, Landroidx/media3/exoplayer/source/IcyDataSource;

    .line 156
    .line 157
    invoke-direct {v10, v8, v9, v1}, Landroidx/media3/exoplayer/source/IcyDataSource;-><init>(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/source/IcyDataSource$Listener;)V

    .line 158
    .line 159
    .line 160
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 161
    .line 162
    new-instance v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 163
    .line 164
    invoke-direct {v9, v0, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v9}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    iput-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->l:Landroidx/media3/extractor/TrackOutput;

    .line 172
    .line 173
    sget-object v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->c0:Landroidx/media3/common/Format;

    .line 174
    .line 175
    invoke-interface {v8, v9}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move-object v10, v8

    .line 180
    :goto_3
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 181
    .line 182
    iget-object v11, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->b:Landroid/net/Uri;

    .line 183
    .line 184
    iget-object v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 185
    .line 186
    iget-object v9, v9, Landroidx/media3/datasource/StatsDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 187
    .line 188
    invoke-interface {v9}, Landroidx/media3/datasource/DataSource;->i()Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    iget-object v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->e:Landroidx/media3/extractor/ExtractorOutput;

    .line 193
    .line 194
    check-cast v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 195
    .line 196
    move-object/from16 v17, v9

    .line 197
    .line 198
    move-object v9, v8

    .line 199
    invoke-virtual/range {v9 .. v17}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V

    .line 200
    .line 201
    .line 202
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 203
    .line 204
    iget-object v8, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 205
    .line 206
    if-eqz v8, :cond_8

    .line 207
    .line 208
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 209
    .line 210
    check-cast v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 211
    .line 212
    iget-object v8, v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    .line 213
    .line 214
    if-nez v8, :cond_7

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_7
    instance-of v9, v8, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 218
    .line 219
    if-eqz v9, :cond_8

    .line 220
    .line 221
    check-cast v8, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 222
    .line 223
    iput-boolean v7, v8, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:Z

    .line 224
    .line 225
    :cond_8
    :goto_4
    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    .line 226
    .line 227
    if-eqz v8, :cond_9

    .line 228
    .line 229
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 230
    .line 231
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 232
    .line 233
    check-cast v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 234
    .line 235
    iget-object v8, v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-interface {v8, v13, v14, v9, v10}, Landroidx/media3/extractor/Extractor;->c(JJ)V

    .line 241
    .line 242
    .line 243
    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    .line 244
    .line 245
    :cond_9
    :goto_5
    if-nez v3, :cond_b

    .line 246
    .line 247
    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .line 249
    if-nez v8, :cond_b

    .line 250
    .line 251
    :try_start_3
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->f:Landroidx/media3/common/util/ConditionVariable;

    .line 252
    .line 253
    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :goto_6
    :try_start_4
    iget-boolean v9, v8, Landroidx/media3/common/util/ConditionVariable;->b:Z

    .line 255
    .line 256
    if-nez v9, :cond_a

    .line 257
    .line 258
    iget-object v9, v8, Landroidx/media3/common/util/ConditionVariable;->a:Landroidx/media3/common/util/Clock;

    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :catchall_1
    move-exception v0

    .line 268
    goto :goto_7

    .line 269
    :cond_a
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    :try_start_6
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 271
    .line 272
    iget-object v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 273
    .line 274
    check-cast v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 275
    .line 276
    iget-object v10, v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    .line 277
    .line 278
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    iget-object v8, v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-interface {v10, v8, v9}, Landroidx/media3/extractor/Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 291
    .line 292
    check-cast v8, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 293
    .line 294
    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 295
    .line 296
    .line 297
    move-result-wide v8

    .line 298
    iget-object v10, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 299
    .line 300
    iget-wide v10, v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:J

    .line 301
    .line 302
    add-long/2addr v10, v13

    .line 303
    cmp-long v10, v8, v10

    .line 304
    .line 305
    if-lez v10, :cond_9

    .line 306
    .line 307
    iget-object v10, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->f:Landroidx/media3/common/util/ConditionVariable;

    .line 308
    .line 309
    monitor-enter v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 310
    :try_start_7
    iput-boolean v0, v10, Landroidx/media3/common/util/ConditionVariable;->b:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 311
    .line 312
    :try_start_8
    monitor-exit v10

    .line 313
    iget-object v10, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 314
    .line 315
    iget-object v11, v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 316
    .line 317
    iget-object v10, v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:Landroidx/media3/exoplayer/source/b;

    .line 318
    .line 319
    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 320
    .line 321
    .line 322
    move-wide v13, v8

    .line 323
    goto :goto_5

    .line 324
    :catchall_2
    move-exception v0

    .line 325
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 326
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 327
    :goto_7
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 328
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 329
    :catch_1
    :try_start_d
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 330
    .line 331
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 332
    .line 333
    .line 334
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 335
    :cond_b
    if-ne v3, v7, :cond_c

    .line 336
    .line 337
    move v3, v0

    .line 338
    goto :goto_8

    .line 339
    :cond_c
    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 340
    .line 341
    check-cast v7, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 342
    .line 343
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 344
    .line 345
    .line 346
    move-result-wide v7

    .line 347
    cmp-long v5, v7, v5

    .line 348
    .line 349
    if-eqz v5, :cond_d

    .line 350
    .line 351
    iget-object v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 352
    .line 353
    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 354
    .line 355
    check-cast v6, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 356
    .line 357
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    iput-wide v6, v5, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 362
    .line 363
    :cond_d
    :goto_8
    iget-object v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 364
    .line 365
    if-eqz v5, :cond_0

    .line 366
    .line 367
    :try_start_e
    invoke-virtual {v5}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :goto_9
    if-eq v3, v7, :cond_e

    .line 373
    .line 374
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 375
    .line 376
    check-cast v2, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 377
    .line 378
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 379
    .line 380
    .line 381
    move-result-wide v2

    .line 382
    cmp-long v2, v2, v5

    .line 383
    .line 384
    if-eqz v2, :cond_e

    .line 385
    .line 386
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 387
    .line 388
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->d:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 389
    .line 390
    check-cast v3, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 391
    .line 392
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a()J

    .line 393
    .line 394
    .line 395
    move-result-wide v3

    .line 396
    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 397
    .line 398
    :cond_e
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 399
    .line 400
    if-eqz v1, :cond_f

    .line 401
    .line 402
    :try_start_f
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 403
    .line 404
    .line 405
    :catch_2
    :cond_f
    throw v0

    .line 406
    :catch_3
    :cond_10
    :goto_a
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public final c(JLjava/lang/String;)Landroidx/media3/datasource/DataSpec;
    .locals 10

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->b0:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string v1, "W/"

    .line 6
    .line 7
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->c(Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "If-Range"

    .line 29
    .line 30
    invoke-virtual {v1, v0, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {v1, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    new-instance p3, Landroidx/media3/datasource/DataSpec$Builder;

    .line 39
    .line 40
    invoke-direct {p3}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->b:Landroid/net/Uri;

    .line 44
    .line 45
    iput-object p0, p3, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    .line 46
    .line 47
    iput-wide p1, p3, Landroidx/media3/datasource/DataSpec$Builder;->d:J

    .line 48
    .line 49
    const/4 p0, 0x6

    .line 50
    iput p0, p3, Landroidx/media3/datasource/DataSpec$Builder;->f:I

    .line 51
    .line 52
    iput-object v0, p3, Landroidx/media3/datasource/DataSpec$Builder;->c:Ljava/util/Map;

    .line 53
    .line 54
    iget-object p0, p3, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    .line 55
    .line 56
    const-string p1, "The uri must be set."

    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/google/common/base/Preconditions;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroidx/media3/datasource/DataSpec;

    .line 62
    .line 63
    iget-object v1, p3, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    .line 64
    .line 65
    iget-object v4, p3, Landroidx/media3/datasource/DataSpec$Builder;->c:Ljava/util/Map;

    .line 66
    .line 67
    iget-wide v5, p3, Landroidx/media3/datasource/DataSpec$Builder;->d:J

    .line 68
    .line 69
    iget-wide v7, p3, Landroidx/media3/datasource/DataSpec$Builder;->e:J

    .line 70
    .line 71
    iget v9, p3, Landroidx/media3/datasource/DataSpec$Builder;->f:I

    .line 72
    .line 73
    iget v2, p3, Landroidx/media3/datasource/DataSpec$Builder;->b:I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-direct/range {v0 .. v9}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJI)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method
