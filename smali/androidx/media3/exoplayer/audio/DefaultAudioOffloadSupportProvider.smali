.class public final Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroidx/media3/common/Format;->L:I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1d

    .line 12
    .line 13
    if-lt v1, v2, :cond_f

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a:Landroid/content/Context;

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v6, "offloadVariableRateSupported"

    .line 40
    .line 41
    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const-string v6, "offloadVariableRateSupported=1"

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    move v3, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v3, v4

    .line 58
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    .line 68
    .line 69
    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->b:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    :goto_2
    iget-object v3, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v6, p1, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v3, v6}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_e

    .line 87
    .line 88
    invoke-static {v3}, Landroidx/media3/common/util/Util;->l(I)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-ge v1, v6, :cond_4

    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_4
    iget v6, p1, Landroidx/media3/common/Format;->K:I

    .line 97
    .line 98
    if-eq v6, v2, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    iget p1, p1, Landroidx/media3/common/Format;->J:I

    .line 102
    .line 103
    invoke-static {p1}, Landroidx/media3/common/util/Util;->m(I)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    :goto_3
    if-nez v6, :cond_6

    .line 108
    .line 109
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_6
    :try_start_0
    new-instance p1, Landroid/media/AudioFormat$Builder;

    .line 113
    .line 114
    invoke-direct {p1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 130
    .line 131
    .line 132
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/16 v0, 0x21

    .line 134
    .line 135
    if-lt v1, v0, :cond_9

    .line 136
    .line 137
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p1, p2}, Ll;->b(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    and-int/lit8 p2, p1, 0x1

    .line 146
    .line 147
    if-nez p2, :cond_7

    .line 148
    .line 149
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_7
    const/4 p2, 0x3

    .line 153
    and-int/2addr p1, p2

    .line 154
    if-ne p1, p2, :cond_8

    .line 155
    .line 156
    move v4, v5

    .line 157
    :cond_8
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-boolean v5, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    .line 163
    .line 164
    iput-boolean v4, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->b:Z

    .line 165
    .line 166
    iput-boolean p0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :cond_9
    const/16 v0, 0x1f

    .line 174
    .line 175
    if-lt v1, v0, :cond_c

    .line 176
    .line 177
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {p1, p2}, Lo6;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_a

    .line 186
    .line 187
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 188
    .line 189
    return-object p0

    .line 190
    :cond_a
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    .line 191
    .line 192
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    const/16 v0, 0x20

    .line 196
    .line 197
    if-le v1, v0, :cond_b

    .line 198
    .line 199
    const/4 v0, 0x2

    .line 200
    if-ne p1, v0, :cond_b

    .line 201
    .line 202
    move v4, v5

    .line 203
    :cond_b
    iput-boolean v5, p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    .line 204
    .line 205
    iput-boolean v4, p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->b:Z

    .line 206
    .line 207
    iput-boolean p0, p2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    .line 208
    .line 209
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :cond_c
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-static {p1, p2}, Lx4;->s(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_d

    .line 223
    .line 224
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 225
    .line 226
    return-object p0

    .line 227
    :cond_d
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    .line 228
    .line 229
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-boolean v5, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    .line 233
    .line 234
    iput-boolean p0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    .line 235
    .line 236
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :catch_0
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 242
    .line 243
    return-object p0

    .line 244
    :cond_e
    :goto_4
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 245
    .line 246
    return-object p0

    .line 247
    :cond_f
    :goto_5
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 248
    .line 249
    return-object p0
.end method
