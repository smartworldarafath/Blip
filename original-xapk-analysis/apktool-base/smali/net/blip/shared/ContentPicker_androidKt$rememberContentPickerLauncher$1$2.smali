.class final Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lnet/blip/shared/ContentPicker$Options;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.shared.ContentPicker_androidKt$rememberContentPickerLauncher$1$2"
    f = "ContentPicker.android.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->p:Landroidx/activity/ComponentActivity;

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
    check-cast p1, Lnet/blip/shared/ContentPicker$Options;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->p:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;-><init>(Landroidx/activity/ComponentActivity;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/blip/shared/ContentPicker$Options;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->n:I

    .line 8
    .line 9
    sget-object v3, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 10
    .line 11
    const-string v4, "content_type"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->p:Landroidx/activity/ComponentActivity;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 37
    .line 38
    new-instance p1, Lkotlin/Pair;

    .line 39
    .line 40
    const-string v1, "reason"

    .line 41
    .line 42
    const-string v2, "missing_activity"

    .line 43
    .line 44
    invoke-direct {p1, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lnet/blip/shared/ContentPicker$Options;->b:Lnet/blip/shared/ContentPicker$ContentType;

    .line 48
    .line 49
    invoke-static {v0}, Lnet/blip/shared/ContentPicker_androidKt;->a(Lnet/blip/shared/ContentPicker$ContentType;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lkotlin/Pair;

    .line 54
    .line 55
    invoke-direct {v1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    filled-new-array {p1, v1}, [Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-string p0, "content picker unavailable"

    .line 66
    .line 67
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :cond_2
    iput-object v0, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->o:Ljava/lang/Object;

    .line 72
    .line 73
    iput v5, p0, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;->n:I

    .line 74
    .line 75
    invoke-static {v0, p0}, Lnet/blip/shared/ContentPickerKt;->a(Lnet/blip/shared/ContentPicker$Options;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_3

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 83
    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move-object v3, p1

    .line 88
    :goto_1
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 89
    .line 90
    iget-object p1, v0, Lnet/blip/shared/ContentPicker$Options;->b:Lnet/blip/shared/ContentPicker$ContentType;

    .line 91
    .line 92
    invoke-static {p1}, Lnet/blip/shared/ContentPicker_androidKt;->a(Lnet/blip/shared/ContentPicker$ContentType;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v1, Lkotlin/Pair;

    .line 97
    .line 98
    invoke-direct {v1, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-boolean p1, v0, Lnet/blip/shared/ContentPicker$Options;->c:Z

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v0, Lkotlin/Pair;

    .line 108
    .line 109
    const-string v2, "multiple"

    .line 110
    .line 111
    invoke-direct {v0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    new-instance v2, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lkotlin/Pair;

    .line 124
    .line 125
    const-string v4, "result_count"

    .line 126
    .line 127
    invoke-direct {p1, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/util/ArrayList;

    .line 131
    .line 132
    const/16 v4, 0xa

    .line 133
    .line 134
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_7

    .line 150
    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Ljava/lang/String;

    .line 156
    .line 157
    const-string v7, "content://"

    .line 158
    .line 159
    invoke-static {v6, v7, v5}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_5

    .line 164
    .line 165
    const-string v6, "content_uri"

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    const-string v7, "file://"

    .line 169
    .line 170
    invoke-static {v6, v7, v5}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_6

    .line 175
    .line 176
    const-string v6, "file_uri"

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    const-string v6, "path"

    .line 180
    .line 181
    :goto_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const/4 v8, 0x0

    .line 198
    const/16 v9, 0x3e

    .line 199
    .line 200
    const-string v5, ","

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    new-instance v4, Lkotlin/Pair;

    .line 209
    .line 210
    const-string v5, "location_types"

    .line 211
    .line 212
    invoke-direct {v4, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    filled-new-array {v1, v0, p1, v4}, [Lkotlin/Pair;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const-string p0, "content picker completed"

    .line 223
    .line 224
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 225
    .line 226
    .line 227
    return-object v3
.end method
