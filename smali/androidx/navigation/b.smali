.class public final synthetic Landroidx/navigation/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/navigation/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/navigation/b;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigation/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Landroidx/navigation/NavDeepLink;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->e:Lkotlin/Lazy;

    .line 19
    .line 20
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_6

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/4 v9, 0x1

    .line 78
    if-gt v8, v9, :cond_5

    .line 79
    .line 80
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Ljava/lang/String;

    .line 85
    .line 86
    if-nez v7, :cond_1

    .line 87
    .line 88
    iput-boolean v9, p0, Landroidx/navigation/NavDeepLink;->g:Z

    .line 89
    .line 90
    move-object v7, v5

    .line 91
    :cond_1
    sget-object v8, Landroidx/navigation/NavDeepLink;->n:Lkotlin/text/Regex;

    .line 92
    .line 93
    invoke-static {v8, v7}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    new-instance v10, Landroidx/navigation/NavDeepLink$ParamQuery;

    .line 98
    .line 99
    invoke-direct {v10}, Landroidx/navigation/NavDeepLink$ParamQuery;-><init>()V

    .line 100
    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    :goto_1
    if-eqz v8, :cond_3

    .line 104
    .line 105
    invoke-interface {v8}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    invoke-virtual {v12, v9}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v12, v12, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v13, v10, Landroidx/navigation/NavDeepLink$ParamQuery;->b:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-interface {v8}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    iget v12, v12, Lkotlin/ranges/IntProgression;->j:I

    .line 128
    .line 129
    if-le v12, v11, :cond_2

    .line 130
    .line 131
    invoke-interface {v8}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    iget v12, v12, Lkotlin/ranges/IntProgression;->j:I

    .line 136
    .line 137
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    :cond_2
    const-string v11, "([\\s\\S]+?)?"

    .line 152
    .line 153
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-interface {v8}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    iget v11, v11, Lkotlin/ranges/IntProgression;->k:I

    .line 161
    .line 162
    add-int/2addr v11, v9

    .line 163
    invoke-interface {v8}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-ge v11, v8, :cond_4

    .line 173
    .line 174
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    :cond_4
    const-string v7, "$"

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-static {v6}, Landroidx/navigation/NavDeepLink;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    iput-object v6, v10, Landroidx/navigation/NavDeepLink$ParamQuery;->a:Ljava/lang/String;

    .line 202
    .line 203
    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_5
    const-string p0, " must only be present once in "

    .line 209
    .line 210
    const-string v2, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."

    .line 211
    .line 212
    const-string v3, "Query parameter "

    .line 213
    .line 214
    invoke-static {v3, v5, p0, v0, v2}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    :goto_2
    move-object v1, v2

    .line 223
    :goto_3
    return-object v1

    .line 224
    :pswitch_0
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 225
    .line 226
    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->r:Z

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 231
    .line 232
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 233
    .line 234
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 235
    .line 236
    if-eq v0, v2, :cond_7

    .line 237
    .line 238
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->u:Lkotlin/Lazy;

    .line 239
    .line 240
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 245
    .line 246
    invoke-static {p0}, Landroidx/lifecycle/ViewModelStoreOwnerDefaults;->a(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->e()Landroidx/lifecycle/ViewModelStore;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-direct {v2, p0, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 263
    .line 264
    .line 265
    const-class p0, Landroidx/navigation/SavedStateViewModel;

    .line 266
    .line 267
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {v2, p0}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    check-cast p0, Landroidx/navigation/SavedStateViewModel;

    .line 276
    .line 277
    iget-object v1, p0, Landroidx/navigation/SavedStateViewModel;->b:Landroidx/lifecycle/SavedStateHandle;

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_7
    const-string p0, "You cannot access the NavBackStackEntry\'s SavedStateHandle after the NavBackStackEntry is destroyed."

    .line 281
    .line 282
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_8
    const-string p0, "You cannot access the NavBackStackEntry\'s SavedStateHandle until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 287
    .line 288
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_4
    return-object v1

    .line 292
    nop

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
