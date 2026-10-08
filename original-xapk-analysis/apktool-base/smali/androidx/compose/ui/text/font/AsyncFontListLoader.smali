.class public final Landroidx/compose/ui/text/font/AsyncFontListLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/List;

.field public final k:Landroidx/compose/ui/text/font/TypefaceRequest;

.field public final l:Lkotlin/jvm/functions/Function1;

.field public final m:Landroidx/compose/runtime/MutableState;

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/AndroidFontLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->j:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->k:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->m:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->n:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->s:I

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
    iput v1, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->q:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->s:I

    .line 30
    .line 31
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->l:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->m:Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x2

    .line 43
    if-eq v2, v6, :cond_2

    .line 44
    .line 45
    if-ne v2, v9, :cond_1

    .line 46
    .line 47
    iget v1, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->p:I

    .line 48
    .line 49
    iget v2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->o:I

    .line 50
    .line 51
    iget-object v8, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->m:Ljava/util/List;

    .line 52
    .line 53
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v8

    .line 67
    :cond_2
    iget v2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->p:I

    .line 68
    .line 69
    iget v10, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->o:I

    .line 70
    .line 71
    iget-object v11, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->n:Landroidx/compose/ui/text/font/Font;

    .line 72
    .line 73
    iget-object v12, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->m:Ljava/util/List;

    .line 74
    .line 75
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->k:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 81
    .line 82
    iget v2, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    .line 83
    .line 84
    iget-object v6, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    .line 85
    .line 86
    iget v1, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    .line 87
    .line 88
    invoke-static {v2, p1, v11, v6, v1}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move-object v1, v5

    .line 93
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->f(Lkotlin/coroutines/CoroutineContext;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput-boolean v7, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->n:Z

    .line 108
    .line 109
    new-instance p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 110
    .line 111
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 112
    .line 113
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    return-object v3

    .line 124
    :cond_3
    :try_start_2
    iput-object v12, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->m:Ljava/util/List;

    .line 125
    .line 126
    iput-object v8, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->n:Landroidx/compose/ui/text/font/Font;

    .line 127
    .line 128
    iput v10, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->o:I

    .line 129
    .line 130
    iput v2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->p:I

    .line 131
    .line 132
    iput v9, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->s:I

    .line 133
    .line 134
    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    if-ne p1, v1, :cond_4

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_4
    move v1, v2

    .line 142
    move v2, v10

    .line 143
    move-object v8, v12

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :try_start_3
    iget-object p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->j:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    move-object v8, p1

    .line 155
    move v2, v7

    .line 156
    :goto_2
    if-ge v2, v1, :cond_6

    .line 157
    .line 158
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroidx/compose/ui/text/font/Font;

    .line 163
    .line 164
    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    .line 168
    .line 169
    :goto_3
    add-int/2addr v2, v6

    .line 170
    goto :goto_2

    .line 171
    :cond_6
    iget-object p1, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->f(Lkotlin/coroutines/CoroutineContext;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iput-boolean v7, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->n:Z

    .line 181
    .line 182
    new-instance p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 183
    .line 184
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 185
    .line 186
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :goto_4
    iget-object v0, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->f(Lkotlin/coroutines/CoroutineContext;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    iput-boolean v7, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->n:Z

    .line 204
    .line 205
    new-instance p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 206
    .line 207
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 208
    .line 209
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    throw p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->m:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
