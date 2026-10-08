.class public abstract Lnet/blip/shared/ContentPickerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/shared/ContentPicker$Options;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lnet/blip/shared/ContentPickerKt$launch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/blip/shared/ContentPickerKt$launch$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/shared/ContentPickerKt$launch$1;->n:I

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
    iput v1, v0, Lnet/blip/shared/ContentPickerKt$launch$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/shared/ContentPickerKt$launch$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/blip/shared/ContentPickerKt$launch$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/shared/ContentPickerKt$launch$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v4

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput v3, v0, Lnet/blip/shared/ContentPickerKt$launch$1;->n:I

    .line 53
    .line 54
    invoke-static {p0, v0}, Lnet/blip/shared/ContentPickerKt;->b(Lnet/blip/shared/ContentPicker$Options;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v1, :cond_3

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    return-object p1

    .line 64
    :goto_2
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 65
    .line 66
    new-instance v0, Lkotlin/Pair;

    .line 67
    .line 68
    const-string v1, "err"

    .line 69
    .line 70
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    filled-new-array {v0}, [Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string p1, "content picker failed"

    .line 81
    .line 82
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :catch_1
    move-exception p0

    .line 87
    throw p0
.end method

.method public static final b(Lnet/blip/shared/ContentPicker$Options;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->n:I

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
    iput v1, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v5, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lnet/blip/shared/ContentPicker$Options;->b:Lnet/blip/shared/ContentPicker$ContentType;

    .line 67
    .line 68
    instance-of v2, p1, Lnet/blip/shared/ContentPicker$ContentType$Directory;

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    iget-object p0, p0, Lnet/blip/shared/ContentPicker$Options;->d:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    invoke-static {p0}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->b(Ljava/lang/String;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    move-object p0, v6

    .line 82
    :goto_1
    iput v5, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->n:I

    .line 83
    .line 84
    invoke-static {p0, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->c(Lio/github/vinceglb/filekit/PlatformFile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v1, :cond_6

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    :goto_2
    check-cast p1, Lio/github/vinceglb/filekit/PlatformFile;

    .line 92
    .line 93
    if-eqz p1, :cond_11

    .line 94
    .line 95
    invoke-static {p1}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->c(Lio/github/vinceglb/filekit/PlatformFile;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_7
    instance-of v5, p1, Lnet/blip/shared/ContentPicker$ContentType$File;

    .line 105
    .line 106
    if-eqz v5, :cond_9

    .line 107
    .line 108
    check-cast p1, Lnet/blip/shared/ContentPicker$ContentType$File;

    .line 109
    .line 110
    iget-object p1, p1, Lnet/blip/shared/ContentPicker$ContentType$File;->a:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitType$File;

    .line 119
    .line 120
    invoke-direct {p1, v6}, Lio/github/vinceglb/filekit/dialogs/FileKitType$File;-><init>(Ljava/util/Set;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_8
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitType$File;

    .line 125
    .line 126
    iget-object v2, p0, Lnet/blip/shared/ContentPicker$Options;->b:Lnet/blip/shared/ContentPicker$ContentType;

    .line 127
    .line 128
    check-cast v2, Lnet/blip/shared/ContentPicker$ContentType$File;

    .line 129
    .line 130
    iget-object v2, v2, Lnet/blip/shared/ContentPicker$ContentType$File;->a:Ljava/util/List;

    .line 131
    .line 132
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {p1, v2}, Lio/github/vinceglb/filekit/dialogs/FileKitType$File;-><init>(Ljava/util/Set;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    instance-of v5, p1, Lnet/blip/shared/ContentPicker$ContentType$Image;

    .line 141
    .line 142
    if-eqz v5, :cond_a

    .line 143
    .line 144
    sget-object p1, Lio/github/vinceglb/filekit/dialogs/FileKitType$Image;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$Image;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_a
    instance-of v5, p1, Lnet/blip/shared/ContentPicker$ContentType$Video;

    .line 148
    .line 149
    if-eqz v5, :cond_b

    .line 150
    .line 151
    sget-object p1, Lio/github/vinceglb/filekit/dialogs/FileKitType$Video;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$Video;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_b
    instance-of p1, p1, Lnet/blip/shared/ContentPicker$ContentType$ImageAndVideo;

    .line 155
    .line 156
    if-eqz p1, :cond_12

    .line 157
    .line 158
    sget-object p1, Lio/github/vinceglb/filekit/dialogs/FileKitType$ImageAndVideo;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$ImageAndVideo;

    .line 159
    .line 160
    :goto_3
    iget-boolean p0, p0, Lnet/blip/shared/ContentPicker$Options;->c:Z

    .line 161
    .line 162
    if-eqz p0, :cond_d

    .line 163
    .line 164
    new-instance p0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Multiple;

    .line 165
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    iput v4, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->n:I

    .line 170
    .line 171
    invoke-static {p1, p0, v0}, Lio/github/vinceglb/filekit/dialogs/FileKitKt;->a(Lio/github/vinceglb/filekit/dialogs/FileKitType;Lio/github/vinceglb/filekit/dialogs/FileKitMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-ne p1, v1, :cond_c

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_c
    :goto_4
    check-cast p1, Ljava/util/List;

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_d
    iput v3, v0, Lnet/blip/shared/ContentPickerKt$launchOrThrow$1;->n:I

    .line 182
    .line 183
    sget-object p0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;->a:Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;

    .line 184
    .line 185
    invoke-static {p1, p0, v0}, Lio/github/vinceglb/filekit/dialogs/FileKitKt;->a(Lio/github/vinceglb/filekit/dialogs/FileKitType;Lio/github/vinceglb/filekit/dialogs/FileKitMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-ne p1, v1, :cond_e

    .line 190
    .line 191
    :goto_5
    return-object v1

    .line 192
    :cond_e
    :goto_6
    check-cast p1, Lio/github/vinceglb/filekit/PlatformFile;

    .line 193
    .line 194
    if-eqz p1, :cond_f

    .line 195
    .line 196
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    goto :goto_7

    .line 201
    :cond_f
    move-object p1, v6

    .line 202
    :goto_7
    if-eqz p1, :cond_11

    .line 203
    .line 204
    new-instance p0, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_10

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lio/github/vinceglb/filekit/PlatformFile;

    .line 224
    .line 225
    invoke-static {v0}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->c(Lio/github/vinceglb/filekit/PlatformFile;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_10
    return-object p0

    .line 234
    :cond_11
    return-object v6

    .line 235
    :cond_12
    if-eqz v2, :cond_13

    .line 236
    .line 237
    invoke-static {}, Lio/sentry/d;->d()V

    .line 238
    .line 239
    .line 240
    return-object v6

    .line 241
    :cond_13
    invoke-static {}, Lk8;->e()V

    .line 242
    .line 243
    .line 244
    return-object v6
.end method
