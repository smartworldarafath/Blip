.class final Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lio/github/vinceglb/filekit/dialogs/FileKitPickerState<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lio/github/vinceglb/filekit/PlatformFile;",
        ">;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.vinceglb.filekit.dialogs.UtilsKt$toPickerStateFlow$1"
    f = "Utils.kt"
    l = {
        0xf,
        0x13,
        0x15,
        0x17
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Ljava/util/List;

.field public o:Ljava/util/Iterator;

.field public p:I

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->s:Ljava/util/List;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;

    .line 2
    .line 3
    iget-object p0, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->s:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->r:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->q:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    iget-object v8, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->s:Ljava/util/List;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    if-eq v2, v7, :cond_0

    .line 20
    .line 21
    if-eq v2, v6, :cond_3

    .line 22
    .line 23
    if-eq v2, v5, :cond_2

    .line 24
    .line 25
    if-ne v2, v4, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v9

    .line 38
    :cond_2
    iget v2, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->p:I

    .line 39
    .line 40
    iget-object v6, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->o:Ljava/util/Iterator;

    .line 41
    .line 42
    iget-object v7, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->n:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move p1, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    if-eqz v8, :cond_a

    .line 57
    .line 58
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_5
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Started;

    .line 67
    .line 68
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-direct {p1, v2}, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Started;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->r:Ljava/lang/Object;

    .line 76
    .line 77
    iput v6, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->q:I

    .line 78
    .line 79
    move-object v2, v0

    .line 80
    check-cast v2, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 81
    .line 82
    iget-object v2, v2, Lkotlinx/coroutines/channels/ChannelCoroutine;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 83
    .line 84
    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->k(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v1, :cond_6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    :goto_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    move-object v6, p1

    .line 96
    move p1, v3

    .line 97
    move-object v7, v8

    .line 98
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_9

    .line 103
    .line 104
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    add-int/lit8 v10, p1, 0x1

    .line 109
    .line 110
    if-ltz p1, :cond_8

    .line 111
    .line 112
    check-cast v2, Lio/github/vinceglb/filekit/PlatformFile;

    .line 113
    .line 114
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Progress;

    .line 115
    .line 116
    invoke-interface {v7, v3, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    invoke-direct {p1, v11, v2}, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Progress;-><init>(ILjava/util/List;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->r:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v7, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->n:Ljava/util/List;

    .line 130
    .line 131
    iput-object v6, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->o:Ljava/util/Iterator;

    .line 132
    .line 133
    iput v10, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->p:I

    .line 134
    .line 135
    iput v5, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->q:I

    .line 136
    .line 137
    move-object v2, v0

    .line 138
    check-cast v2, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 139
    .line 140
    iget-object v2, v2, Lkotlinx/coroutines/channels/ChannelCoroutine;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 141
    .line 142
    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->k(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v1, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move p1, v10

    .line 150
    goto :goto_1

    .line 151
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 152
    .line 153
    .line 154
    throw v9

    .line 155
    :cond_9
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Completed;

    .line 156
    .line 157
    invoke-direct {p1, v8}, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Completed;-><init>(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iput-object v9, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->r:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v9, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->n:Ljava/util/List;

    .line 163
    .line 164
    iput-object v9, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->o:Ljava/util/Iterator;

    .line 165
    .line 166
    iput v4, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->q:I

    .line 167
    .line 168
    check-cast v0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 169
    .line 170
    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelCoroutine;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 171
    .line 172
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->k(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    if-ne p0, v1, :cond_b

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_a
    :goto_2
    iput-object v9, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->r:Ljava/lang/Object;

    .line 180
    .line 181
    iput v7, p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;->q:I

    .line 182
    .line 183
    check-cast v0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 184
    .line 185
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelCoroutine;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 186
    .line 187
    sget-object v0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;->a:Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;

    .line 188
    .line 189
    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->k(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    if-ne p0, v1, :cond_b

    .line 194
    .line 195
    :goto_3
    return-object v1

    .line 196
    :cond_b
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 197
    .line 198
    return-object p0
.end method
