.class public final synthetic Le9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/PeerPickerViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/PeerPickerViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Le9;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Le9;->k:Lnet/blip/libblip/PeerPickerViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Le9;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Le9;->k:Lnet/blip/libblip/PeerPickerViewModel;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lnet/blip/libblip/PeerPickerViewModel;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lnet/blip/libblip/PeerPickerViewModel;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lnet/blip/libblip/frontend/Search;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lnet/blip/libblip/frontend/Search;->m:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 47
    .line 48
    iget-object p1, p1, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Lnet/blip/libblip/PeerPickerContent$SearchResults;-><init>(Lnet/blip/libblip/frontend/Search;Lnet/blip/libblip/frontend/Users;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 58
    .line 59
    new-array p1, v0, [Lkotlin/Pair;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string p0, "state.users is null"

    .line 65
    .line 66
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_0
    new-instance v1, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 72
    .line 73
    invoke-static {p1}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    iget-object v2, p0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Lnet/blip/libblip/Device_DerivedKt;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v3, La7;

    .line 90
    .line 91
    const/4 v4, 0x4

    .line 92
    invoke-direct {v3, v4}, La7;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v4, La7;

    .line 96
    .line 97
    const/4 v5, 0x5

    .line 98
    invoke-direct {v4, v5}, La7;-><init>(I)V

    .line 99
    .line 100
    .line 101
    const/4 v5, 0x2

    .line 102
    new-array v5, v5, [Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    aput-object v3, v5, v0

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    aput-object v4, v5, v3

    .line 108
    .line 109
    invoke-static {v5}, Lkotlin/comparisons/ComparisonsKt;->a([Lkotlin/jvm/functions/Function1;)Lc5;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object p0, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p0, v2}, Lnet/blip/libblip/Device_DerivedKt;->c(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 125
    .line 126
    :goto_1
    invoke-static {p1}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v3, p1, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 136
    .line 137
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_7

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 156
    .line 157
    iget-object v5, v4, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 158
    .line 159
    if-nez v5, :cond_4

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    iget-object v4, v4, Lnet/blip/libblip/frontend/PeerInteraction;->m:Ljava/time/Instant;

    .line 163
    .line 164
    if-nez v4, :cond_5

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    invoke-static {v5}, Lnet/blip/libblip/PeerId_DerivedKt;->c(Lnet/blip/libblip/PeerId;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-nez v6, :cond_6

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    iget-object v5, v5, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 175
    .line 176
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    iget-object v3, p1, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/lang/Iterable;

    .line 187
    .line 188
    new-instance v4, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_9

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Ljava/lang/String;

    .line 208
    .line 209
    iget-object v6, p1, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 210
    .line 211
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    check-cast v5, Lnet/blip/libblip/User;

    .line 216
    .line 217
    if-eqz v5, :cond_8

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_9
    new-instance p1, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;

    .line 224
    .line 225
    invoke-direct {p1, v2}, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 226
    .line 227
    .line 228
    new-instance v2, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;

    .line 229
    .line 230
    invoke-direct {v2, p1}, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;-><init>(Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;)V

    .line 231
    .line 232
    .line 233
    new-instance p1, Lc5;

    .line 234
    .line 235
    invoke-direct {p1, v0, v2}, Lc5;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v4, p1}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    .line 243
    .line 244
    const/16 v2, 0xa

    .line 245
    .line 246
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_a

    .line 262
    .line 263
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lnet/blip/libblip/User;

    .line 268
    .line 269
    new-instance v3, Lnet/blip/libblip/Peer$User;

    .line 270
    .line 271
    invoke-direct {v3, v2}, Lnet/blip/libblip/Peer$User;-><init>(Lnet/blip/libblip/User;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_a
    invoke-direct {v1, p0, v0}, Lnet/blip/libblip/PeerPickerContent$Overview;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 279
    .line 280
    .line 281
    :goto_5
    return-object v1

    .line 282
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1}, Lnet/blip/libblip/PeerPickerViewModel;->c(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
