.class final Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1"
    f = "TransferThumbnailStack.kt"
    l = {
        0x2e,
        0x38
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Landroid/content/Context;

.field public o:Ljava/util/Collection;

.field public p:Ljava/util/Iterator;

.field public q:Ljava/util/Collection;

.field public r:I

.field public s:Z

.field public t:I

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/util/List;

.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:Z

.field public final synthetic y:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->v:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->w:Landroid/content/Context;

    .line 4
    .line 5
    iput-boolean p3, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->x:Z

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->y:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;

    .line 2
    .line 3
    iget-boolean v3, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->x:Z

    .line 4
    .line 5
    iget-object v4, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->y:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->v:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->w:Landroid/content/Context;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->u:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->u:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->t:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v4, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v5

    .line 29
    :cond_1
    iget-boolean v2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->s:Z

    .line 30
    .line 31
    iget v6, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->r:I

    .line 32
    .line 33
    iget-object v7, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->q:Ljava/util/Collection;

    .line 34
    .line 35
    check-cast v7, Ljava/util/Collection;

    .line 36
    .line 37
    iget-object v8, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->p:Ljava/util/Iterator;

    .line 38
    .line 39
    iget-object v9, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->o:Ljava/util/Collection;

    .line 40
    .line 41
    check-cast v9, Ljava/util/Collection;

    .line 42
    .line 43
    iget-object v10, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->n:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->v:Ljava/util/List;

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->S(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    .line 60
    .line 61
    const/16 v7, 0xa

    .line 62
    .line 63
    invoke-static {p1, v7}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v7, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->w:Landroid/content/Context;

    .line 75
    .line 76
    iget-boolean v8, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->x:Z

    .line 77
    .line 78
    move-object v10, v7

    .line 79
    move-object v7, v6

    .line 80
    move v6, v2

    .line 81
    move v2, v8

    .line 82
    move-object v8, p1

    .line 83
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lkotlin/Pair;

    .line 94
    .line 95
    iget-object v9, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1}, Lnet/blip/android/UriUtilKt;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    if-eqz v9, :cond_3

    .line 114
    .line 115
    new-instance v9, Landroid/util/Size;

    .line 116
    .line 117
    const/16 v11, 0x190

    .line 118
    .line 119
    invoke-direct {v9, v11, v11}, Landroid/util/Size;-><init>(II)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object v9, v5

    .line 124
    :goto_1
    iput-object v0, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->u:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v10, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->n:Landroid/content/Context;

    .line 127
    .line 128
    move-object v11, v7

    .line 129
    check-cast v11, Ljava/util/Collection;

    .line 130
    .line 131
    iput-object v11, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->o:Ljava/util/Collection;

    .line 132
    .line 133
    iput-object v8, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->p:Ljava/util/Iterator;

    .line 134
    .line 135
    iput-object v11, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->q:Ljava/util/Collection;

    .line 136
    .line 137
    iput v6, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->r:I

    .line 138
    .line 139
    iput-boolean v2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->s:Z

    .line 140
    .line 141
    iput v4, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->t:I

    .line 142
    .line 143
    invoke-static {v10, v0, p1, v9}, Lnet/blip/android/filetypes/FileIconKt;->a(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroid/net/Uri;Landroid/util/Size;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-ne p1, v1, :cond_4

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    move-object v9, v7

    .line 151
    :goto_2
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    .line 152
    .line 153
    invoke-interface {v7, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-object v7, v9

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    check-cast v7, Ljava/util/List;

    .line 159
    .line 160
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const/4 v0, 0x0

    .line 165
    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    .line 166
    .line 167
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    .line 172
    .line 173
    new-instance v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$2;

    .line 179
    .line 180
    iget-object v2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->y:Landroidx/compose/runtime/MutableState;

    .line 181
    .line 182
    invoke-direct {p1, v2}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 183
    .line 184
    .line 185
    iput-object v5, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->u:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v5, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->n:Landroid/content/Context;

    .line 188
    .line 189
    iput-object v5, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->o:Ljava/util/Collection;

    .line 190
    .line 191
    iput-object v5, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->p:Ljava/util/Iterator;

    .line 192
    .line 193
    iput-object v5, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->q:Ljava/util/Collection;

    .line 194
    .line 195
    iput v6, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->r:I

    .line 196
    .line 197
    iput v3, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;->t:I

    .line 198
    .line 199
    invoke-virtual {v0, p1, p0}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    if-ne p0, v1, :cond_6

    .line 204
    .line 205
    :goto_3
    return-object v1

    .line 206
    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    return-object p0
.end method
