.class public final Lcoil3/fetch/ResourceUriFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/ResourceUriFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:Lcoil3/Uri;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/ResourceUriFetcher;->a:Lcoil3/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/ResourceUriFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object p1, p0, Lcoil3/fetch/ResourceUriFetcher;->a:Lcoil3/Uri;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/Uri;->d:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "Invalid android.resource URI: "

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_b

    .line 19
    .line 20
    invoke-static {p1}, Lcoil3/UriKt;->c(Lcoil3/Uri;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v3, :cond_a

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_a

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object p0, p0, Lcoil3/fetch/ResourceUriFetcher;->b:Lcoil3/request/Options;

    .line 43
    .line 44
    iget-object v1, p0, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :goto_1
    new-instance v4, Landroid/util/TypedValue;

    .line 70
    .line 71
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Lcoil3/util/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-string v6, "text/xml"

    .line 89
    .line 90
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_9

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const-string v4, "Invalid resource ID: "

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    :goto_2
    move-object v6, v0

    .line 115
    goto :goto_4

    .line 116
    :cond_2
    invoke-static {p1, v4}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lu2;->f(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    :cond_3
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    :goto_3
    const/4 v7, 0x2

    .line 133
    if-eq v6, v7, :cond_4

    .line 134
    .line 135
    if-eq v6, v5, :cond_4

    .line 136
    .line 137
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    if-ne v6, v7, :cond_8

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget-object v6, Landroidx/core/content/res/ResourcesCompat;->a:Ljava/lang/ThreadLocal;

    .line 149
    .line 150
    invoke-virtual {v3, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_4
    sget-object p1, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 158
    .line 159
    instance-of p1, v6, Landroid/graphics/drawable/VectorDrawable;

    .line 160
    .line 161
    new-instance v0, Lcoil3/fetch/ImageFetchResult;

    .line 162
    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 166
    .line 167
    invoke-static {p0, v2}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    move-object v7, v2

    .line 172
    check-cast v7, Landroid/graphics/Bitmap$Config;

    .line 173
    .line 174
    iget-object v8, p0, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 175
    .line 176
    iget-object v9, p0, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 177
    .line 178
    sget-object v2, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 179
    .line 180
    invoke-static {p0, v2}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    move-object v10, v2

    .line 185
    check-cast v10, Lcoil3/size/Size;

    .line 186
    .line 187
    iget-object p0, p0, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 188
    .line 189
    sget-object v2, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 190
    .line 191
    if-ne p0, v2, :cond_5

    .line 192
    .line 193
    :goto_5
    move v11, v5

    .line 194
    goto :goto_6

    .line 195
    :cond_5
    const/4 v5, 0x0

    .line 196
    goto :goto_5

    .line 197
    :goto_6
    invoke-static/range {v6 .. v11}, Lcoil3/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 206
    .line 207
    invoke-direct {v6, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    invoke-static {v6}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    sget-object v1, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 215
    .line 216
    invoke-direct {v0, p0, p1, v1}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_7
    invoke-static {p1, v4}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {p0}, Lu2;->f(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    return-object v2

    .line 228
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 229
    .line 230
    const-string p1, "No start tag found."

    .line 231
    .line 232
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_9
    new-instance v1, Landroid/util/TypedValue;

    .line 237
    .line 238
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 246
    .line 247
    invoke-static {v1}, Lokio/Okio;->e(Ljava/io/InputStream;)Lokio/Source;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    new-instance v3, Lokio/RealBufferedSource;

    .line 252
    .line 253
    invoke-direct {v3, v1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 254
    .line 255
    .line 256
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 257
    .line 258
    new-instance v1, Lcoil3/decode/ResourceMetadata;

    .line 259
    .line 260
    invoke-direct {v1, v0, p1}, Lcoil3/decode/ResourceMetadata;-><init>(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Lcoil3/decode/SourceImageSource;

    .line 264
    .line 265
    invoke-direct {p1, v3, p0, v1}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 266
    .line 267
    .line 268
    sget-object p0, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 269
    .line 270
    invoke-direct {v2, p1, v4, p0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 271
    .line 272
    .line 273
    return-object v2

    .line 274
    :cond_a
    invoke-static {p1, v1}, Lfe;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-object v2

    .line 278
    :cond_b
    invoke-static {p1, v1}, Lfe;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-object v2
.end method
