.class public final Lcoil3/request/AndroidRequestService;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcoil3/RealImageLoader;

.field public final b:Lcoil3/util/HardwareBitmapService;


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/request/AndroidRequestService;->a:Lcoil3/RealImageLoader;

    .line 5
    .line 6
    invoke-static {}, Lcoil3/util/HardwareBitmapsKt;->a()Lcoil3/util/HardwareBitmapService;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcoil3/request/AndroidRequestService;->b:Lcoil3/util/HardwareBitmapService;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil3/target/ViewTarget;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcoil3/target/ViewTarget;

    .line 8
    .line 9
    invoke-interface {v0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 19
    .line 20
    :goto_0
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    .line 25
    .line 26
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_2
    check-cast p0, Landroid/content/ContextWrapper;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0
.end method

.method public static b(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    sget-object p1, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 22
    .line 23
    instance-of p1, p0, Lcoil3/target/ViewTarget;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    check-cast p0, Lcoil3/target/ViewTarget;

    .line 28
    .line 29
    invoke-interface {p0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_1
    return v1
.end method


# virtual methods
.method public final c(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lcoil3/request/Options;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v3, v0, Lcoil3/request/ImageRequest;->p:Lcoil3/size/Scale;

    .line 9
    .line 10
    iget-object v4, v0, Lcoil3/request/ImageRequest;->q:Lcoil3/size/Precision;

    .line 11
    .line 12
    iget-object v6, v0, Lcoil3/request/ImageRequest;->e:Lokio/FileSystem;

    .line 13
    .line 14
    iget-object v7, v0, Lcoil3/request/ImageRequest;->i:Lcoil3/request/CachePolicy;

    .line 15
    .line 16
    iget-object v8, v0, Lcoil3/request/ImageRequest;->j:Lcoil3/request/CachePolicy;

    .line 17
    .line 18
    iget-object v9, v0, Lcoil3/request/ImageRequest;->k:Lcoil3/request/CachePolicy;

    .line 19
    .line 20
    sget-object v5, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 21
    .line 22
    invoke-static {v0, v5}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    check-cast v10, Landroid/graphics/Bitmap$Config;

    .line 27
    .line 28
    sget-object v11, Lcoil3/request/ImageRequests_androidKt;->h:Lcoil3/Extras$Key;

    .line 29
    .line 30
    invoke-static {v0, v11}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    check-cast v12, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    sget-object v13, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 41
    .line 42
    invoke-static {v0, v13}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    check-cast v14, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    if-nez v14, :cond_1

    .line 55
    .line 56
    sget-object v14, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 57
    .line 58
    invoke-static {v0, v5}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v17

    .line 62
    move-object/from16 v15, v17

    .line 63
    .line 64
    check-cast v15, Landroid/graphics/Bitmap$Config;

    .line 65
    .line 66
    invoke-static {v14, v15}, Lkotlin/collections/ArraysKt;->c([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    if-eqz v14, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move/from16 v14, v16

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    const/4 v14, 0x1

    .line 77
    :goto_1
    invoke-static {v0, v5}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    check-cast v15, Landroid/graphics/Bitmap$Config;

    .line 82
    .line 83
    move-object/from16 v17, v1

    .line 84
    .line 85
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 86
    .line 87
    if-ne v15, v1, :cond_3

    .line 88
    .line 89
    invoke-static {v0, v5}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/graphics/Bitmap$Config;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcoil3/request/AndroidRequestService;->b(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    move-object/from16 v1, p0

    .line 102
    .line 103
    iget-object v1, v1, Lcoil3/request/AndroidRequestService;->b:Lcoil3/util/HardwareBitmapService;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    move/from16 v1, v16

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 113
    :goto_3
    if-eqz v14, :cond_4

    .line 114
    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    .line 120
    :goto_4
    if-eqz v12, :cond_5

    .line 121
    .line 122
    invoke-static {v0, v13}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 135
    .line 136
    if-eq v10, v1, :cond_5

    .line 137
    .line 138
    const/4 v15, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_5
    move/from16 v15, v16

    .line 141
    .line 142
    :goto_5
    new-instance v1, Lcoil3/Extras$Builder;

    .line 143
    .line 144
    iget-object v12, v0, Lcoil3/request/ImageRequest;->t:Lcoil3/request/ImageRequest$Defaults;

    .line 145
    .line 146
    iget-object v12, v12, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 147
    .line 148
    iget-object v12, v12, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 149
    .line 150
    iget-object v13, v0, Lcoil3/request/ImageRequest;->r:Lcoil3/Extras;

    .line 151
    .line 152
    iget-object v13, v13, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 161
    .line 162
    invoke-direct {v14, v12}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v13}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v14}, Lcoil3/Extras$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v5}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    check-cast v12, Landroid/graphics/Bitmap$Config;

    .line 176
    .line 177
    if-eq v10, v12, :cond_6

    .line 178
    .line 179
    invoke-virtual {v1, v5, v10}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-static {v0, v11}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eq v15, v0, :cond_7

    .line 193
    .line 194
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v1, v11, v0}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-virtual {v1}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    const/4 v5, 0x0

    .line 206
    move-object v0, v2

    .line 207
    move-object/from16 v1, v17

    .line 208
    .line 209
    move-object/from16 v2, p2

    .line 210
    .line 211
    invoke-direct/range {v0 .. v10}, Lcoil3/request/Options;-><init>(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V

    .line 212
    .line 213
    .line 214
    return-object v0
.end method
