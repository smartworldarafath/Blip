.class public Landroidx/navigation/NavGraphNavigator;
.super Landroidx/navigation/Navigator;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroidx/navigation/NavigatorProvider;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/NavGraphNavigator;->c:Landroidx/navigation/NavigatorProvider;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/navigation/NavDestination;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->g()Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d(Ljava/util/List;Landroidx/navigation/NavOptions;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast v1, Landroidx/navigation/NavGraph;

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 25
    .line 26
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, v1, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 38
    .line 39
    iget v1, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 40
    .line 41
    iget-object v4, v0, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget p0, v2, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, v0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 63
    .line 64
    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string p0, "the root navigation"

    .line 70
    .line 71
    :goto_1
    const-string p1, "no start destination defined via app:startDestination for "

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lu2;->f(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v4, v2}, Landroidx/navigation/internal/NavGraphImpl;->b(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    iget-object v5, v0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 90
    .line 91
    invoke-virtual {v5, v1}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 96
    .line 97
    :goto_3
    if-nez v1, :cond_6

    .line 98
    .line 99
    iget-object p0, v0, Landroidx/navigation/internal/NavGraphImpl;->d:Ljava/lang/String;

    .line 100
    .line 101
    if-nez p0, :cond_5

    .line 102
    .line 103
    iget-object p0, v0, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    .line 104
    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    iget p0, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 108
    .line 109
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :cond_4
    iput-object p0, v0, Landroidx/navigation/internal/NavGraphImpl;->d:Ljava/lang/String;

    .line 114
    .line 115
    :cond_5
    iget-object p0, v0, Landroidx/navigation/internal/NavGraphImpl;->d:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const-string p1, "navigation destination "

    .line 121
    .line 122
    const-string p2, " is not a direct child of this NavGraph"

    .line 123
    .line 124
    invoke-static {p1, p0, p2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_6
    iget-object v0, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 133
    .line 134
    if-eqz v4, :cond_b

    .line 135
    .line 136
    iget-object v5, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-nez v5, :cond_9

    .line 143
    .line 144
    invoke-virtual {v0, v4}, Landroidx/navigation/internal/NavDestinationImpl;->a(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    iget-object v4, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->k:Landroid/os/Bundle;

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    const/4 v4, 0x0

    .line 154
    :goto_4
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_9

    .line 161
    .line 162
    new-array v5, v2, [Lkotlin/Pair;

    .line 163
    .line 164
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, [Lkotlin/Pair;

    .line 169
    .line 170
    invoke-static {v2}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v4, Landroid/os/Bundle;

    .line 180
    .line 181
    if-eqz v4, :cond_8

    .line 182
    .line 183
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    iput-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 187
    .line 188
    :cond_9
    iget-object v2, v0, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    invoke-static {v2}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_b

    .line 199
    .line 200
    iget-object v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    invoke-static {v0}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v2, Lo0;

    .line 207
    .line 208
    const/4 v4, 0x3

    .line 209
    invoke-direct {v2, v3, v4}, Lo0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v2}, Landroidx/navigation/NavArgumentKt;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_a

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_a
    const-string p0, ". Missing required arguments ["

    .line 224
    .line 225
    const-string p1, "]"

    .line 226
    .line 227
    const-string p2, "Cannot navigate to startDestination "

    .line 228
    .line 229
    invoke-static {p2, v1, p0, v0, p1}, Lk8;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_b
    :goto_5
    iget-object v0, p0, Landroidx/navigation/NavGraphNavigator;->c:Landroidx/navigation/NavigatorProvider;

    .line 234
    .line 235
    iget-object v2, v1, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v3, Landroid/os/Bundle;

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v2, v1, v3}, Landroidx/navigation/NavigatorState;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1, p2}, Landroidx/navigation/Navigator;->d(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_c
    return-void
.end method

.method public g()Landroidx/navigation/NavGraph;
    .locals 1

    .line 1
    new-instance v0, Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/NavGraphNavigator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
