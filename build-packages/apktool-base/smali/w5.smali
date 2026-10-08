.class public final synthetic Lw5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw5;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Lw5;->j:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x492

    .line 5
    .line 6
    const/16 v2, 0x80

    .line 7
    .line 8
    const/16 v3, 0x100

    .line 9
    .line 10
    const/16 v4, 0x10

    .line 11
    .line 12
    const/16 v5, 0x20

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x1

    .line 17
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast p1, Landroid/content/Context;

    .line 23
    .line 24
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 25
    .line 26
    check-cast p3, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    check-cast p4, Ljava/lang/CharSequence;

    .line 33
    .line 34
    check-cast p5, Landroidx/compose/ui/text/TextRange;

    .line 35
    .line 36
    iget-wide v0, p5, Landroidx/compose/ui/text/TextRange;->a:J

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 43
    .line 44
    .line 45
    move-result p5

    .line 46
    invoke-interface {p4, p3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    new-instance p4, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string p5, "android.intent.action.PROCESS_TEXT"

    .line 60
    .line 61
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    const-string p5, "text/plain"

    .line 66
    .line 67
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    const-string p5, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 72
    .line 73
    invoke-virtual {p4, p5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 78
    .line 79
    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p2, "android.intent.extra.PROCESS_TEXT"

    .line 88
    .line 89
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    return-object v9

    .line 96
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 97
    .line 98
    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 99
    .line 100
    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    check-cast p4, Landroidx/compose/runtime/Composer;

    .line 103
    .line 104
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    and-int/lit8 p5, p0, 0x6

    .line 109
    .line 110
    if-nez p5, :cond_2

    .line 111
    .line 112
    and-int/lit8 p5, p0, 0x8

    .line 113
    .line 114
    if-nez p5, :cond_0

    .line 115
    .line 116
    move-object p5, p4

    .line 117
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 118
    .line 119
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p5

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    move-object p5, p4

    .line 125
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 126
    .line 127
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    :goto_0
    if-eqz p5, :cond_1

    .line 132
    .line 133
    move v6, v7

    .line 134
    :cond_1
    or-int p5, p0, v6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    move p5, p0

    .line 138
    :goto_1
    and-int/lit8 v6, p0, 0x30

    .line 139
    .line 140
    if-nez v6, :cond_5

    .line 141
    .line 142
    and-int/lit8 v6, p0, 0x40

    .line 143
    .line 144
    if-nez v6, :cond_3

    .line 145
    .line 146
    move-object v6, p4

    .line 147
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 148
    .line 149
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move-object v6, p4

    .line 155
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 156
    .line 157
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    :goto_2
    if-eqz v6, :cond_4

    .line 162
    .line 163
    move v4, v5

    .line 164
    :cond_4
    or-int/2addr p5, v4

    .line 165
    :cond_5
    and-int/lit16 p0, p0, 0x180

    .line 166
    .line 167
    if-nez p0, :cond_7

    .line 168
    .line 169
    move-object p0, p4

    .line 170
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 171
    .line 172
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-eqz p0, :cond_6

    .line 177
    .line 178
    move v2, v3

    .line 179
    :cond_6
    or-int/2addr p5, v2

    .line 180
    :cond_7
    and-int/lit16 p0, p5, 0x493

    .line 181
    .line 182
    if-eq p0, v1, :cond_8

    .line 183
    .line 184
    move v0, v8

    .line 185
    :cond_8
    and-int/lit8 p0, p5, 0x1

    .line 186
    .line 187
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 188
    .line 189
    invoke-virtual {p4, p0, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_9

    .line 194
    .line 195
    and-int/lit16 p0, p5, 0x3fe

    .line 196
    .line 197
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 202
    .line 203
    .line 204
    :goto_3
    return-object v9

    .line 205
    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 206
    .line 207
    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 208
    .line 209
    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 210
    .line 211
    check-cast p4, Landroidx/compose/runtime/Composer;

    .line 212
    .line 213
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    and-int/lit8 p5, p0, 0x6

    .line 218
    .line 219
    if-nez p5, :cond_c

    .line 220
    .line 221
    and-int/lit8 p5, p0, 0x8

    .line 222
    .line 223
    if-nez p5, :cond_a

    .line 224
    .line 225
    move-object p5, p4

    .line 226
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 227
    .line 228
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p5

    .line 232
    goto :goto_4

    .line 233
    :cond_a
    move-object p5, p4

    .line 234
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 235
    .line 236
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p5

    .line 240
    :goto_4
    if-eqz p5, :cond_b

    .line 241
    .line 242
    move v6, v7

    .line 243
    :cond_b
    or-int p5, p0, v6

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_c
    move p5, p0

    .line 247
    :goto_5
    and-int/lit8 v6, p0, 0x30

    .line 248
    .line 249
    if-nez v6, :cond_f

    .line 250
    .line 251
    and-int/lit8 v6, p0, 0x40

    .line 252
    .line 253
    if-nez v6, :cond_d

    .line 254
    .line 255
    move-object v6, p4

    .line 256
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 257
    .line 258
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    goto :goto_6

    .line 263
    :cond_d
    move-object v6, p4

    .line 264
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 265
    .line 266
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    :goto_6
    if-eqz v6, :cond_e

    .line 271
    .line 272
    move v4, v5

    .line 273
    :cond_e
    or-int/2addr p5, v4

    .line 274
    :cond_f
    and-int/lit16 p0, p0, 0x180

    .line 275
    .line 276
    if-nez p0, :cond_11

    .line 277
    .line 278
    move-object p0, p4

    .line 279
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 280
    .line 281
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-eqz p0, :cond_10

    .line 286
    .line 287
    move v2, v3

    .line 288
    :cond_10
    or-int/2addr p5, v2

    .line 289
    :cond_11
    and-int/lit16 p0, p5, 0x493

    .line 290
    .line 291
    if-eq p0, v1, :cond_12

    .line 292
    .line 293
    move v0, v8

    .line 294
    :cond_12
    and-int/lit8 p0, p5, 0x1

    .line 295
    .line 296
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 297
    .line 298
    invoke-virtual {p4, p0, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    if-eqz p0, :cond_13

    .line 303
    .line 304
    and-int/lit16 p0, p5, 0x3fe

    .line 305
    .line 306
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_13
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 311
    .line 312
    .line 313
    :goto_7
    return-object v9

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
