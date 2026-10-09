.class public final synthetic Lvb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:I

.field public final synthetic n:Landroidx/navigation/compose/ComposeNavigator;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;ILandroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p7, p0, Lvb;->j:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lvb;->k:Z

    .line 4
    .line 5
    iput-object p2, p0, Lvb;->l:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput p3, p0, Lvb;->m:I

    .line 8
    .line 9
    iput-object p4, p0, Lvb;->n:Landroidx/navigation/compose/ComposeNavigator;

    .line 10
    .line 11
    iput-object p5, p0, Lvb;->o:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p6, p0, Lvb;->p:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lvb;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lvb;->p:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v2, p0, Lvb;->o:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lvb;->n:Landroidx/navigation/compose/ComposeNavigator;

    .line 8
    .line 9
    iget v4, p0, Lvb;->m:I

    .line 10
    .line 11
    iget-object v5, p0, Lvb;->l:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    iget-boolean p0, p0, Lvb;->k:Z

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {v5, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Landroidx/compose/animation/ExitTransition;

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_1
    iget-object p0, v3, Landroidx/navigation/compose/ComposeNavigator;->c:Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 86
    .line 87
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Landroidx/compose/animation/ExitTransition;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 116
    .line 117
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Landroidx/compose/animation/ExitTransition;

    .line 143
    .line 144
    :goto_3
    return-object p0

    .line 145
    :pswitch_0
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 157
    .line 158
    if-eqz p0, :cond_6

    .line 159
    .line 160
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 161
    .line 162
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-interface {v5, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    check-cast p0, Landroidx/compose/animation/EnterTransition;

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_6
    iget-object p0, v3, Landroidx/navigation/compose/ComposeNavigator;->c:Landroidx/compose/runtime/MutableState;

    .line 195
    .line 196
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_8

    .line 209
    .line 210
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 211
    .line 212
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_7
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Landroidx/compose/animation/EnterTransition;

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_8
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 241
    .line 242
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_9

    .line 255
    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_9
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    check-cast p0, Landroidx/compose/animation/EnterTransition;

    .line 268
    .line 269
    :goto_7
    return-object p0

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
