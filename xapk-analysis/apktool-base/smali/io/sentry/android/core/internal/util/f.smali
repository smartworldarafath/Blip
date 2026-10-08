.class public final synthetic Lio/sentry/android/core/internal/util/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public final synthetic b:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/internal/util/f;->a:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/internal/util/f;->b:Lio/sentry/android/core/BuildInfoProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lio/sentry/android/core/internal/util/f;->a:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 6
    .line 7
    iget-object v3, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->w:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-object v0, v0, Lio/sentry/android/core/internal/util/f;->b:Lio/sentry/android/core/BuildInfoProvider;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v6, 0x1e

    .line 21
    .line 22
    if-lt v0, v6, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lqi;->b(Landroid/content/Context;)Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    move/from16 v17, v0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    const v0, 0x4e6e6b28    # 1.0E9f

    .line 53
    .line 54
    .line 55
    div-float v6, v0, v17

    .line 56
    .line 57
    float-to-long v6, v6

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-virtual {v1, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    const/4 v11, 0x1

    .line 64
    invoke-virtual {v1, v11}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v12

    .line 68
    add-long/2addr v12, v9

    .line 69
    const/4 v9, 0x2

    .line 70
    invoke-virtual {v1, v9}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    add-long/2addr v9, v12

    .line 75
    const/4 v12, 0x3

    .line 76
    invoke-virtual {v1, v12}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v12

    .line 80
    add-long/2addr v12, v9

    .line 81
    const/4 v9, 0x4

    .line 82
    invoke-virtual {v1, v9}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    add-long/2addr v9, v12

    .line 87
    const/4 v12, 0x5

    .line 88
    invoke-virtual {v1, v12}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    add-long/2addr v12, v9

    .line 93
    sub-long v6, v12, v6

    .line 94
    .line 95
    const-wide/16 v9, 0x0

    .line 96
    .line 97
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    iget-object v14, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->j:Lio/sentry/android/core/BuildInfoProvider;

    .line 102
    .line 103
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/16 v14, 0xa

    .line 107
    .line 108
    invoke-virtual {v1, v14}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v14

    .line 112
    cmp-long v1, v14, v9

    .line 113
    .line 114
    if-gez v1, :cond_1

    .line 115
    .line 116
    sub-long v14, v4, v12

    .line 117
    .line 118
    :cond_1
    iget-wide v4, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->v:J

    .line 119
    .line 120
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    iget-wide v14, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->u:J

    .line 125
    .line 126
    cmp-long v1, v4, v14

    .line 127
    .line 128
    if-nez v1, :cond_2

    .line 129
    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_2
    iput-wide v4, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->u:J

    .line 133
    .line 134
    add-long v14, v4, v12

    .line 135
    .line 136
    iput-wide v14, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->v:J

    .line 137
    .line 138
    const/high16 v1, 0x3f800000    # 1.0f

    .line 139
    .line 140
    sub-float v1, v17, v1

    .line 141
    .line 142
    div-float/2addr v0, v1

    .line 143
    float-to-long v0, v0

    .line 144
    cmp-long v0, v12, v0

    .line 145
    .line 146
    if-lez v0, :cond_3

    .line 147
    .line 148
    move-wide v0, v14

    .line 149
    move v15, v11

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    move-wide v0, v14

    .line 152
    move v15, v8

    .line 153
    :goto_2
    if-eqz v15, :cond_4

    .line 154
    .line 155
    const-wide/32 v18, 0x29b92700

    .line 156
    .line 157
    .line 158
    cmp-long v14, v12, v18

    .line 159
    .line 160
    if-lez v14, :cond_4

    .line 161
    .line 162
    move/from16 v16, v11

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_4
    move/from16 v16, v8

    .line 166
    .line 167
    :goto_3
    cmp-long v8, v6, v9

    .line 168
    .line 169
    if-lez v8, :cond_5

    .line 170
    .line 171
    const-wide v8, 0x45d964b800L

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    sub-long/2addr v0, v8

    .line 177
    new-instance v8, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    .line 178
    .line 179
    invoke-direct {v8, v0, v1, v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;-><init>(JJ)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v8}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/16 v1, 0xe10

    .line 194
    .line 195
    if-ge v0, v1, :cond_5

    .line 196
    .line 197
    new-instance v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    .line 198
    .line 199
    iget-wide v8, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->v:J

    .line 200
    .line 201
    invoke-direct {v0, v4, v5, v8, v9}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;-><init>(JJ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_5
    iget-object v0, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;

    .line 228
    .line 229
    iget-wide v9, v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->v:J

    .line 230
    .line 231
    move-wide v11, v12

    .line 232
    move-wide v13, v6

    .line 233
    move-object v6, v1

    .line 234
    move-wide v7, v4

    .line 235
    invoke-interface/range {v6 .. v17}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;->b(JJJJZZF)V

    .line 236
    .line 237
    .line 238
    move-wide v6, v13

    .line 239
    move-wide v12, v11

    .line 240
    goto :goto_4

    .line 241
    :cond_6
    :goto_5
    return-void
.end method
