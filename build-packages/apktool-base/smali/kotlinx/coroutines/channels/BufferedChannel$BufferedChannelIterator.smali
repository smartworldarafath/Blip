.class final Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/channels/ChannelIterator;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/BufferedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BufferedChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelIterator<",
        "TE;>;",
        "Lkotlinx/coroutines/Waiter;"
    }
.end annotation


# instance fields
.field public j:Ljava/lang/Object;

.field public k:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic l:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->l:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 5
    .line 6
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Lkotlinx/coroutines/internal/Symbol;

    .line 7
    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Lkotlinx/coroutines/internal/Segment;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Lkotlinx/coroutines/internal/Symbol;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_8

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->l:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->z()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 31
    .line 32
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_1
    sget p1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a:I

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 53
    .line 54
    int-to-long v4, v1

    .line 55
    div-long v8, v6, v4

    .line 56
    .line 57
    rem-long v4, v6, v4

    .line 58
    .line 59
    long-to-int v5, v4

    .line 60
    iget-wide v10, v0, Lkotlinx/coroutines/internal/Segment;->l:J

    .line 61
    .line 62
    cmp-long v1, v10, v8

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v3, v8, v9, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->s(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move-object v4, v1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move-object v4, v0

    .line 76
    :goto_1
    const/4 v8, 0x0

    .line 77
    invoke-virtual/range {v3 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->K(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Lkotlinx/coroutines/internal/Symbol;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    if-eq v0, v1, :cond_13

    .line 85
    .line 86
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 87
    .line 88
    if-ne v0, v10, :cond_6

    .line 89
    .line 90
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->w()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    cmp-long v0, v6, v0

    .line 95
    .line 96
    if-gez v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 99
    .line 100
    .line 101
    :cond_5
    move-object v0, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Lkotlinx/coroutines/internal/Symbol;

    .line 104
    .line 105
    if-ne v0, v8, :cond_12

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlinx/coroutines/CancellableContinuationKt;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :try_start_0
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 116
    .line 117
    move-object v8, p0

    .line 118
    invoke-virtual/range {v3 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->K(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-ne p0, v1, :cond_7

    .line 123
    .line 124
    invoke-virtual {v8, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->a(Lkotlinx/coroutines/internal/Segment;I)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_6

    .line 128
    .line 129
    :catchall_0
    move-exception v0

    .line 130
    move-object p0, v0

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_7
    if-ne p0, v10, :cond_11

    .line 134
    .line 135
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->w()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    cmp-long p0, v6, v0

    .line 140
    .line 141
    if-gez p0, :cond_8

    .line 142
    .line 143
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 144
    .line 145
    .line 146
    :cond_8
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 147
    .line 148
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 153
    .line 154
    :goto_2
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->z()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object p0, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iput-object v9, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 166
    .line 167
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 168
    .line 169
    iput-object v0, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 170
    .line 171
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/lang/Throwable;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_9

    .line 176
    .line 177
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_6

    .line 183
    .line 184
    :cond_9
    new-instance v1, Lkotlin/Result$Failure;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_a
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 201
    .line 202
    int-to-long v0, v0

    .line 203
    div-long v4, v6, v0

    .line 204
    .line 205
    rem-long v0, v6, v0

    .line 206
    .line 207
    long-to-int v0, v0

    .line 208
    iget-wide v1, p0, Lkotlinx/coroutines/internal/Segment;->l:J

    .line 209
    .line 210
    cmp-long v1, v1, v4

    .line 211
    .line 212
    if-eqz v1, :cond_c

    .line 213
    .line 214
    invoke-virtual {v3, v4, v5, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->s(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-nez v1, :cond_b

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_b
    move-object v4, v1

    .line 222
    :goto_3
    move v5, v0

    .line 223
    goto :goto_4

    .line 224
    :cond_c
    move-object v4, p0

    .line 225
    goto :goto_3

    .line 226
    :goto_4
    invoke-virtual/range {v3 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->K(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    move-object v1, v4

    .line 231
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Lkotlinx/coroutines/internal/Symbol;

    .line 232
    .line 233
    if-ne p0, v0, :cond_d

    .line 234
    .line 235
    invoke-virtual {v8, v1, v5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->a(Lkotlinx/coroutines/internal/Segment;I)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_d
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 240
    .line 241
    if-ne p0, v0, :cond_f

    .line 242
    .line 243
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->w()J

    .line 244
    .line 245
    .line 246
    move-result-wide v4

    .line 247
    cmp-long p0, v6, v4

    .line 248
    .line 249
    if-gez p0, :cond_e

    .line 250
    .line 251
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 252
    .line 253
    .line 254
    :cond_e
    move-object p0, v1

    .line 255
    goto :goto_2

    .line 256
    :cond_f
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Lkotlinx/coroutines/internal/Symbol;

    .line 257
    .line 258
    if-eq p0, v0, :cond_10

    .line 259
    .line 260
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 261
    .line 262
    .line 263
    iput-object p0, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v9, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 266
    .line 267
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-virtual {p1, p0, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 274
    .line 275
    const-string v0, "unexpected"

    .line 276
    .line 277
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p0

    .line 281
    :cond_11
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 282
    .line 283
    .line 284
    iput-object p0, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v9, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->k:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :goto_6
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 294
    .line 295
    return-object p0

    .line 296
    :goto_7
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->D()V

    .line 297
    .line 298
    .line 299
    throw p0

    .line 300
    :cond_12
    move-object v8, p0

    .line 301
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 302
    .line 303
    .line 304
    iput-object v0, v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 305
    .line 306
    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    return-object p0

    .line 311
    :cond_13
    const-string p0, "unreachable"

    .line 312
    .line 313
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-object v9
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Lkotlinx/coroutines/internal/Symbol;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->j:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 15
    .line 16
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->l:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->u()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget v0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a:I

    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    const-string p0, "`hasNext()` has not been invoked"

    .line 26
    .line 27
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method
