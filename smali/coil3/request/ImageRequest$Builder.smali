.class public final Lcoil3/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcoil3/request/ImageRequest$Defaults;

.field public c:Ljava/lang/Object;

.field public d:Lcoil3/target/Target;

.field public final e:Ljava/util/Map;

.field public f:Lkotlin/coroutines/CoroutineContext;

.field public g:Lkotlin/coroutines/CoroutineContext;

.field public h:Lkotlin/coroutines/CoroutineContext;

.field public final i:Lkotlin/jvm/functions/Function1;

.field public final j:Lkotlin/jvm/functions/Function1;

.field public final k:Lkotlin/jvm/functions/Function1;

.field public l:Lcoil3/size/SizeResolver;

.field public m:Lcoil3/size/Scale;

.field public n:Lcoil3/size/Precision;

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->a:Landroid/content/Context;

    .line 67
    sget-object p1, Lcoil3/request/ImageRequest$Defaults;->o:Lcoil3/request/ImageRequest$Defaults;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    .line 70
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->e:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->f:Lkotlin/coroutines/CoroutineContext;

    .line 72
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->g:Lkotlin/coroutines/CoroutineContext;

    .line 73
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->h:Lkotlin/coroutines/CoroutineContext;

    .line 74
    invoke-static {}, Lcoil3/util/UtilsKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->i:Lkotlin/jvm/functions/Function1;

    .line 75
    invoke-static {}, Lcoil3/util/UtilsKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-static {}, Lcoil3/util/UtilsKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->k:Lkotlin/jvm/functions/Function1;

    .line 77
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 78
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->m:Lcoil3/size/Scale;

    .line 79
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->n:Lcoil3/size/Precision;

    .line 80
    sget-object p1, Lcoil3/Extras;->b:Lcoil3/Extras;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/request/ImageRequest;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->a:Landroid/content/Context;

    .line 5
    .line 6
    iget-object p2, p1, Lcoil3/request/ImageRequest;->t:Lcoil3/request/ImageRequest$Defaults;

    .line 7
    .line 8
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 9
    .line 10
    iget-object p2, p1, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p2, p1, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 15
    .line 16
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    .line 17
    .line 18
    iget-object p2, p1, Lcoil3/request/ImageRequest;->d:Ljava/util/Map;

    .line 19
    .line 20
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->e:Ljava/util/Map;

    .line 21
    .line 22
    iget-object p2, p1, Lcoil3/request/ImageRequest;->s:Lcoil3/request/ImageRequest$Defined;

    .line 23
    .line 24
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->a:Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->f:Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->b:Lkotlin/coroutines/CoroutineContext;

    .line 29
    .line 30
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->g:Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->c:Lkotlin/coroutines/CoroutineContext;

    .line 33
    .line 34
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->h:Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->d:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->i:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->e:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->f:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->k:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->g:Lcoil3/size/SizeResolver;

    .line 49
    .line 50
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 51
    .line 52
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->h:Lcoil3/size/Scale;

    .line 53
    .line 54
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->m:Lcoil3/size/Scale;

    .line 55
    .line 56
    iget-object p2, p2, Lcoil3/request/ImageRequest$Defined;->i:Lcoil3/size/Precision;

    .line 57
    .line 58
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->n:Lcoil3/size/Precision;

    .line 59
    .line 60
    iget-object p1, p1, Lcoil3/request/ImageRequest;->r:Lcoil3/Extras;

    .line 61
    .line 62
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->o:Ljava/lang/Object;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a()Lcoil3/request/ImageRequest;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcoil3/request/NullRequestData;->a:Lcoil3/request/NullRequestData;

    .line 8
    .line 9
    :cond_0
    move-object v4, v1

    .line 10
    iget-object v5, v0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->e:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->b(Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcoil3/util/Collections_jvmCommonKt;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    move-object v6, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    if-eqz v2, :cond_d

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 42
    .line 43
    iget-object v7, v1, Lcoil3/request/ImageRequest$Defaults;->a:Lokio/FileSystem;

    .line 44
    .line 45
    iget-object v11, v1, Lcoil3/request/ImageRequest$Defaults;->e:Lcoil3/request/CachePolicy;

    .line 46
    .line 47
    iget-object v12, v1, Lcoil3/request/ImageRequest$Defaults;->f:Lcoil3/request/CachePolicy;

    .line 48
    .line 49
    iget-object v13, v1, Lcoil3/request/ImageRequest$Defaults;->g:Lcoil3/request/CachePolicy;

    .line 50
    .line 51
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->f:Lkotlin/coroutines/CoroutineContext;

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->b:Lkotlin/coroutines/CoroutineContext;

    .line 56
    .line 57
    :cond_2
    move-object v8, v2

    .line 58
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->g:Lkotlin/coroutines/CoroutineContext;

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->c:Lkotlin/coroutines/CoroutineContext;

    .line 63
    .line 64
    :cond_3
    move-object v9, v2

    .line 65
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->h:Lkotlin/coroutines/CoroutineContext;

    .line 66
    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->d:Lkotlin/coroutines/CoroutineContext;

    .line 70
    .line 71
    :cond_4
    move-object v10, v2

    .line 72
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->i:Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->h:Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    :cond_5
    move-object v14, v2

    .line 79
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->i:Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    :cond_6
    move-object v15, v2

    .line 86
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->k:Lkotlin/jvm/functions/Function1;

    .line 87
    .line 88
    if-nez v2, :cond_7

    .line 89
    .line 90
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->j:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    :cond_7
    move-object/from16 v16, v2

    .line 93
    .line 94
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 95
    .line 96
    if-nez v2, :cond_8

    .line 97
    .line 98
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->k:Lcoil3/size/SizeResolver;

    .line 99
    .line 100
    :cond_8
    move-object/from16 v17, v2

    .line 101
    .line 102
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->m:Lcoil3/size/Scale;

    .line 103
    .line 104
    if-nez v2, :cond_9

    .line 105
    .line 106
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->l:Lcoil3/size/Scale;

    .line 107
    .line 108
    :cond_9
    move-object/from16 v18, v2

    .line 109
    .line 110
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->n:Lcoil3/size/Precision;

    .line 111
    .line 112
    if-nez v2, :cond_a

    .line 113
    .line 114
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->m:Lcoil3/size/Precision;

    .line 115
    .line 116
    :cond_a
    move-object/from16 v19, v2

    .line 117
    .line 118
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->o:Ljava/lang/Object;

    .line 119
    .line 120
    instance-of v2, v1, Lcoil3/Extras$Builder;

    .line 121
    .line 122
    if-eqz v2, :cond_b

    .line 123
    .line 124
    check-cast v1, Lcoil3/Extras$Builder;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_2
    move-object/from16 v20, v1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_b
    instance-of v2, v1, Lcoil3/Extras;

    .line 134
    .line 135
    if-eqz v2, :cond_c

    .line 136
    .line 137
    check-cast v1, Lcoil3/Extras;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->f:Lkotlin/coroutines/CoroutineContext;

    .line 141
    .line 142
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->g:Lkotlin/coroutines/CoroutineContext;

    .line 143
    .line 144
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->h:Lkotlin/coroutines/CoroutineContext;

    .line 145
    .line 146
    move-object/from16 v22, v1

    .line 147
    .line 148
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 149
    .line 150
    move-object/from16 v28, v1

    .line 151
    .line 152
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->m:Lcoil3/size/Scale;

    .line 153
    .line 154
    move-object/from16 v29, v1

    .line 155
    .line 156
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->n:Lcoil3/size/Precision;

    .line 157
    .line 158
    new-instance v21, Lcoil3/request/ImageRequest$Defined;

    .line 159
    .line 160
    move-object/from16 v30, v1

    .line 161
    .line 162
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->i:Lkotlin/jvm/functions/Function1;

    .line 163
    .line 164
    move-object/from16 v25, v1

    .line 165
    .line 166
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/jvm/functions/Function1;

    .line 167
    .line 168
    move-object/from16 v26, v1

    .line 169
    .line 170
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->k:Lkotlin/jvm/functions/Function1;

    .line 171
    .line 172
    move-object/from16 v27, v1

    .line 173
    .line 174
    move-object/from16 v23, v2

    .line 175
    .line 176
    move-object/from16 v24, v3

    .line 177
    .line 178
    invoke-direct/range {v21 .. v30}, Lcoil3/request/ImageRequest$Defined;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 182
    .line 183
    new-instance v2, Lcoil3/request/ImageRequest;

    .line 184
    .line 185
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->a:Landroid/content/Context;

    .line 186
    .line 187
    move-object/from16 v22, v1

    .line 188
    .line 189
    invoke-direct/range {v2 .. v22}, Lcoil3/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil3/target/Target;Ljava/util/Map;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;Lcoil3/request/ImageRequest$Defined;Lcoil3/request/ImageRequest$Defaults;)V

    .line 190
    .line 191
    .line 192
    return-object v2

    .line 193
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 202
    .line 203
    .line 204
    throw v0
.end method
