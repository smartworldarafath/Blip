.class public final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/Object;

.field public static r:Ljava/util/concurrent/ScheduledExecutorService;

.field public static s:I


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public final b:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

.field public final c:F

.field public final d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

.field public e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

.field public final f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

.field public final g:Z

.field public final h:I

.field public final i:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

.field public final j:Landroidx/media3/common/util/ListenerSet;

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;FLandroidx/media3/common/util/Clock;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 7
    .line 8
    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c:F

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

    .line 11
    .line 12
    new-instance p4, Landroidx/media3/common/util/ListenerSet;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p4, v0}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    .line 19
    .line 20
    .line 21
    iput-object p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 22
    .line 23
    iget p4, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 24
    .line 25
    invoke-static {p4}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->g:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget v0, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p4}, Landroidx/media3/common/util/Util;->n(I)I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    mul-int/2addr p4, v0

    .line 44
    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p4, -0x1

    .line 48
    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    .line 49
    .line 50
    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 51
    .line 52
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V

    .line 55
    .line 56
    .line 57
    iget v4, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 58
    .line 59
    iget v5, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    .line 60
    .line 61
    iget v6, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    .line 62
    .line 63
    move-object v3, p1

    .line 64
    move-object v2, p5

    .line 65
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;Landroidx/media3/common/util/Clock;Landroid/media/AudioTrack;III)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 69
    .line 70
    if-eqz p3, :cond_1

    .line 71
    .line 72
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    .line 73
    .line 74
    invoke-direct {p1, v3, p3}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 p1, 0x0

    .line 92
    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->i:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 39

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 10
    .line 11
    iget v4, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    .line 12
    .line 13
    iget-object v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 14
    .line 15
    iget-object v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    .line 16
    .line 17
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    const-wide/16 v11, 0x0

    .line 22
    .line 23
    const/4 v15, 0x3

    .line 24
    if-ne v7, v15, :cond_1a

    .line 25
    .line 26
    iget-object v7, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->c:[J

    .line 27
    .line 28
    move-object/from16 v16, v3

    .line 29
    .line 30
    check-cast v16, Landroidx/media3/common/util/SystemClock;

    .line 31
    .line 32
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v16

    .line 39
    const-wide/16 v18, 0x3e8

    .line 40
    .line 41
    div-long v9, v16, v18

    .line 42
    .line 43
    const/16 p0, 0x1

    .line 44
    .line 45
    iget-wide v14, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    .line 46
    .line 47
    sub-long v14, v9, v14

    .line 48
    .line 49
    const-wide/16 v20, 0x7530

    .line 50
    .line 51
    cmp-long v14, v14, v20

    .line 52
    .line 53
    if-ltz v14, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    .line 56
    .line 57
    .line 58
    move-result-wide v14

    .line 59
    invoke-static {v4, v14, v15}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v14

    .line 63
    cmp-long v17, v14, v11

    .line 64
    .line 65
    if-nez v17, :cond_0

    .line 66
    .line 67
    move-wide/from16 v27, v0

    .line 68
    .line 69
    move-object/from16 v38, v2

    .line 70
    .line 71
    move-object/from16 v25, v3

    .line 72
    .line 73
    move/from16 v37, v4

    .line 74
    .line 75
    move-object/from16 v26, v6

    .line 76
    .line 77
    goto/16 :goto_c

    .line 78
    .line 79
    :cond_0
    iget v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    .line 80
    .line 81
    iget v13, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 82
    .line 83
    const/high16 v21, 0x3f800000    # 1.0f

    .line 84
    .line 85
    cmpl-float v21, v13, v21

    .line 86
    .line 87
    if-nez v21, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    long-to-double v14, v14

    .line 91
    float-to-double v11, v13

    .line 92
    div-double/2addr v14, v11

    .line 93
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    .line 94
    .line 95
    .line 96
    move-result-wide v14

    .line 97
    :goto_0
    sub-long/2addr v14, v9

    .line 98
    aput-wide v14, v7, v8

    .line 99
    .line 100
    iget v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    .line 101
    .line 102
    add-int/lit8 v8, v8, 0x1

    .line 103
    .line 104
    const/16 v11, 0xa

    .line 105
    .line 106
    rem-int/2addr v8, v11

    .line 107
    iput v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    .line 108
    .line 109
    iget v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    .line 110
    .line 111
    if-ge v8, v11, :cond_2

    .line 112
    .line 113
    add-int/lit8 v8, v8, 0x1

    .line 114
    .line 115
    iput v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    .line 116
    .line 117
    :cond_2
    iput-wide v9, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    .line 118
    .line 119
    const-wide/16 v11, 0x0

    .line 120
    .line 121
    iput-wide v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    :goto_1
    iget v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    .line 125
    .line 126
    if-ge v8, v11, :cond_3

    .line 127
    .line 128
    iget-wide v12, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    .line 129
    .line 130
    aget-wide v14, v7, v8

    .line 131
    .line 132
    move-object/from16 v23, v7

    .line 133
    .line 134
    move/from16 v24, v8

    .line 135
    .line 136
    int-to-long v7, v11

    .line 137
    div-long/2addr v14, v7

    .line 138
    add-long/2addr v14, v12

    .line 139
    iput-wide v14, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    .line 140
    .line 141
    add-int/lit8 v8, v24, 0x1

    .line 142
    .line 143
    move-object/from16 v7, v23

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    iget-wide v7, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    .line 147
    .line 148
    iget-boolean v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->g:Z

    .line 149
    .line 150
    const-string v12, "AudioTrackAudioOutput"

    .line 151
    .line 152
    if-eqz v11, :cond_6

    .line 153
    .line 154
    iget-object v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->m:Ljava/lang/reflect/Method;

    .line 155
    .line 156
    if-eqz v11, :cond_6

    .line 157
    .line 158
    const-wide/32 v23, 0x7a120

    .line 159
    .line 160
    .line 161
    iget-wide v13, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->o:J

    .line 162
    .line 163
    sub-long v13, v9, v13

    .line 164
    .line 165
    cmp-long v13, v13, v23

    .line 166
    .line 167
    if-ltz v13, :cond_5

    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    :try_start_0
    invoke-virtual {v11, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    check-cast v11, Ljava/lang/Integer;

    .line 175
    .line 176
    sget-object v14, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    int-to-long v14, v11

    .line 183
    mul-long v14, v14, v18

    .line 184
    .line 185
    move-wide/from16 v25, v14

    .line 186
    .line 187
    iget-wide v13, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->f:J

    .line 188
    .line 189
    sub-long v14, v25, v13

    .line 190
    .line 191
    iput-wide v14, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    .line 193
    move-object v13, v12

    .line 194
    const-wide/16 v11, 0x0

    .line 195
    .line 196
    :try_start_1
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 197
    .line 198
    .line 199
    move-result-wide v14

    .line 200
    iput-wide v14, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    .line 201
    .line 202
    const-wide/32 v11, 0x989680

    .line 203
    .line 204
    .line 205
    cmp-long v11, v14, v11

    .line 206
    .line 207
    if-lez v11, :cond_4

    .line 208
    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v12, "Ignoring impossibly large audio latency: "

    .line 212
    .line 213
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    invoke-static {v13, v11}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-wide/16 v11, 0x0

    .line 227
    .line 228
    iput-wide v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :catch_0
    :goto_2
    const/4 v11, 0x0

    .line 232
    goto :goto_3

    .line 233
    :catch_1
    move-object v13, v12

    .line 234
    goto :goto_2

    .line 235
    :goto_3
    iput-object v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->m:Ljava/lang/reflect/Method;

    .line 236
    .line 237
    :cond_4
    :goto_4
    iput-wide v9, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->o:J

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_5
    move-object v13, v12

    .line 241
    goto :goto_5

    .line 242
    :cond_6
    move-object v13, v12

    .line 243
    const-wide/32 v23, 0x7a120

    .line 244
    .line 245
    .line 246
    :goto_5
    iget-wide v11, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    .line 247
    .line 248
    cmp-long v7, v7, v11

    .line 249
    .line 250
    if-eqz v7, :cond_7

    .line 251
    .line 252
    move/from16 v7, p0

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_7
    const/4 v7, 0x0

    .line 256
    :goto_6
    iget v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 257
    .line 258
    invoke-virtual {v2, v9, v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v11

    .line 262
    iget-object v14, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 263
    .line 264
    iget-object v15, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 265
    .line 266
    move-object/from16 v25, v3

    .line 267
    .line 268
    iget v3, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b:I

    .line 269
    .line 270
    move-object/from16 v26, v6

    .line 271
    .line 272
    if-nez v7, :cond_8

    .line 273
    .line 274
    iget-wide v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g:J

    .line 275
    .line 276
    sub-long v6, v9, v6

    .line 277
    .line 278
    move-wide/from16 v27, v6

    .line 279
    .line 280
    iget-wide v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f:J

    .line 281
    .line 282
    cmp-long v6, v27, v6

    .line 283
    .line 284
    if-gez v6, :cond_8

    .line 285
    .line 286
    move-wide/from16 v27, v0

    .line 287
    .line 288
    move-object/from16 v38, v2

    .line 289
    .line 290
    move/from16 v37, v4

    .line 291
    .line 292
    goto/16 :goto_c

    .line 293
    .line 294
    :cond_8
    iput-wide v9, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g:J

    .line 295
    .line 296
    iget-object v6, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->a:Landroid/media/AudioTrack;

    .line 297
    .line 298
    iget-object v7, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    .line 299
    .line 300
    invoke-virtual {v6, v7}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_b

    .line 305
    .line 306
    move-wide/from16 v27, v0

    .line 307
    .line 308
    iget-wide v0, v7, Landroid/media/AudioTimestamp;->framePosition:J

    .line 309
    .line 310
    move-wide/from16 v29, v11

    .line 311
    .line 312
    iget-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->d:J

    .line 313
    .line 314
    cmp-long v31, v11, v0

    .line 315
    .line 316
    if-lez v31, :cond_a

    .line 317
    .line 318
    move/from16 v31, v6

    .line 319
    .line 320
    iget-boolean v6, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->f:Z

    .line 321
    .line 322
    if-eqz v6, :cond_9

    .line 323
    .line 324
    move-wide/from16 v32, v11

    .line 325
    .line 326
    iget-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->g:J

    .line 327
    .line 328
    add-long v11, v11, v32

    .line 329
    .line 330
    iput-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->g:J

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    iput-boolean v6, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->f:Z

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_9
    iget-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->c:J

    .line 337
    .line 338
    const-wide/16 v32, 0x1

    .line 339
    .line 340
    add-long v11, v11, v32

    .line 341
    .line 342
    iput-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->c:J

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_a
    move/from16 v31, v6

    .line 346
    .line 347
    :goto_7
    iput-wide v0, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->d:J

    .line 348
    .line 349
    iget-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->g:J

    .line 350
    .line 351
    add-long/2addr v0, v11

    .line 352
    iget-wide v11, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->c:J

    .line 353
    .line 354
    const/16 v6, 0x20

    .line 355
    .line 356
    shl-long/2addr v11, v6

    .line 357
    add-long/2addr v0, v11

    .line 358
    iput-wide v0, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_b
    move-wide/from16 v27, v0

    .line 362
    .line 363
    move/from16 v31, v6

    .line 364
    .line 365
    move-wide/from16 v29, v11

    .line 366
    .line 367
    :goto_8
    if-eqz v31, :cond_e

    .line 368
    .line 369
    iget-object v1, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->c:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 370
    .line 371
    iget-wide v11, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 372
    .line 373
    div-long v11, v11, v18

    .line 374
    .line 375
    move-object/from16 v32, v1

    .line 376
    .line 377
    iget-wide v0, v15, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 378
    .line 379
    iget-object v6, v15, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    .line 380
    .line 381
    move-object/from16 v34, v7

    .line 382
    .line 383
    iget-wide v6, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 384
    .line 385
    div-long v6, v6, v18

    .line 386
    .line 387
    invoke-static {v3, v0, v1}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 388
    .line 389
    .line 390
    move-result-wide v0

    .line 391
    sub-long v6, v9, v6

    .line 392
    .line 393
    invoke-static {v6, v7, v8}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 394
    .line 395
    .line 396
    move-result-wide v6

    .line 397
    add-long/2addr v0, v6

    .line 398
    sub-long v6, v11, v9

    .line 399
    .line 400
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 401
    .line 402
    .line 403
    move-result-wide v6

    .line 404
    const-wide/32 v35, 0x4c4b40

    .line 405
    .line 406
    .line 407
    cmp-long v6, v6, v35

    .line 408
    .line 409
    const-string v7, ", "

    .line 410
    .line 411
    if-lez v6, :cond_c

    .line 412
    .line 413
    iget-wide v0, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 414
    .line 415
    move-object/from16 v6, v32

    .line 416
    .line 417
    check-cast v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;

    .line 418
    .line 419
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    move/from16 v37, v4

    .line 423
    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    move-object/from16 v38, v2

    .line 427
    .line 428
    const-string v2, "Spurious audio timestamp (system clock mismatch): "

    .line 429
    .line 430
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    move-wide/from16 v0, v29

    .line 452
    .line 453
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-object v0, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 460
    .line 461
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    .line 462
    .line 463
    .line 464
    move-result-wide v0

    .line 465
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 473
    .line 474
    invoke-static {v13, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const/4 v6, 0x4

    .line 478
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 479
    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_c
    move-object/from16 v38, v2

    .line 483
    .line 484
    move/from16 v37, v4

    .line 485
    .line 486
    move-object v2, v7

    .line 487
    move-wide/from16 v6, v29

    .line 488
    .line 489
    sub-long/2addr v0, v6

    .line 490
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 491
    .line 492
    .line 493
    move-result-wide v0

    .line 494
    cmp-long v0, v0, v35

    .line 495
    .line 496
    if-lez v0, :cond_d

    .line 497
    .line 498
    iget-wide v0, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 499
    .line 500
    move-object/from16 v4, v32

    .line 501
    .line 502
    check-cast v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    move-object/from16 v29, v2

    .line 508
    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    move-object/from16 v30, v15

    .line 512
    .line 513
    const-string v15, "Spurious audio timestamp (frame position mismatch): "

    .line 514
    .line 515
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    move-object/from16 v0, v29

    .line 522
    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget-object v0, v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 545
    .line 546
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    .line 547
    .line 548
    .line 549
    move-result-wide v0

    .line 550
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 558
    .line 559
    invoke-static {v13, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    const/4 v6, 0x4

    .line 563
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 564
    .line 565
    .line 566
    goto :goto_a

    .line 567
    :cond_d
    move-object/from16 v30, v15

    .line 568
    .line 569
    const/4 v6, 0x4

    .line 570
    iget v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    .line 571
    .line 572
    if-ne v0, v6, :cond_f

    .line 573
    .line 574
    const/4 v0, 0x0

    .line 575
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 576
    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_e
    move-object/from16 v38, v2

    .line 580
    .line 581
    move/from16 v37, v4

    .line 582
    .line 583
    move-object/from16 v34, v7

    .line 584
    .line 585
    :goto_9
    move-object/from16 v30, v15

    .line 586
    .line 587
    const/4 v6, 0x4

    .line 588
    :cond_f
    :goto_a
    iget v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    .line 589
    .line 590
    if-eqz v0, :cond_18

    .line 591
    .line 592
    move/from16 v1, p0

    .line 593
    .line 594
    if-eq v0, v1, :cond_13

    .line 595
    .line 596
    const/4 v1, 0x2

    .line 597
    if-eq v0, v1, :cond_12

    .line 598
    .line 599
    const/4 v1, 0x3

    .line 600
    if-eq v0, v1, :cond_11

    .line 601
    .line 602
    if-ne v0, v6, :cond_10

    .line 603
    .line 604
    goto/16 :goto_c

    .line 605
    .line 606
    :cond_10
    invoke-static {}, Lio/sentry/d;->d()V

    .line 607
    .line 608
    .line 609
    const-wide/16 v21, 0x0

    .line 610
    .line 611
    return-wide v21

    .line 612
    :cond_11
    if-eqz v31, :cond_1b

    .line 613
    .line 614
    const/4 v0, 0x0

    .line 615
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_c

    .line 619
    .line 620
    :cond_12
    const/4 v0, 0x0

    .line 621
    if-nez v31, :cond_1b

    .line 622
    .line 623
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_c

    .line 627
    .line 628
    :cond_13
    if-eqz v31, :cond_17

    .line 629
    .line 630
    iget-wide v0, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 631
    .line 632
    iget-wide v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    .line 633
    .line 634
    cmp-long v0, v0, v6

    .line 635
    .line 636
    if-gtz v0, :cond_14

    .line 637
    .line 638
    goto :goto_b

    .line 639
    :cond_14
    iget-wide v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    .line 640
    .line 641
    invoke-static {v3, v6, v7}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 642
    .line 643
    .line 644
    move-result-wide v6

    .line 645
    sub-long v0, v9, v0

    .line 646
    .line 647
    invoke-static {v0, v1, v8}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 648
    .line 649
    .line 650
    move-result-wide v0

    .line 651
    add-long/2addr v0, v6

    .line 652
    move-object/from16 v2, v30

    .line 653
    .line 654
    iget-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 655
    .line 656
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    .line 657
    .line 658
    iget-wide v11, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 659
    .line 660
    div-long v11, v11, v18

    .line 661
    .line 662
    invoke-static {v3, v6, v7}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 663
    .line 664
    .line 665
    move-result-wide v2

    .line 666
    sub-long v6, v9, v11

    .line 667
    .line 668
    invoke-static {v6, v7, v8}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 669
    .line 670
    .line 671
    move-result-wide v6

    .line 672
    add-long/2addr v6, v2

    .line 673
    sub-long/2addr v6, v0

    .line 674
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 675
    .line 676
    .line 677
    move-result-wide v0

    .line 678
    cmp-long v0, v0, v18

    .line 679
    .line 680
    if-gez v0, :cond_15

    .line 681
    .line 682
    const/4 v1, 0x2

    .line 683
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 684
    .line 685
    .line 686
    goto :goto_c

    .line 687
    :cond_15
    :goto_b
    iget-wide v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    .line 688
    .line 689
    sub-long/2addr v9, v0

    .line 690
    const-wide/32 v0, 0x1e8480

    .line 691
    .line 692
    .line 693
    cmp-long v0, v9, v0

    .line 694
    .line 695
    if-lez v0, :cond_16

    .line 696
    .line 697
    const/4 v1, 0x3

    .line 698
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 699
    .line 700
    .line 701
    goto :goto_c

    .line 702
    :cond_16
    iget-wide v0, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 703
    .line 704
    iput-wide v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    .line 705
    .line 706
    move-object/from16 v0, v34

    .line 707
    .line 708
    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 709
    .line 710
    div-long v0, v0, v18

    .line 711
    .line 712
    iput-wide v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    .line 713
    .line 714
    goto :goto_c

    .line 715
    :cond_17
    const/4 v0, 0x0

    .line 716
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 717
    .line 718
    .line 719
    goto :goto_c

    .line 720
    :cond_18
    move-object/from16 v0, v34

    .line 721
    .line 722
    if-eqz v31, :cond_19

    .line 723
    .line 724
    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 725
    .line 726
    div-long v2, v0, v18

    .line 727
    .line 728
    iget-wide v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    .line 729
    .line 730
    cmp-long v2, v2, v6

    .line 731
    .line 732
    if-ltz v2, :cond_1b

    .line 733
    .line 734
    iget-wide v2, v14, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 735
    .line 736
    iput-wide v2, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    .line 737
    .line 738
    div-long v0, v0, v18

    .line 739
    .line 740
    iput-wide v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    .line 741
    .line 742
    const/4 v1, 0x1

    .line 743
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 744
    .line 745
    .line 746
    goto :goto_c

    .line 747
    :cond_19
    iget-wide v0, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    .line 748
    .line 749
    sub-long/2addr v9, v0

    .line 750
    cmp-long v0, v9, v23

    .line 751
    .line 752
    if-lez v0, :cond_1b

    .line 753
    .line 754
    const/4 v1, 0x3

    .line 755
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 756
    .line 757
    .line 758
    goto :goto_c

    .line 759
    :cond_1a
    move-wide/from16 v27, v0

    .line 760
    .line 761
    move-object/from16 v38, v2

    .line 762
    .line 763
    move-object/from16 v25, v3

    .line 764
    .line 765
    move/from16 v37, v4

    .line 766
    .line 767
    move-object/from16 v26, v6

    .line 768
    .line 769
    const-wide/16 v18, 0x3e8

    .line 770
    .line 771
    :cond_1b
    :goto_c
    move-object/from16 v3, v25

    .line 772
    .line 773
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 774
    .line 775
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 779
    .line 780
    .line 781
    move-result-wide v0

    .line 782
    div-long v0, v0, v18

    .line 783
    .line 784
    iget v2, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    .line 785
    .line 786
    const/4 v3, 0x2

    .line 787
    if-ne v2, v3, :cond_1c

    .line 788
    .line 789
    const/4 v6, 0x1

    .line 790
    goto :goto_d

    .line 791
    :cond_1c
    const/4 v6, 0x0

    .line 792
    :goto_d
    if-eqz v6, :cond_1d

    .line 793
    .line 794
    move-object/from16 v2, v38

    .line 795
    .line 796
    iget v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 797
    .line 798
    iget-object v4, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 799
    .line 800
    iget-wide v7, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    .line 801
    .line 802
    iget-object v4, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    .line 803
    .line 804
    iget-wide v9, v4, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 805
    .line 806
    div-long v9, v9, v18

    .line 807
    .line 808
    iget v4, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b:I

    .line 809
    .line 810
    invoke-static {v4, v7, v8}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 811
    .line 812
    .line 813
    move-result-wide v7

    .line 814
    sub-long v9, v0, v9

    .line 815
    .line 816
    invoke-static {v9, v10, v3}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 817
    .line 818
    .line 819
    move-result-wide v3

    .line 820
    add-long/2addr v3, v7

    .line 821
    :goto_e
    move-wide v7, v3

    .line 822
    move-wide/from16 v3, v27

    .line 823
    .line 824
    move/from16 v9, v37

    .line 825
    .line 826
    goto :goto_f

    .line 827
    :cond_1d
    move-object/from16 v2, v38

    .line 828
    .line 829
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b(J)J

    .line 830
    .line 831
    .line 832
    move-result-wide v3

    .line 833
    goto :goto_e

    .line 834
    :goto_f
    invoke-static {v9, v3, v4}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 835
    .line 836
    .line 837
    move-result-wide v3

    .line 838
    cmp-long v9, v7, v3

    .line 839
    .line 840
    if-ltz v9, :cond_1e

    .line 841
    .line 842
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e()V

    .line 843
    .line 844
    .line 845
    const/4 v0, 0x0

    .line 846
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 847
    .line 848
    .line 849
    goto :goto_12

    .line 850
    :cond_1e
    invoke-virtual/range {v26 .. v26}, Landroid/media/AudioTrack;->getPlayState()I

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    const/4 v4, 0x3

    .line 855
    if-ne v3, v4, :cond_22

    .line 856
    .line 857
    if-nez v6, :cond_1f

    .line 858
    .line 859
    iget v3, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    .line 860
    .line 861
    if-eqz v3, :cond_20

    .line 862
    .line 863
    const/4 v4, 0x1

    .line 864
    if-ne v3, v4, :cond_1f

    .line 865
    .line 866
    goto :goto_10

    .line 867
    :cond_1f
    invoke-virtual {v2, v7, v8}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d(J)V

    .line 868
    .line 869
    .line 870
    :cond_20
    :goto_10
    iget-wide v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    .line 871
    .line 872
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    cmp-long v5, v3, v5

    .line 878
    .line 879
    if-eqz v5, :cond_21

    .line 880
    .line 881
    sub-long v3, v0, v3

    .line 882
    .line 883
    iget-wide v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    .line 884
    .line 885
    sub-long v5, v7, v5

    .line 886
    .line 887
    iget v9, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 888
    .line 889
    invoke-static {v3, v4, v9}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 890
    .line 891
    .line 892
    move-result-wide v3

    .line 893
    iget-wide v9, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    .line 894
    .line 895
    add-long/2addr v9, v3

    .line 896
    sub-long v11, v9, v7

    .line 897
    .line 898
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 899
    .line 900
    .line 901
    move-result-wide v11

    .line 902
    const-wide/16 v21, 0x0

    .line 903
    .line 904
    cmp-long v5, v5, v21

    .line 905
    .line 906
    if-eqz v5, :cond_21

    .line 907
    .line 908
    const-wide/32 v5, 0xf4240

    .line 909
    .line 910
    .line 911
    cmp-long v5, v11, v5

    .line 912
    .line 913
    if-gez v5, :cond_21

    .line 914
    .line 915
    const-wide/16 v5, 0xa

    .line 916
    .line 917
    mul-long/2addr v3, v5

    .line 918
    const-wide/16 v5, 0x64

    .line 919
    .line 920
    div-long/2addr v3, v5

    .line 921
    move-wide v5, v9

    .line 922
    sub-long v9, v5, v3

    .line 923
    .line 924
    add-long v11, v5, v3

    .line 925
    .line 926
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 927
    .line 928
    .line 929
    move-result-wide v7

    .line 930
    :cond_21
    iput-wide v0, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    .line 931
    .line 932
    iput-wide v7, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    .line 933
    .line 934
    goto :goto_11

    .line 935
    :cond_22
    const/4 v1, 0x1

    .line 936
    if-ne v3, v1, :cond_23

    .line 937
    .line 938
    invoke-virtual {v2, v7, v8}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d(J)V

    .line 939
    .line 940
    .line 941
    :cond_23
    :goto_11
    move-wide v3, v7

    .line 942
    :goto_12
    return-wide v3
.end method

.method public final b()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->l:J

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    .line 8
    .line 9
    int-to-long v2, p0

    .line 10
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    const-wide/16 v4, 0x1

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    div-long/2addr v0, v2

    .line 17
    return-wide v0

    .line 18
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->m:J

    .line 19
    .line 20
    return-wide v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 8
    .line 9
    invoke-static {p0}, Ll0;->w(Landroid/media/AudioTrack;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final d(IJLjava/nio/ByteBuffer;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 2
    .line 3
    iget-boolean v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->g:Z

    .line 4
    .line 5
    if-nez v6, :cond_0

    .line 6
    .line 7
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->o:I

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 12
    .line 13
    invoke-static {v2, p4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i(ILjava/nio/ByteBuffer;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->o:I

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, v2, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 29
    .line 30
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x1

    .line 34
    if-ne v3, v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getUnderrunCount()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->p:I

    .line 44
    .line 45
    if-le v3, v4, :cond_1

    .line 46
    .line 47
    move v4, v8

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v4, v7

    .line 50
    :goto_0
    iput v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->p:I

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    new-instance v3, Landroidx/media3/exoplayer/audio/a;

    .line 55
    .line 56
    invoke-direct {v3, v7}, Landroidx/media3/exoplayer/audio/a;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const/4 v4, -0x1

    .line 60
    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->d:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    const-wide/high16 v2, -0x8000000000000000L

    .line 72
    .line 73
    cmp-long v0, p2, v2

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    iget-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->n:J

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->n:J

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const-wide/16 v3, 0x3e8

    .line 87
    .line 88
    mul-long/2addr p2, v3

    .line 89
    const/4 v3, 0x1

    .line 90
    move-object v1, p4

    .line 91
    move-object v0, v5

    .line 92
    move-wide v4, p2

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v0, v5

    .line 99
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {v0, p4, p2, v8}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    :goto_2
    if-gez p2, :cond_8

    .line 108
    .line 109
    const/4 p1, -0x6

    .line 110
    if-eq p2, p1, :cond_5

    .line 111
    .line 112
    const/16 p1, -0x20

    .line 113
    .line 114
    if-ne p2, p1, :cond_6

    .line 115
    .line 116
    :cond_5
    move v7, v8

    .line 117
    :cond_6
    if-eqz v7, :cond_7

    .line 118
    .line 119
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

    .line 120
    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    .line 124
    .line 125
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 126
    .line 127
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 128
    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    sget-object p3, Landroidx/media3/exoplayer/audio/AudioCapabilities;->f:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 132
    .line 133
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 134
    .line 135
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;

    .line 139
    .line 140
    invoke-direct {p0, p2, v7}, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;-><init>(IZ)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_8
    if-ne p2, v9, :cond_9

    .line 145
    .line 146
    move v7, v8

    .line 147
    :cond_9
    if-eqz v6, :cond_a

    .line 148
    .line 149
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->l:J

    .line 150
    .line 151
    int-to-long p1, p2

    .line 152
    add-long/2addr v0, p1

    .line 153
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->l:J

    .line 154
    .line 155
    return v7

    .line 156
    :cond_a
    if-eqz v7, :cond_b

    .line 157
    .line 158
    iget-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->m:J

    .line 159
    .line 160
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->o:I

    .line 161
    .line 162
    int-to-long v0, v0

    .line 163
    int-to-long v2, p1

    .line 164
    mul-long/2addr v0, v2

    .line 165
    add-long/2addr v0, p2

    .line 166
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->m:J

    .line 167
    .line 168
    :cond_b
    return v7
.end method
