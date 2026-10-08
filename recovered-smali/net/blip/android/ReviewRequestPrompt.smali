.class public final Lnet/blip/android/ReviewRequestPrompt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/android/play/core/review/ReviewManager;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p1

    .line 9
    :goto_0
    new-instance v1, Lcom/google/android/play/core/review/zzd;

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/play/core/review/zzi;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/google/android/play/core/review/zzi;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/google/android/play/core/review/zzd;-><init>(Lcom/google/android/play/core/review/zzi;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lnet/blip/android/ReviewRequestPrompt$1;->r:Lnet/blip/android/ReviewRequestPrompt$1;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lnet/blip/android/ReviewRequestPrompt;->a:Lcom/google/android/play/core/review/ReviewManager;

    .line 25
    .line 26
    iput-object v0, p0, Lnet/blip/android/ReviewRequestPrompt;->b:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    const-string v0, "review-request"

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lnet/blip/android/ReviewRequestPrompt;->c:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    return-void
.end method

.method public static final a(Lnet/blip/android/ReviewRequestPrompt;Lnet/blip/libblip/frontend/State;)Ljava/lang/Long;
    .locals 11

    .line 1
    iget-object v0, p1, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 2
    .line 3
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    iget-boolean v0, v0, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v3, :cond_f

    .line 12
    .line 13
    iget-object p1, p1, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lnet/blip/libblip/frontend/Auth;->n:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v2

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    instance-of v3, v0, Ljava/util/Collection;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, v0

    .line 32
    check-cast v3, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_f

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lnet/blip/libblip/frontend/Transfer;

    .line 57
    .line 58
    iget-object v4, v3, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 59
    .line 60
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Status;->u:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 61
    .line 62
    if-eq v4, v5, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v4, v3, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 66
    .line 67
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Direction;->o:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 68
    .line 69
    if-eq v4, v5, :cond_5

    .line 70
    .line 71
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 72
    .line 73
    if-ne v4, v5, :cond_2

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object v3, v3, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v3, v3, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move-object v3, v2

    .line 85
    :goto_2
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/Iterable;

    .line 96
    .line 97
    instance-of v0, p1, Ljava/util/Collection;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    move-object v0, p1

    .line 102
    check-cast v0, Ljava/util/Collection;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 126
    .line 127
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->c(Lnet/blip/libblip/frontend/Transfer;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_8
    :goto_3
    iget-object p1, p0, Lnet/blip/android/ReviewRequestPrompt;->b:Lkotlin/jvm/functions/Function0;

    .line 136
    .line 137
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/Number;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    iget-object p0, p0, Lnet/blip/android/ReviewRequestPrompt;->c:Landroid/content/SharedPreferences;

    .line 148
    .line 149
    const-string p1, "review-request-timestamp"

    .line 150
    .line 151
    const-wide/high16 v5, -0x8000000000000000L

    .line 152
    .line 153
    invoke-interface {p0, p1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 154
    .line 155
    .line 156
    move-result-wide p0

    .line 157
    const-wide v7, 0x2932e0000L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    sub-long v7, v3, v7

    .line 163
    .line 164
    cmp-long p0, p0, v7

    .line 165
    .line 166
    if-lez p0, :cond_9

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    check-cast p0, Ljava/lang/Iterable;

    .line 174
    .line 175
    new-instance p1, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c

    .line 189
    .line 190
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 195
    .line 196
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->C:Ljava/time/Instant;

    .line 197
    .line 198
    if-eqz v0, :cond_b

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    .line 201
    .line 202
    .line 203
    move-result-wide v7

    .line 204
    const-wide/16 v9, 0x3e8

    .line 205
    .line 206
    mul-long/2addr v7, v9

    .line 207
    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    int-to-long v0, v0

    .line 212
    const-wide/32 v9, 0xf4240

    .line 213
    .line 214
    .line 215
    div-long/2addr v0, v9

    .line 216
    add-long/2addr v0, v7

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    goto :goto_5

    .line 222
    :cond_b
    move-object v0, v2

    .line 223
    :goto_5
    if-eqz v0, :cond_a

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_c
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Ljava/lang/Long;

    .line 234
    .line 235
    if-eqz p0, :cond_d

    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 238
    .line 239
    .line 240
    move-result-wide v5

    .line 241
    :cond_d
    const-wide/32 p0, 0xea60

    .line 242
    .line 243
    .line 244
    add-long/2addr v5, p0

    .line 245
    sub-long/2addr v5, v3

    .line 246
    const-wide/16 p0, 0x0

    .line 247
    .line 248
    cmp-long v0, v5, p0

    .line 249
    .line 250
    if-gez v0, :cond_e

    .line 251
    .line 252
    move-wide v5, p0

    .line 253
    :cond_e
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :cond_f
    :goto_6
    return-object v2
.end method

.method public static final b(Lnet/blip/android/ReviewRequestPrompt;Landroid/app/Activity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/blip/android/ReviewRequestPrompt;->a:Lcom/google/android/play/core/review/ReviewManager;

    .line 2
    .line 3
    instance-of v1, p2, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;

    .line 9
    .line 10
    iget v2, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->p:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->p:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;-><init>(Lnet/blip/android/ReviewRequestPrompt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->n:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->p:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    if-eq v3, v6, :cond_2

    .line 39
    .line 40
    if-ne v3, v5, :cond_1

    .line 41
    .line 42
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/play/core/review/ReviewException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    iget-object p1, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->m:Landroid/app/Activity;

    .line 54
    .line 55
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/android/play/core/review/ReviewException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_2
    move-object p2, v0

    .line 63
    check-cast p2, Lcom/google/android/play/core/review/zzd;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/google/android/play/core/review/zzd;->b()Lcom/google/android/gms/tasks/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iput-object p1, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->m:Landroid/app/Activity;

    .line 73
    .line 74
    iput v6, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->p:I

    .line 75
    .line 76
    invoke-static {p2, v1}, Lkotlinx/coroutines/tasks/TasksKt;->a(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-ne p2, v2, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 84
    .line 85
    iget-object v3, p0, Lnet/blip/android/ReviewRequestPrompt;->c:Landroid/content/SharedPreferences;

    .line 86
    .line 87
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v6, "review-request-timestamp"

    .line 92
    .line 93
    iget-object p0, p0, Lnet/blip/android/ReviewRequestPrompt;->b:Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Ljava/lang/Number;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    check-cast v0, Lcom/google/android/play/core/review/zzd;

    .line 113
    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/core/review/zzd;->a(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iput-object v4, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->m:Landroid/app/Activity;

    .line 122
    .line 123
    iput v5, v1, Lnet/blip/android/ReviewRequestPrompt$requestReview$1;->p:I

    .line 124
    .line 125
    invoke-static {p0, v1}, Lkotlinx/coroutines/tasks/TasksKt;->a(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0
    :try_end_2
    .catch Lcom/google/android/play/core/review/ReviewException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    if-ne p0, v2, :cond_6

    .line 130
    .line 131
    :goto_2
    return-object v2

    .line 132
    :catch_0
    move-exception p0

    .line 133
    goto :goto_3

    .line 134
    :catch_1
    move-exception p0

    .line 135
    goto :goto_4

    .line 136
    :goto_3
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 137
    .line 138
    new-instance p2, Lkotlin/Pair;

    .line 139
    .line 140
    const-string v0, "err"

    .line 141
    .line 142
    invoke-direct {p2, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    filled-new-array {p2}, [Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    const-string p1, "review prompt failed"

    .line 153
    .line 154
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->l(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :goto_4
    iget-object p0, p0, Lcom/google/android/gms/common/api/ApiException;->j:Lcom/google/android/gms/common/api/Status;

    .line 159
    .line 160
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->j:I

    .line 161
    .line 162
    const/4 p1, -0x1

    .line 163
    if-ne p0, p1, :cond_5

    .line 164
    .line 165
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 166
    .line 167
    const/4 p1, 0x0

    .line 168
    new-array p1, p1, [Lkotlin/Pair;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    const-string p0, "review prompt unavailable: official Play Store not found"

    .line 174
    .line 175
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_5
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 180
    .line 181
    new-instance p2, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 184
    .line 185
    .line 186
    new-instance p0, Lkotlin/Pair;

    .line 187
    .line 188
    const-string v0, "error_code"

    .line 189
    .line 190
    invoke-direct {p0, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    filled-new-array {p0}, [Lkotlin/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const-string p1, "review prompt unavailable"

    .line 201
    .line 202
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->l(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 203
    .line 204
    .line 205
    :cond_6
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p0
.end method


# virtual methods
.method public final c(Landroid/app/Activity;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 4

    .line 1
    instance-of v0, p3, Lnet/blip/android/ReviewRequestPrompt$observe$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/blip/android/ReviewRequestPrompt$observe$1;-><init>(Lnet/blip/android/ReviewRequestPrompt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p3, Lnet/blip/android/ReviewRequestPrompt$observe$2;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {p3, p0, p2, p1, v2}, Lnet/blip/android/ReviewRequestPrompt$observe$2;-><init>(Lnet/blip/android/ReviewRequestPrompt;Lkotlinx/coroutines/flow/StateFlow;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iput v3, v0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->o:I

    .line 59
    .line 60
    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-ne p0, v1, :cond_3

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :goto_1
    const-string p0, "SharedFlow never completes, this call should never return."

    .line 68
    .line 69
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
