.class public abstract Landroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;,
        Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;,
        Landroidx/core/content/res/ResourcesCompat$FontCallback;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/util/WeakHashMap;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->b:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->c:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    new-instance v0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->b:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-lez v4, :cond_3

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget-object v5, v4, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->b:Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    if-nez p2, :cond_0

    .line 47
    .line 48
    iget v5, v4, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->c:I

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget v5, v4, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->c:I

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-ne v5, v6, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object v2, v4, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->a:Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    monitor-exit v1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    move-object v2, v3

    .line 75
    :goto_1
    if-eqz v2, :cond_4

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_4
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->a:Ljava/lang/ThreadLocal;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/util/TypedValue;

    .line 85
    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    new-instance v2, Landroid/util/TypedValue;

    .line 89
    .line 90
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 98
    .line 99
    .line 100
    iget v1, v2, Landroid/util/TypedValue;->type:I

    .line 101
    .line 102
    const/16 v2, 0x1c

    .line 103
    .line 104
    if-lt v1, v2, :cond_6

    .line 105
    .line 106
    const/16 v2, 0x1f

    .line 107
    .line 108
    if-gt v1, v2, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :try_start_1
    invoke-static {p0, v1, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 116
    .line 117
    .line 118
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    goto :goto_2

    .line 120
    :catch_0
    move-exception v1

    .line 121
    const-string v2, "ResourcesCompat"

    .line 122
    .line 123
    const-string v4, "Failed to inflate ColorStateList, leaving it to the framework"

    .line 124
    .line 125
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    :goto_2
    if-eqz v3, :cond_8

    .line 129
    .line 130
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->c:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v1

    .line 133
    :try_start_2
    sget-object p0, Landroidx/core/content/res/ResourcesCompat;->b:Ljava/util/WeakHashMap;

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/util/SparseArray;

    .line 140
    .line 141
    if-nez v2, :cond_7

    .line 142
    .line 143
    new-instance v2, Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    :goto_3
    new-instance p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    .line 155
    .line 156
    iget-object v0, v0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->a:Landroid/content/res/Resources;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p0, v3, v0, p2}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    monitor-exit v1

    .line 169
    return-object v3

    .line 170
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    throw p0

    .line 172
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    throw p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move v1, p1

    .line 20
    invoke-static/range {v0 .. v6}, Landroidx/core/content/res/ResourcesCompat;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static c(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;
    .locals 12

    .line 1
    move-object/from16 v7, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 9
    .line 10
    .line 11
    const-string v9, "ResourcesCompat"

    .line 12
    .line 13
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 14
    .line 15
    if-eqz v0, :cond_b

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v0, "res/"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, -0x3

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    if-eqz v7, :cond_8

    .line 32
    .line 33
    invoke-virtual {v7, v11}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 39
    .line 40
    sget-object v2, Landroidx/core/graphics/TypefaceCompat;->b:Landroidx/collection/LruCache;

    .line 41
    .line 42
    invoke-static {v1, p1, v3, v0, p3}, Landroidx/core/graphics/TypefaceCompat;->e(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Landroidx/collection/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/graphics/Typeface;

    .line 51
    .line 52
    const/16 v6, 0x12

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    new-instance p0, Landroid/os/Handler;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lf3;

    .line 68
    .line 69
    invoke-direct {p2, v6, v7, v0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    move-object v10, v0

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_2
    if-eqz p6, :cond_3

    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, ".xml"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0, v1}, Landroidx/core/content/res/FontResourcesParserCompat;->a(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    const-string p0, "Failed to find font-family tag"

    .line 105
    .line 106
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    if-eqz v7, :cond_8

    .line 110
    .line 111
    invoke-virtual {v7, v11}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(I)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :catch_0
    move-exception v0

    .line 117
    :goto_0
    move-object p0, v0

    .line 118
    goto :goto_3

    .line 119
    :catch_1
    move-exception v0

    .line 120
    :goto_1
    move-object p0, v0

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    move v6, p3

    .line 125
    move/from16 v8, p5

    .line 126
    .line 127
    move-object v2, v1

    .line 128
    move-object v4, v3

    .line 129
    move v3, p1

    .line 130
    move-object v1, v0

    .line 131
    move-object v0, p0

    .line 132
    :try_start_1
    invoke-static/range {v0 .. v8}, Landroidx/core/graphics/TypefaceCompat;->c(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Z)Landroid/graphics/Typeface;

    .line 133
    .line 134
    .line 135
    move-result-object v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 136
    goto :goto_6

    .line 137
    :catch_2
    move-exception v0

    .line 138
    move-object v3, v4

    .line 139
    goto :goto_0

    .line 140
    :catch_3
    move-exception v0

    .line 141
    move-object v3, v4

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    :try_start_2
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 144
    .line 145
    move-object v0, p0

    .line 146
    move v2, p1

    .line 147
    move v5, p3

    .line 148
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompat;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    if-eqz p0, :cond_7

    .line 155
    .line 156
    new-instance p2, Landroid/os/Handler;

    .line 157
    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    .line 164
    .line 165
    new-instance p3, Lf3;

    .line 166
    .line 167
    invoke-direct {p3, v6, v7, p0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_2
    move-object v10, p0

    .line 174
    goto :goto_6

    .line 175
    :cond_7
    invoke-virtual {v7, v11}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :goto_3
    const-string p2, "Failed to read xml resource "

    .line 180
    .line 181
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {v9, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :goto_4
    const-string p2, "Failed to parse xml resource "

    .line 190
    .line 191
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-static {v9, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .line 197
    .line 198
    :goto_5
    if-eqz v7, :cond_8

    .line 199
    .line 200
    invoke-virtual {v7, v11}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(I)V

    .line 201
    .line 202
    .line 203
    :cond_8
    :goto_6
    if-nez v10, :cond_a

    .line 204
    .line 205
    if-nez v7, :cond_a

    .line 206
    .line 207
    if-eqz p6, :cond_9

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_9
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 211
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string p3, "Font resource ID #0x"

    .line 219
    .line 220
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p1, " could not be retrieved."

    .line 227
    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_a
    :goto_7
    return-object v10

    .line 240
    :cond_b
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 241
    .line 242
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v1, "Resource \""

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string p3, "\" ("

    .line 261
    .line 262
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string p1, ") is not a Font: "

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p0
.end method
