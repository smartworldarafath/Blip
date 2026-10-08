.class final Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;
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
    c = "net.blip.android.ui.onboarding.OnboardingCodeEntryStep$Composable$2$1$4$1"
    f = "OnboardingCodeEntryStep.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->n:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->p:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->p:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->n:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->p:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x6

    .line 23
    if-ne v0, v1, :cond_16

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->n:Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 43
    .line 44
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    const-string p0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    .line 49
    .line 50
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_9

    .line 56
    .line 57
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    move v1, v0

    .line 61
    :goto_0
    if-ge v1, p1, :cond_16

    .line 62
    .line 63
    aget-object v2, p0, v1

    .line 64
    .line 65
    check-cast v2, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 66
    .line 67
    move-object v3, v2

    .line 68
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 69
    .line 70
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    move-object v5, v4

    .line 74
    :goto_1
    const/4 v6, 0x1

    .line 75
    const/16 v7, 0x10

    .line 76
    .line 77
    if-eqz v3, :cond_8

    .line 78
    .line 79
    instance-of v8, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 80
    .line 81
    if-eqz v8, :cond_1

    .line 82
    .line 83
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 84
    .line 85
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTransactionsKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :cond_1
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 94
    .line 95
    and-int/lit16 v8, v8, 0x400

    .line 96
    .line 97
    if-eqz v8, :cond_7

    .line 98
    .line 99
    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 100
    .line 101
    if-eqz v8, :cond_7

    .line 102
    .line 103
    move-object v8, v3

    .line 104
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 105
    .line 106
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 107
    .line 108
    move v9, v0

    .line 109
    :goto_2
    if-eqz v8, :cond_6

    .line 110
    .line 111
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 112
    .line 113
    and-int/lit16 v10, v10, 0x400

    .line 114
    .line 115
    if-eqz v10, :cond_5

    .line 116
    .line 117
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    if-ne v9, v6, :cond_2

    .line 120
    .line 121
    move-object v3, v8

    .line 122
    goto :goto_3

    .line 123
    :cond_2
    if-nez v5, :cond_3

    .line 124
    .line 125
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 126
    .line 127
    new-array v10, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 128
    .line 129
    invoke-direct {v5, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move-object v3, v4

    .line 138
    :cond_4
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_3
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    if-ne v9, v6, :cond_7

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    goto :goto_1

    .line 152
    :cond_8
    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 153
    .line 154
    iget-object v3, v2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 155
    .line 156
    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 157
    .line 158
    if-nez v3, :cond_9

    .line 159
    .line 160
    const-string v3, "visitChildren called on an unattached node"

    .line 161
    .line 162
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 166
    .line 167
    new-array v5, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 168
    .line 169
    invoke-direct {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 173
    .line 174
    iget-object v5, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 175
    .line 176
    if-nez v5, :cond_a

    .line 177
    .line 178
    invoke-static {v3, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_a
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    :goto_4
    iget v2, v3, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 186
    .line 187
    if-eqz v2, :cond_15

    .line 188
    .line 189
    add-int/lit8 v2, v2, -0x1

    .line 190
    .line 191
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 196
    .line 197
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 198
    .line 199
    and-int/lit16 v5, v5, 0x400

    .line 200
    .line 201
    if-nez v5, :cond_c

    .line 202
    .line 203
    invoke-static {v3, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_c
    :goto_5
    if-eqz v2, :cond_b

    .line 208
    .line 209
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 210
    .line 211
    and-int/lit16 v5, v5, 0x400

    .line 212
    .line 213
    if-eqz v5, :cond_14

    .line 214
    .line 215
    move-object v5, v4

    .line 216
    :goto_6
    if-eqz v2, :cond_b

    .line 217
    .line 218
    instance-of v8, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 219
    .line 220
    if-eqz v8, :cond_d

    .line 221
    .line 222
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 223
    .line 224
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_13

    .line 229
    .line 230
    goto :goto_9

    .line 231
    :cond_d
    iget v8, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 232
    .line 233
    and-int/lit16 v8, v8, 0x400

    .line 234
    .line 235
    if-eqz v8, :cond_13

    .line 236
    .line 237
    instance-of v8, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 238
    .line 239
    if-eqz v8, :cond_13

    .line 240
    .line 241
    move-object v8, v2

    .line 242
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 243
    .line 244
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 245
    .line 246
    move v9, v0

    .line 247
    :goto_7
    if-eqz v8, :cond_12

    .line 248
    .line 249
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 250
    .line 251
    and-int/lit16 v10, v10, 0x400

    .line 252
    .line 253
    if-eqz v10, :cond_11

    .line 254
    .line 255
    add-int/lit8 v9, v9, 0x1

    .line 256
    .line 257
    if-ne v9, v6, :cond_e

    .line 258
    .line 259
    move-object v2, v8

    .line 260
    goto :goto_8

    .line 261
    :cond_e
    if-nez v5, :cond_f

    .line 262
    .line 263
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 264
    .line 265
    new-array v10, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 266
    .line 267
    invoke-direct {v5, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_f
    if-eqz v2, :cond_10

    .line 271
    .line 272
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    move-object v2, v4

    .line 276
    :cond_10
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_11
    :goto_8
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_12
    if-ne v9, v6, :cond_13

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_13
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    goto :goto_6

    .line 290
    :cond_14
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_16
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    return-object p0
.end method
