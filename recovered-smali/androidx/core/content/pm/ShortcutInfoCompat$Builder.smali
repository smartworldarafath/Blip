.class public Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/core/content/pm/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 10
    .line 11
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    array-length v1, p1

    .line 27
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Landroid/content/Intent;

    .line 32
    .line 33
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->c:[Landroid/content/Intent;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Ljava/util/Set;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    const-string v2, "extraPersonCount"

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    new-array v3, v2, [Landroidx/core/app/Person;

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    :goto_0
    if-ge v4, v2, :cond_2

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v6, "extraPerson_"

    .line 96
    .line 97
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v6, v4, 0x1

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p1, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-instance v7, Landroidx/core/app/Person$Builder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v8, "name"

    .line 119
    .line 120
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iput-object v8, v7, Landroidx/core/app/Person$Builder;->a:Ljava/lang/String;

    .line 125
    .line 126
    const-string v8, "uri"

    .line 127
    .line 128
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iput-object v8, v7, Landroidx/core/app/Person$Builder;->b:Ljava/lang/String;

    .line 133
    .line 134
    const-string v8, "key"

    .line 135
    .line 136
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    iput-object v8, v7, Landroidx/core/app/Person$Builder;->c:Ljava/lang/String;

    .line 141
    .line 142
    const-string v8, "isBot"

    .line 143
    .line 144
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    iput-boolean v8, v7, Landroidx/core/app/Person$Builder;->d:Z

    .line 149
    .line 150
    const-string v8, "isImportant"

    .line 151
    .line 152
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    iput-boolean v5, v7, Landroidx/core/app/Person$Builder;->e:Z

    .line 157
    .line 158
    invoke-virtual {v7}, Landroidx/core/app/Person$Builder;->a()Landroidx/core/app/Person;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    aput-object v5, v3, v4

    .line 163
    .line 164
    move v4, v6

    .line 165
    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    move-object v3, v1

    .line 167
    :cond_2
    iput-object v3, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    .line 173
    .line 174
    .line 175
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    const/16 v0, 0x1e

    .line 178
    .line 179
    if-lt p1, v0, :cond_3

    .line 180
    .line 181
    invoke-static {p2}, Lj;->q(Landroid/content/pm/ShortcutInfo;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->o:Z

    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 208
    .line 209
    const/16 v2, 0x1d

    .line 210
    .line 211
    if-lt p1, v2, :cond_5

    .line 212
    .line 213
    invoke-static {p2}, Lbb;->d(Landroid/content/pm/ShortcutInfo;)Landroid/content/LocusId;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-nez p1, :cond_4

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_4
    invoke-static {p2}, Lbb;->d(Landroid/content/pm/ShortcutInfo;)Landroid/content/LocusId;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Landroidx/core/content/LocusIdCompat;->a(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    goto :goto_2

    .line 229
    :cond_5
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-nez p1, :cond_6

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_6
    const-string v2, "extraLocusId"

    .line 237
    .line 238
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-nez p1, :cond_7

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_7
    new-instance v1, Landroidx/core/content/LocusIdCompat;

    .line 246
    .line 247
    invoke-direct {v1, p1}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :goto_2
    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:Landroidx/core/content/LocusIdCompat;

    .line 251
    .line 252
    iget-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    iput v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->m:I

    .line 259
    .line 260
    iget-object p0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 267
    .line 268
    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;Ljava/lang/String;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 271
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 272
    iput-object p2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/content/pm/ShortcutInfoCompat;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->c:[Landroid/content/Intent;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    array-length v0, v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Shortcut must have an intent"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const-string p0, "Shortcut must have a non-empty label"

    .line 27
    .line 28
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method
