.class final Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;
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
    c = "net.blip.android.internetshortcut.InternetShortcutKt$internetShortcutBrowserUriOrNull$2"
    f = "InternetShortcut.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Landroid/net/Uri;

.field public final synthetic p:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->o:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->p:Landroid/content/Context;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->o:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->p:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;-><init>(Landroid/net/Uri;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->n:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->o:Landroid/net/Uri;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/android/internetshortcut/InternetShortcutKt$internetShortcutBrowserUriOrNull$2;->p:Landroid/content/Context;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    const/16 v3, 0x2e

    .line 27
    .line 28
    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v0

    .line 34
    :goto_0
    const-string v2, "url"

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_7

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const v4, 0x2ff57c

    .line 54
    .line 55
    .line 56
    if-eq v2, v4, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string v2, "file"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    invoke-static {p0}, Lokio/Okio;->e(Ljava/io/InputStream;)Lokio/Source;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string p1, "Unable to open internet shortcut"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_3
    new-instance p0, Ljava/io/File;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Source;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const-string p0, "Required value was null."

    .line 110
    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_5
    new-instance p0, Ljava/io/File;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Source;

    .line 127
    .line 128
    .line 129
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_2
    :try_start_1
    new-instance p1, Lokio/Buffer;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    const-wide/16 v1, 0x2000

    .line 136
    .line 137
    invoke-interface {p0, v1, v2, p1}, Lokio/Source;->J0(JLokio/Buffer;)J

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lokio/Buffer;->P()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lnet/blip/shared/InternetShortcut$Companion;->a(Ljava/lang/String;)Lnet/blip/shared/InternetShortcut;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iget-object p0, p0, Lnet/blip/shared/InternetShortcut;->c:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string v1, "http"

    .line 162
    .line 163
    invoke-static {p1, v1, v3}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v1, "https"

    .line 174
    .line 175
    invoke-static {p1, v1, v3}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    const-string p0, "Internet shortcut is not an HTTP(S) URL"

    .line 183
    .line 184
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :catchall_1
    move-exception p1

    .line 191
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 192
    :catchall_2
    move-exception v1

    .line 193
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    throw v1

    .line 197
    :cond_7
    const-string p0, "Location is not a .url file"

    .line 198
    .line 199
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    :goto_3
    new-instance p1, Lkotlin/Result$Failure;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    move-object p0, p1

    .line 211
    :cond_8
    :goto_4
    nop

    .line 212
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 213
    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_9
    move-object v0, p0

    .line 218
    :goto_5
    return-object v0
.end method
