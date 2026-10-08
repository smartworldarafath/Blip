.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field public final b:Z

.field public c:Landroidx/lifecycle/FastSafeIterableMap;

.field public final d:Landroidx/lifecycle/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public i:Landroidx/lifecycle/Lifecycle$State;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/Lifecycle;->a:Landroidx/lifecycle/AtomicReference;

    .line 10
    .line 11
    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->b:Z

    .line 12
    .line 13
    new-instance p2, Landroidx/lifecycle/FastSafeIterableMap;

    .line 14
    .line 15
    invoke-direct {p2}, Landroidx/lifecycle/FastSafeIterableMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 19
    .line 20
    new-instance p2, Landroidx/lifecycle/WeakReference;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroidx/lifecycle/WeakReference;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    .line 33
    .line 34
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->k:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "addObserver"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->k:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    .line 18
    :goto_0
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 24
    .line 25
    sget-object v1, Landroidx/lifecycle/Lifecycling;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    instance-of v1, p1, Landroidx/lifecycle/LifecycleEventObserver;

    .line 28
    .line 29
    instance-of v2, p1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    new-instance v1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 40
    .line 41
    move-object v2, p1

    .line 42
    check-cast v2, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 43
    .line 44
    move-object v7, p1

    .line 45
    check-cast v7, Landroidx/lifecycle/LifecycleEventObserver;

    .line 46
    .line 47
    invoke-direct {v1, v2, v7}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-eqz v2, :cond_2

    .line 52
    .line 53
    new-instance v1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 54
    .line 55
    move-object v2, p1

    .line 56
    check-cast v2, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 57
    .line 58
    invoke-direct {v1, v2, v4}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    if-eqz v1, :cond_3

    .line 63
    .line 64
    move-object v1, p1

    .line 65
    check-cast v1, Landroidx/lifecycle/LifecycleEventObserver;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Landroidx/lifecycle/Lifecycling;->b(Ljava/lang/Class;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ne v2, v3, :cond_6

    .line 77
    .line 78
    sget-object v2, Landroidx/lifecycle/Lifecycling;->b:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    check-cast v1, Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eq v2, v6, :cond_5

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    new-array v7, v2, [Landroidx/lifecycle/GeneratedAdapter;

    .line 100
    .line 101
    if-gtz v2, :cond_4

    .line 102
    .line 103
    new-instance v1, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 104
    .line 105
    invoke-direct {v1, v7}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 114
    .line 115
    invoke-static {p0, p1}, Landroidx/lifecycle/Lifecycling;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/LifecycleObserver;)V

    .line 116
    .line 117
    .line 118
    throw v4

    .line 119
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 124
    .line 125
    invoke-static {p0, p1}, Landroidx/lifecycle/Lifecycling;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/LifecycleObserver;)V

    .line 126
    .line 127
    .line 128
    throw v4

    .line 129
    :cond_6
    new-instance v1, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 130
    .line 131
    invoke-direct {v1, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Landroidx/lifecycle/LifecycleObserver;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    iput-object v1, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->b:Landroidx/lifecycle/LifecycleEventObserver;

    .line 135
    .line 136
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 142
    .line 143
    invoke-virtual {v2, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 148
    .line 149
    if-eqz v7, :cond_7

    .line 150
    .line 151
    iget-object v1, v7, Landroidx/lifecycle/FastSafeIterableMap$Entry;->k:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    new-instance v7, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 155
    .line 156
    invoke-direct {v7, p1, v0}, Landroidx/lifecycle/FastSafeIterableMap$Entry;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1, v7}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 163
    .line 164
    if-nez v2, :cond_8

    .line 165
    .line 166
    iput-object v7, v1, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 167
    .line 168
    iput-object v7, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    iput-object v7, v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;->l:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 172
    .line 173
    iput-object v2, v7, Landroidx/lifecycle/FastSafeIterableMap$Entry;->m:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 174
    .line 175
    iput-object v7, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 176
    .line 177
    :goto_2
    move-object v1, v4

    .line 178
    :goto_3
    if-eqz v1, :cond_9

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    .line 182
    .line 183
    iget-object v1, v1, Landroidx/lifecycle/WeakReference;->a:Ljava/lang/ref/WeakReference;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 190
    .line 191
    if-nez v1, :cond_a

    .line 192
    .line 193
    :goto_4
    return-void

    .line 194
    :cond_a
    iget v2, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    .line 195
    .line 196
    if-nez v2, :cond_b

    .line 197
    .line 198
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    .line 199
    .line 200
    if-eqz v2, :cond_c

    .line 201
    .line 202
    :cond_b
    move v5, v6

    .line 203
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->c(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iget v7, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    .line 208
    .line 209
    add-int/2addr v7, v6

    .line 210
    iput v7, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    .line 211
    .line 212
    :goto_5
    iget-object v7, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 213
    .line 214
    invoke-virtual {v7, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-gez v2, :cond_11

    .line 219
    .line 220
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object v2, v2, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 226
    .line 227
    invoke-virtual {v2, p1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_11

    .line 232
    .line 233
    iget-object v2, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 234
    .line 235
    iget-object v7, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 241
    .line 242
    iget-object v8, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eq v2, v6, :cond_f

    .line 255
    .line 256
    if-eq v2, v3, :cond_e

    .line 257
    .line 258
    const/4 v8, 0x3

    .line 259
    if-eq v2, v8, :cond_d

    .line 260
    .line 261
    move-object v2, v4

    .line 262
    goto :goto_6

    .line 263
    :cond_d
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_e
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_f
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 270
    .line 271
    :goto_6
    if-eqz v2, :cond_10

    .line 272
    .line 273
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->c(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    goto :goto_5

    .line 284
    :cond_10
    iget-object p0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 285
    .line 286
    const-string p1, "no event up from "

    .line 287
    .line 288
    invoke-static {p0, p1}, Lk8;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_11
    if-nez v5, :cond_12

    .line 293
    .line 294
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->g()V

    .line 295
    .line 296
    .line 297
    :cond_12
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    .line 298
    .line 299
    add-int/lit8 p1, p1, -0x1

    .line 300
    .line 301
    iput p1, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    .line 302
    .line 303
    return-void
.end method

.method public final b(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "removeObserver"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->m:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->l:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-object v1, v0, Landroidx/lifecycle/FastSafeIterableMap$Entry;->l:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 35
    .line 36
    :goto_0
    iget-object v1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->l:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iput-object v0, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->m:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 44
    .line 45
    :goto_1
    const/4 p0, 0x1

    .line 46
    iput-boolean p0, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->n:Z

    .line 47
    .line 48
    return-void
.end method

.method public final c(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->m:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->k:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object p1, v0

    .line 32
    :goto_1
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    .line 51
    .line 52
    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-gez v1, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move-object p1, p0

    .line 64
    :goto_2
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-gez p0, :cond_4

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Landroidx/lifecycle/LifecycleRegistry;->b:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->a()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/DefaultTaskExecutor;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne p0, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "Method "

    .line 30
    .line 31
    const-string v0, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lu2;->f(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final e(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "handleLifecycleEvent"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->a()Landroidx/lifecycle/Lifecycle$State;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->f(Landroidx/lifecycle/Lifecycle$State;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/lifecycle/WeakReference;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 18
    .line 19
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->k:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->l:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "State must be at least \'"

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\' to be moved to \'"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "\' in component "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    if-ne v1, v2, :cond_4

    .line 73
    .line 74
    if-ne v1, p1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "State is \'"

    .line 82
    .line 83
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, "\' and cannot be moved to `"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, "` in component "

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    :goto_1
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 118
    .line 119
    iget-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->g()V

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 138
    .line 139
    if-ne p1, v2, :cond_6

    .line 140
    .line 141
    new-instance p1, Landroidx/lifecycle/FastSafeIterableMap;

    .line 142
    .line 143
    invoke-direct {p1}, Landroidx/lifecycle/FastSafeIterableMap;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 147
    .line 148
    :cond_6
    :goto_2
    return-void

    .line 149
    :cond_7
    :goto_3
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    .line 150
    .line 151
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/lifecycle/WeakReference;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 16
    .line 17
    iget v2, v2, Landroidx/collection/ScatterMap;->e:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 24
    .line 25
    const-string v4, "Collection is empty."

    .line 26
    .line 27
    if-eqz v2, :cond_8

    .line 28
    .line 29
    iget-object v5, v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;->k:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 30
    .line 31
    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 34
    .line 35
    if-eqz v1, :cond_7

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->k:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 40
    .line 41
    if-ne v5, v1, :cond_2

    .line 42
    .line 43
    iget-object v6, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 44
    .line 45
    if-ne v6, v1, :cond_2

    .line 46
    .line 47
    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 52
    .line 53
    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-gez v1, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 70
    .line 71
    new-instance v2, Loa;

    .line 72
    .line 73
    invoke-direct {v2, p0, v0, v3}, Loa;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 80
    .line 81
    :goto_1
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget-boolean v3, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->n:Z

    .line 84
    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Loa;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->m:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 94
    .line 95
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 96
    .line 97
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    .line 98
    .line 99
    if-nez v2, :cond_0

    .line 100
    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 104
    .line 105
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->k:Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 106
    .line 107
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-lez v1, :cond_0

    .line 114
    .line 115
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 116
    .line 117
    new-instance v2, Loa;

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    invoke-direct {v2, p0, v0, v3}, Loa;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 127
    .line 128
    :goto_2
    if-eqz v1, :cond_0

    .line 129
    .line 130
    iget-boolean v3, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->n:Z

    .line 131
    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Loa;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->l:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    invoke-static {v4}, Lfe;->o(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_7
    invoke-static {v4}, Lfe;->o(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_8
    invoke-static {v4}, Lfe;->o(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_9
    const-string p0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 153
    .line 154
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
