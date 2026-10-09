.class final Lcom/google/android/gms/common/api/internal/zaby;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final j:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final k:I

.field public final l:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final m:J

.field public final n:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaby;->j:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zaby;->k:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaby;->l:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/zaby;->m:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/google/android/gms/common/api/internal/zaby;->n:J

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/zabk;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:Lcom/google/android/gms/common/internal/zzj;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzj;->m:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_6

    .line 11
    .line 12
    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->k:Z

    .line 13
    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->m:[I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->o:[I

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    :goto_1
    array-length v3, v1

    .line 27
    if-ge v2, v3, :cond_4

    .line 28
    .line 29
    aget v3, v1, v2

    .line 30
    .line 31
    if-ne v3, p2, :cond_2

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :goto_2
    array-length v3, v1

    .line 38
    if-ge v2, v3, :cond_6

    .line 39
    .line 40
    aget v3, v1, v2

    .line 41
    .line 42
    if-ne v3, p2, :cond_5

    .line 43
    .line 44
    :cond_4
    :goto_3
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->o:I

    .line 45
    .line 46
    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->n:I

    .line 47
    .line 48
    if-ge p0, p2, :cond_6

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/tasks/Task;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaby;->j:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->k:Z

    .line 22
    .line 23
    if-eqz v3, :cond_b

    .line 24
    .line 25
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaby;->l:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 26
    .line 27
    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/google/android/gms/common/api/internal/zabk;

    .line 34
    .line 35
    if-eqz v3, :cond_b

    .line 36
    .line 37
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 38
    .line 39
    instance-of v5, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 40
    .line 41
    if-eqz v5, :cond_b

    .line 42
    .line 43
    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 44
    .line 45
    iget-wide v5, v0, Lcom/google/android/gms/common/api/internal/zaby;->m:J

    .line 46
    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    cmp-long v9, v5, v7

    .line 50
    .line 51
    const/4 v10, 0x1

    .line 52
    const/4 v11, 0x0

    .line 53
    if-lez v9, :cond_2

    .line 54
    .line 55
    move v12, v10

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v12, v11

    .line 58
    :goto_0
    iget v13, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->p:I

    .line 59
    .line 60
    const/16 v14, 0x64

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    iget-boolean v15, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->l:Z

    .line 65
    .line 66
    and-int/2addr v12, v15

    .line 67
    iget v15, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->m:I

    .line 68
    .line 69
    iget v7, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->n:I

    .line 70
    .line 71
    iget v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->j:I

    .line 72
    .line 73
    iget-object v8, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:Lcom/google/android/gms/common/internal/zzj;

    .line 74
    .line 75
    if-eqz v8, :cond_4

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->n()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-nez v8, :cond_4

    .line 82
    .line 83
    iget v7, v0, Lcom/google/android/gms/common/api/internal/zaby;->k:I

    .line 84
    .line 85
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/common/api/internal/zaby;->a(Lcom/google/android/gms/common/api/internal/zabk;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_b

    .line 90
    .line 91
    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->l:Z

    .line 92
    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    if-lez v9, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v10, v11

    .line 99
    :goto_1
    iget v7, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->n:I

    .line 100
    .line 101
    move v12, v10

    .line 102
    :cond_4
    :goto_2
    move v3, v15

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const/16 v15, 0x1388

    .line 105
    .line 106
    move v2, v11

    .line 107
    move v7, v14

    .line 108
    goto :goto_2

    .line 109
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->k()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v8, -0x1

    .line 114
    if-eqz v4, :cond_6

    .line 115
    .line 116
    move v15, v11

    .line 117
    goto :goto_5

    .line 118
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->i()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_7

    .line 123
    .line 124
    move v11, v8

    .line 125
    move v15, v14

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->f()Ljava/lang/Exception;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    instance-of v9, v4, Lcom/google/android/gms/common/api/ApiException;

    .line 132
    .line 133
    if-eqz v9, :cond_9

    .line 134
    .line 135
    check-cast v4, Lcom/google/android/gms/common/api/ApiException;

    .line 136
    .line 137
    iget-object v4, v4, Lcom/google/android/gms/common/api/ApiException;->j:Lcom/google/android/gms/common/api/Status;

    .line 138
    .line 139
    iget v11, v4, Lcom/google/android/gms/common/api/Status;->j:I

    .line 140
    .line 141
    iget-object v4, v4, Lcom/google/android/gms/common/api/Status;->m:Lcom/google/android/gms/common/ConnectionResult;

    .line 142
    .line 143
    if-nez v4, :cond_8

    .line 144
    .line 145
    :goto_4
    move v15, v11

    .line 146
    move v11, v8

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    iget v4, v4, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 149
    .line 150
    move v15, v11

    .line 151
    move v11, v4

    .line 152
    goto :goto_5

    .line 153
    :cond_9
    const/16 v11, 0x65

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :goto_5
    if-eqz v12, :cond_a

    .line 157
    .line 158
    iget-wide v8, v0, Lcom/google/android/gms/common/api/internal/zaby;->n:J

    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v16

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v18

    .line 168
    sub-long v8, v18, v8

    .line 169
    .line 170
    long-to-int v8, v8

    .line 171
    move-wide/from16 v19, v16

    .line 172
    .line 173
    move-wide/from16 v17, v5

    .line 174
    .line 175
    :goto_6
    move/from16 v24, v8

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_a
    const-wide/16 v17, 0x0

    .line 179
    .line 180
    const-wide/16 v19, 0x0

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :goto_7
    iget v14, v0, Lcom/google/android/gms/common/api/internal/zaby;->k:I

    .line 184
    .line 185
    move/from16 v23, v13

    .line 186
    .line 187
    new-instance v13, Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 188
    .line 189
    const/16 v21, 0x0

    .line 190
    .line 191
    const/16 v22, 0x0

    .line 192
    .line 193
    move/from16 v16, v11

    .line 194
    .line 195
    invoke-direct/range {v13 .. v24}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v19, v13

    .line 199
    .line 200
    int-to-long v3, v3

    .line 201
    new-instance v18, Lcom/google/android/gms/common/api/internal/zabz;

    .line 202
    .line 203
    move/from16 v20, v2

    .line 204
    .line 205
    move-wide/from16 v21, v3

    .line 206
    .line 207
    move/from16 v23, v7

    .line 208
    .line 209
    invoke-direct/range {v18 .. v23}, Lcom/google/android/gms/common/api/internal/zabz;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    .line 210
    .line 211
    .line 212
    move-object/from16 v0, v18

    .line 213
    .line 214
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 215
    .line 216
    const/16 v2, 0x12

    .line 217
    .line 218
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    .line 224
    .line 225
    :cond_b
    :goto_8
    return-void
.end method
