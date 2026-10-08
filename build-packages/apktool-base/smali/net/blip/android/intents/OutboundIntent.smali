.class public abstract Lnet/blip/android/intents/OutboundIntent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 4

    .line 1
    const v0, 0x7f11007e

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v2, Lkotlin/Pair;

    .line 21
    .line 22
    const-string v3, "path"

    .line 23
    .line 24
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "Unable to open this file because its name is invalid"

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "android.intent.action.VIEW"

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    const/high16 v3, 0x14000000

    .line 37
    .line 38
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "resource/folder"

    .line 51
    .line 52
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v2, "vnd.android.document/directory"

    .line 80
    .line 81
    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 95
    .line 96
    .line 97
    :try_start_3
    const-string p1, "Install a 3rd party file manager to open folders directly"

    .line 98
    .line 99
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 104
    .line 105
    .line 106
    new-instance p1, Landroid/content/Intent;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v0, "android.intent.action.VIEW_DOWNLOADS"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_0
    invoke-static {p0, p1}, Lnet/blip/android/intents/OutboundIntent;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-nez v0, :cond_1

    .line 132
    .line 133
    :catch_2
    :goto_1
    return-void

    .line 134
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 135
    .line 136
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    const v0, 0x14000001

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    :try_start_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :catch_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/16 v0, 0x2e

    .line 163
    .line 164
    const-string v2, ""

    .line 165
    .line 166
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_2

    .line 175
    .line 176
    const-string p1, "(no extension)"

    .line 177
    .line 178
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "No installed apps that can open \u201c."

    .line 181
    .line 182
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p1, "\u201d files"

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 202
    .line 203
    .line 204
    return-void
.end method
