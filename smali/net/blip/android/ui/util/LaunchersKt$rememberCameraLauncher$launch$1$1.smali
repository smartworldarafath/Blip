.class final Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lnet/blip/android/ui/util/CameraLauncherOptions;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.LaunchersKt$rememberCameraLauncher$launch$1$1"
    f = "Launchers.kt"
    l = {
        0x9f,
        0xa7,
        0xac
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Ljava/io/File;

.field public o:Landroid/net/Uri;

.field public p:Z

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Lnet/blip/android/ui/util/SuspendingLauncher;

.field public final synthetic u:Lnet/blip/android/ui/util/SuspendingPermissionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/blip/android/ui/util/SuspendingLauncher;Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->s:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->t:Lnet/blip/android/ui/util/SuspendingLauncher;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->u:Lnet/blip/android/ui/util/SuspendingPermissionState;

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
    check-cast p1, Lnet/blip/android/ui/util/CameraLauncherOptions;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->t:Lnet/blip/android/ui/util/SuspendingLauncher;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->u:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->s:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;-><init>(Landroid/content/Context;Lnet/blip/android/ui/util/SuspendingLauncher;Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->r:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->u:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->r:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lnet/blip/android/ui/util/CameraLauncherOptions;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->q:I

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    iget-object v7, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->s:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    if-eq v3, v6, :cond_2

    .line 20
    .line 21
    if-eq v3, v5, :cond_1

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->o:Landroid/net/Uri;

    .line 26
    .line 27
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->n:Ljava/io/File;

    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v8

    .line 40
    :cond_1
    iget-boolean v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->p:Z

    .line 41
    .line 42
    iget-object v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->o:Landroid/net/Uri;

    .line 43
    .line 44
    iget-object v5, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->n:Ljava/io/File;

    .line 45
    .line 46
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_2
    iget-object v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->o:Landroid/net/Uri;

    .line 52
    .line 53
    iget-object v6, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->n:Ljava/io/File;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/io/File;

    .line 63
    .line 64
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v7, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v9, v1, Lnet/blip/android/ui/util/CameraLauncherOptions;->a:Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v9, ".jpg"

    .line 85
    .line 86
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-direct {p1, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const v3, 0x7f11007e

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v7, v3, p1}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v9, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->t:Lnet/blip/android/ui/util/SuspendingLauncher;

    .line 108
    .line 109
    iget-object v9, v9, Lnet/blip/android/ui/util/SuspendingLauncher;->a:Lkotlin/jvm/functions/Function2;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->r:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->n:Ljava/io/File;

    .line 117
    .line 118
    iput-object v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->o:Landroid/net/Uri;

    .line 119
    .line 120
    iput v6, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->q:I

    .line 121
    .line 122
    invoke-interface {v9, v3, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-ne v6, v2, :cond_4

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_4
    move-object v11, v6

    .line 130
    move-object v6, p1

    .line 131
    move-object p1, v11

    .line 132
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_a

    .line 139
    .line 140
    :try_start_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 141
    .line 142
    const/16 v10, 0x1c

    .line 143
    .line 144
    if-gt v9, v10, :cond_7

    .line 145
    .line 146
    iget-object v9, v0, Lnet/blip/android/ui/util/SuspendingPermissionState;->a:Lcom/google/accompanist/permissions/PermissionStatus;

    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    sget-object v10, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    .line 152
    .line 153
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-nez v9, :cond_7

    .line 158
    .line 159
    iget-object v0, v0, Lnet/blip/android/ui/util/SuspendingPermissionState;->b:Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    iput-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->r:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v6, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->n:Ljava/io/File;

    .line 164
    .line 165
    iput-object v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->o:Landroid/net/Uri;

    .line 166
    .line 167
    iput-boolean p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->p:Z

    .line 168
    .line 169
    iput v5, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->q:I

    .line 170
    .line 171
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-ne v0, v2, :cond_5

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move-object v5, v0

    .line 179
    move v0, p1

    .line 180
    move-object p1, v5

    .line 181
    move-object v5, v6

    .line 182
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_6

    .line 189
    .line 190
    return-object v3

    .line 191
    :cond_6
    move p1, v0

    .line 192
    :goto_2
    move-object v0, v3

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    move-object v5, v6

    .line 195
    goto :goto_2

    .line 196
    :goto_3
    iput-object v8, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->r:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v5, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->n:Ljava/io/File;

    .line 199
    .line 200
    iput-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->o:Landroid/net/Uri;

    .line 201
    .line 202
    iput-boolean p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->p:Z

    .line 203
    .line 204
    iput v4, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;->q:I

    .line 205
    .line 206
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 207
    .line 208
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 209
    .line 210
    new-instance v3, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;

    .line 211
    .line 212
    invoke-direct {v3, v7, v1, v5, v8}, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;-><init>(Landroid/content/Context;Lnet/blip/android/ui/util/CameraLauncherOptions;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 213
    .line 214
    .line 215
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-ne p1, v2, :cond_8

    .line 220
    .line 221
    :goto_4
    return-object v2

    .line 222
    :cond_8
    move-object p0, v5

    .line 223
    :goto_5
    check-cast p1, Landroid/net/Uri;

    .line 224
    .line 225
    if-eqz p1, :cond_9

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 228
    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_9
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 232
    .line 233
    const-string p1, "CameraLauncher"

    .line 234
    .line 235
    const-string v1, "failed saving to MediaStore; keeping in app storage"

    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    new-array v2, v2, [Lkotlin/Pair;

    .line 239
    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {p1, v1, v2}, Lnet/blip/libblip/Logger;->k(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :catch_0
    return-object v8

    .line 248
    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 249
    .line 250
    .line 251
    return-object v8
.end method
