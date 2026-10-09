.class public final synthetic Li5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Li5;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Li5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget v0, p0, Li5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Li5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->d:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 47
    .line 48
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1, v2}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->b:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 93
    .line 94
    invoke-interface {v1}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->a()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1, v2}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object p0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a:Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v1, 0x0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    new-array p0, v1, [Lkotlin/Pair;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    new-instance v4, Lkotlin/Pair;

    .line 154
    .line 155
    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    new-array p0, v1, [Lkotlin/Pair;

    .line 163
    .line 164
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, [Lkotlin/Pair;

    .line 169
    .line 170
    :goto_3
    array-length v0, p0

    .line 171
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, [Lkotlin/Pair;

    .line 176
    .line 177
    invoke-static {p0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 183
    .line 184
    invoke-interface {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->c()Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance v0, Landroid/os/Bundle;

    .line 189
    .line 190
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_5

    .line 206
    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Ljava/util/List;

    .line 224
    .line 225
    instance-of v3, v1, Ljava/util/ArrayList;

    .line 226
    .line 227
    if-eqz v3, :cond_4

    .line 228
    .line 229
    check-cast v1, Ljava/util/ArrayList;

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .line 236
    .line 237
    move-object v1, v3

    .line 238
    :goto_5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_5
    return-object v0

    .line 243
    :pswitch_1
    check-cast p0, Landroidx/activity/ComponentActivity;

    .line 244
    .line 245
    sget v0, Landroidx/activity/ComponentActivity;->D:I

    .line 246
    .line 247
    new-instance v0, Landroid/os/Bundle;

    .line 248
    .line 249
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->q:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/util/ArrayList;

    .line 258
    .line 259
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->b:Ljava/util/LinkedHashMap;

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    .line 267
    .line 268
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 269
    .line 270
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Ljava/util/Collection;

    .line 280
    .line 281
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .line 283
    .line 284
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 285
    .line 286
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    .line 290
    .line 291
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->d:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .line 295
    .line 296
    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 297
    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    .line 300
    .line 301
    new-instance v1, Landroid/os/Bundle;

    .line 302
    .line 303
    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry;->g:Landroid/os/Bundle;

    .line 304
    .line 305
    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 306
    .line 307
    .line 308
    const-string p0, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 309
    .line 310
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    .line 312
    .line 313
    return-object v0

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
