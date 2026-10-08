.class final Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;
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
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.LaunchersKt$saveToMediaStore$2"
    f = "Launchers.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lnet/blip/android/ui/util/CameraLauncherOptions;

.field public final synthetic p:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/blip/android/ui/util/CameraLauncherOptions;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->n:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->o:Lnet/blip/android/ui/util/CameraLauncherOptions;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->p:Ljava/io/File;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->o:Lnet/blip/android/ui/util/CameraLauncherOptions;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->p:Ljava/io/File;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->n:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;-><init>(Landroid/content/Context;Lnet/blip/android/ui/util/CameraLauncherOptions;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->n:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->o:Lnet/blip/android/ui/util/CameraLauncherOptions;

    .line 15
    .line 16
    const-string v3, "_display_name"

    .line 17
    .line 18
    iget-object v4, v2, Lnet/blip/android/ui/util/CameraLauncherOptions;->a:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ".jpg"

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v3, "mime_type"

    .line 45
    .line 46
    const-string v4, "image/jpeg"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    const-string v4, "is_pending"

    .line 54
    .line 55
    const/16 v5, 0x1d

    .line 56
    .line 57
    if-lt v3, v5, :cond_0

    .line 58
    .line 59
    :try_start_1
    const-string v3, "relative_path"

    .line 60
    .line 61
    iget-object v2, v2, Lnet/blip/android/ui/util/CameraLauncherOptions;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Ljava/lang/Integer;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_4

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 83
    .line 84
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez v2, :cond_1

    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v6, 0x0

    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$saveToMediaStore$2;->p:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    .line 105
    .line 106
    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    const/16 p0, 0x2000

    .line 110
    .line 111
    :try_start_3
    new-array p0, p0, [B

    .line 112
    .line 113
    invoke-virtual {v7, p0}, Ljava/io/InputStream;->read([B)I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    const-wide/16 v9, 0x0

    .line 118
    .line 119
    :goto_1
    if-ltz v8, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, p0, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 122
    .line 123
    .line 124
    int-to-long v11, v8

    .line 125
    add-long/2addr v9, v11

    .line 126
    invoke-virtual {v7, p0}, Ljava/io/InputStream;->read([B)I

    .line 127
    .line 128
    .line 129
    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 132
    .line 133
    .line 134
    new-instance p0, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-direct {p0, v9, v10}, Ljava/lang/Long;-><init>(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    .line 138
    .line 139
    :try_start_5
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_2

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    :try_start_7
    invoke-static {v7, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    :goto_2
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 153
    :catchall_3
    move-exception v0

    .line 154
    :try_start_9
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_3
    :goto_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    if-lt p0, v5, :cond_4

    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 163
    .line 164
    .line 165
    new-instance p0, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-direct {p0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0, v2, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 178
    .line 179
    .line 180
    :cond_4
    return-object v2

    .line 181
    :goto_4
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 182
    .line 183
    new-instance v1, Lkotlin/Pair;

    .line 184
    .line 185
    const-string v2, "err"

    .line 186
    .line 187
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    filled-new-array {v1}, [Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    const-string v0, "MediaStore"

    .line 198
    .line 199
    const-string v1, "saving to media store"

    .line 200
    .line 201
    invoke-static {v0, v1, p0}, Lnet/blip/libblip/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 202
    .line 203
    .line 204
    return-object p1
.end method
