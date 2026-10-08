.class final Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lnet/blip/android/ui/util/UmbrellaContentPickerType;",
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
    c = "net.blip.android.ui.util.UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1"
    f = "UmbrellaContentPicker.kt"
    l = {
        0x5c,
        0x63,
        0x69,
        0x6c,
        0x70,
        0x77
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;

.field public final synthetic r:Landroidx/navigation/NavHostController;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Lnet/blip/shared/ScratchFileWriter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Landroid/content/Context;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->p:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->q:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->r:Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->s:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->t:Lnet/blip/shared/ScratchFileWriter;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->s:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->t:Lnet/blip/shared/ScratchFileWriter;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->p:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->q:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->r:Landroidx/navigation/NavHostController;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Landroid/content/Context;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 8
    .line 9
    iget-object v3, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->s:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v4, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v5

    .line 23
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/16 v0, 0x9

    .line 59
    .line 60
    iget-object v2, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->p:Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    if-eqz p1, :cond_f

    .line 64
    .line 65
    const/4 v7, 0x2

    .line 66
    if-eq p1, v6, :cond_d

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    if-eq p1, v7, :cond_b

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    if-eq p1, v0, :cond_7

    .line 73
    .line 74
    const/4 v6, 0x5

    .line 75
    if-eq p1, v2, :cond_4

    .line 76
    .line 77
    if-ne p1, v6, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->t:Lnet/blip/shared/ScratchFileWriter;

    .line 80
    .line 81
    :try_start_1
    iput-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 82
    .line 83
    const/4 v0, 0x6

    .line 84
    iput v0, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 85
    .line 86
    invoke-static {v3, p1, p0}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->a(Landroid/content/Context;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v1, :cond_0

    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_0
    :goto_0
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    new-instance p1, Lkotlin/Result$Failure;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-nez p0, :cond_1

    .line 107
    .line 108
    move-object v4, p1

    .line 109
    goto :goto_3

    .line 110
    :cond_1
    const-string p1, "ClipboardContent"

    .line 111
    .line 112
    const-string v0, "Could not read clipboard"

    .line 113
    .line 114
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_3
    check-cast v4, Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_2

    .line 124
    .line 125
    const-string p0, "Nothing to send from clipboard"

    .line 126
    .line 127
    const/4 p1, 0x0

    .line 128
    invoke-static {v3, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 133
    .line 134
    .line 135
    :cond_2
    return-object v4

    .line 136
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 137
    .line 138
    .line 139
    return-object v5

    .line 140
    :cond_4
    new-instance p1, Llh;

    .line 141
    .line 142
    iget-object v2, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->r:Landroidx/navigation/NavHostController;

    .line 143
    .line 144
    invoke-direct {p1, v0, v2}, Llh;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 148
    .line 149
    iput v6, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 150
    .line 151
    invoke-static {v2, p1, p0}, Lnet/blip/android/ui/navigation/NavigationResultKt;->a(Landroidx/navigation/NavController;Llh;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v1, :cond_5

    .line 156
    .line 157
    goto/16 :goto_7

    .line 158
    .line 159
    :cond_5
    :goto_4
    check-cast p1, Ljava/util/List;

    .line 160
    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    new-instance p0, Ljava/util/ArrayList;

    .line 164
    .line 165
    const/16 v0, 0xa

    .line 166
    .line 167
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/net/Uri;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_6
    return-object p0

    .line 199
    :cond_7
    new-instance p1, Lnet/blip/android/ui/util/CameraLauncherOptions;

    .line 200
    .line 201
    invoke-direct {p1}, Lnet/blip/android/ui/util/CameraLauncherOptions;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 205
    .line 206
    iput v2, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 207
    .line 208
    iget-object v0, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->q:Lkotlin/jvm/functions/Function2;

    .line 209
    .line 210
    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-ne p1, v1, :cond_8

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_8
    :goto_6
    check-cast p1, Landroid/net/Uri;

    .line 218
    .line 219
    if-eqz p1, :cond_9

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    :cond_9
    if-eqz v5, :cond_a

    .line 226
    .line 227
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    :cond_a
    return-object v4

    .line 233
    :cond_b
    new-instance p1, Lnet/blip/shared/ContentPicker$Options;

    .line 234
    .line 235
    sget-object v3, Lnet/blip/shared/ContentPicker$ContentType$Directory;->a:Lnet/blip/shared/ContentPicker$ContentType$Directory;

    .line 236
    .line 237
    const/16 v4, 0xd

    .line 238
    .line 239
    invoke-direct {p1, v3, v5, v4}, Lnet/blip/shared/ContentPicker$Options;-><init>(Lnet/blip/shared/ContentPicker$ContentType;Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    iput-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 243
    .line 244
    iput v0, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 245
    .line 246
    invoke-interface {v2, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-ne p0, v1, :cond_c

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_c
    return-object p0

    .line 254
    :cond_d
    new-instance p1, Lnet/blip/shared/ContentPicker$Options;

    .line 255
    .line 256
    new-instance v3, Lnet/blip/shared/ContentPicker$ContentType$File;

    .line 257
    .line 258
    invoke-direct {v3}, Lnet/blip/shared/ContentPicker$ContentType$File;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-direct {p1, v3, v5, v0}, Lnet/blip/shared/ContentPicker$Options;-><init>(Lnet/blip/shared/ContentPicker$ContentType;Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    iput-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 265
    .line 266
    iput v7, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 267
    .line 268
    invoke-interface {v2, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    if-ne p0, v1, :cond_e

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_e
    return-object p0

    .line 276
    :cond_f
    new-instance p1, Lnet/blip/shared/ContentPicker$Options;

    .line 277
    .line 278
    sget-object v3, Lnet/blip/shared/ContentPicker$ContentType$ImageAndVideo;->a:Lnet/blip/shared/ContentPicker$ContentType$ImageAndVideo;

    .line 279
    .line 280
    invoke-direct {p1, v3, v5, v0}, Lnet/blip/shared/ContentPicker$Options;-><init>(Lnet/blip/shared/ContentPicker$ContentType;Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    iput-object v5, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 284
    .line 285
    iput v6, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;->n:I

    .line 286
    .line 287
    invoke-interface {v2, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    if-ne p0, v1, :cond_10

    .line 292
    .line 293
    :goto_7
    return-object v1

    .line 294
    :cond_10
    return-object p0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
