.class public Landroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutInfoCompat$Api33Impl;,
        Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:[Landroid/content/Intent;

.field public d:Landroid/content/ComponentName;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroidx/core/graphics/drawable/IconCompat;

.field public i:[Landroidx/core/app/Person;

.field public j:Ljava/util/Set;

.field public k:Landroidx/core/content/LocusIdCompat;

.field public l:Z

.field public m:I

.field public n:Landroid/os/PersistableBundle;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->o:Z

    .line 6
    .line 7
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 25
    .line 26
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a()Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Landroid/content/pm/ShortcutInfo;
    .locals 8

    .line 1
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->c:[Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:Landroid/content/ComponentName;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Ljava/util/Set;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 73
    .line 74
    .line 75
    :cond_4
    iget v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 85
    .line 86
    .line 87
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v2, 0x1d

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    if-lt v1, v2, :cond_9

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 95
    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    array-length v2, v1

    .line 99
    if-lez v2, :cond_7

    .line 100
    .line 101
    array-length v1, v1

    .line 102
    new-array v2, v1, [Landroid/app/Person;

    .line 103
    .line 104
    :goto_0
    if-ge v3, v1, :cond_6

    .line 105
    .line 106
    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 107
    .line 108
    aget-object v4, v4, v3

    .line 109
    .line 110
    invoke-virtual {v4}, Landroidx/core/app/Person;->a()Landroid/app/Person;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    aput-object v4, v2, v3

    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    invoke-static {v0, v2}, Lbb;->n(Landroid/content/pm/ShortcutInfo$Builder;[Landroid/app/Person;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:Landroidx/core/content/LocusIdCompat;

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    iget-object v1, v1, Landroidx/core/content/LocusIdCompat;->b:Landroid/content/LocusId;

    .line 127
    .line 128
    invoke-static {v0, v1}, Lbb;->l(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/LocusId;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget-boolean p0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Z

    .line 132
    .line 133
    invoke-static {v0, p0}, Lbb;->m(Landroid/content/pm/ShortcutInfo$Builder;Z)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_9
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 139
    .line 140
    if-nez v1, :cond_a

    .line 141
    .line 142
    new-instance v1, Landroid/os/PersistableBundle;

    .line 143
    .line 144
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 148
    .line 149
    :cond_a
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 150
    .line 151
    if-eqz v1, :cond_c

    .line 152
    .line 153
    array-length v2, v1

    .line 154
    if-lez v2, :cond_c

    .line 155
    .line 156
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 157
    .line 158
    const-string v4, "extraPersonCount"

    .line 159
    .line 160
    array-length v1, v1

    .line 161
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    :goto_1
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 165
    .line 166
    array-length v1, v1

    .line 167
    if-ge v3, v1, :cond_c

    .line 168
    .line 169
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v4, "extraPerson_"

    .line 174
    .line 175
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v4, v3, 0x1

    .line 179
    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v5, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 188
    .line 189
    aget-object v3, v5, v3

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v5, Landroid/os/PersistableBundle;

    .line 195
    .line 196
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v6, v3, Landroidx/core/app/Person;->a:Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v6, :cond_b

    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    goto :goto_2

    .line 208
    :cond_b
    const/4 v6, 0x0

    .line 209
    :goto_2
    const-string v7, "name"

    .line 210
    .line 211
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v6, "uri"

    .line 215
    .line 216
    iget-object v7, v3, Landroidx/core/app/Person;->b:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v6, "key"

    .line 222
    .line 223
    iget-object v7, v3, Landroidx/core/app/Person;->c:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string v6, "isBot"

    .line 229
    .line 230
    iget-boolean v7, v3, Landroidx/core/app/Person;->d:Z

    .line 231
    .line 232
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    .line 234
    .line 235
    const-string v6, "isImportant"

    .line 236
    .line 237
    iget-boolean v3, v3, Landroidx/core/app/Person;->e:Z

    .line 238
    .line 239
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 243
    .line 244
    .line 245
    move v3, v4

    .line 246
    goto :goto_1

    .line 247
    :cond_c
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:Landroidx/core/content/LocusIdCompat;

    .line 248
    .line 249
    if-eqz v1, :cond_d

    .line 250
    .line 251
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 252
    .line 253
    const-string v3, "extraLocusId"

    .line 254
    .line 255
    iget-object v1, v1, Landroidx/core/content/LocusIdCompat;->a:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_d
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 261
    .line 262
    const-string v2, "extraLongLived"

    .line 263
    .line 264
    iget-boolean v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Z

    .line 265
    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    .line 268
    .line 269
    iget-object p0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Landroid/os/PersistableBundle;

    .line 270
    .line 271
    invoke-virtual {v0, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 272
    .line 273
    .line 274
    :goto_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 275
    .line 276
    const/16 v1, 0x21

    .line 277
    .line 278
    if-lt p0, v1, :cond_e

    .line 279
    .line 280
    invoke-static {v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Api33Impl;->a(Landroid/content/pm/ShortcutInfo$Builder;)V

    .line 281
    .line 282
    .line 283
    :cond_e
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0
.end method
