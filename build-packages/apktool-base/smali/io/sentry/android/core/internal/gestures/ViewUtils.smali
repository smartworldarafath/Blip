.class public abstract Lio/sentry/android/core/internal/gestures/ViewUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lio/sentry/android/core/internal/gestures/ViewUtils;->a:[I

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getGestureTargetLocators()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    move-object v1, p1

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_a

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/view/View;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Lio/sentry/android/core/internal/gestures/ViewUtils;->a:[I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    aget v5, v3, v4

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    aget v3, v3, v6

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    int-to-float v9, v5

    .line 50
    cmpg-float v9, p2, v9

    .line 51
    .line 52
    if-ltz v9, :cond_0

    .line 53
    .line 54
    add-int/2addr v5, v7

    .line 55
    int-to-float v5, v5

    .line 56
    cmpl-float v5, p2, v5

    .line 57
    .line 58
    if-gtz v5, :cond_0

    .line 59
    .line 60
    int-to-float v5, v3

    .line 61
    cmpg-float v5, p3, v5

    .line 62
    .line 63
    if-ltz v5, :cond_0

    .line 64
    .line 65
    add-int/2addr v3, v8

    .line 66
    int-to-float v3, v3

    .line 67
    cmpl-float v3, p3, v3

    .line 68
    .line 69
    if-gtz v3, :cond_0

    .line 70
    .line 71
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Landroid/view/ViewGroup;

    .line 77
    .line 78
    move v5, v4

    .line 79
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-ge v5, v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v3, v4

    .line 96
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-ge v3, v5, :cond_0

    .line 101
    .line 102
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Lio/sentry/internal/gestures/GestureTargetLocator;

    .line 107
    .line 108
    check-cast v5, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v7, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 114
    .line 115
    if-ne p4, v7, :cond_3

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_3

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_3

    .line 128
    .line 129
    :try_start_0
    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/ViewUtils;->b(Landroid/view/View;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v2}, Lio/sentry/android/core/internal/util/ClassUtil;->a(Landroid/view/KeyEvent$Callback;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    new-instance v8, Lio/sentry/internal/gestures/UiElement;

    .line 138
    .line 139
    invoke-direct {v8, v2, v7, v5}, Lio/sentry/internal/gestures/UiElement;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_3
    sget-object v7, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 144
    .line 145
    if-ne p4, v7, :cond_7

    .line 146
    .line 147
    iget-object v5, v5, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->a:Lio/sentry/util/LazyEvaluator;

    .line 148
    .line 149
    invoke-virtual {v5}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_4

    .line 160
    .line 161
    move v5, v4

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    const-class v5, Landroidx/core/view/ScrollingView;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    :goto_3
    if-nez v5, :cond_5

    .line 174
    .line 175
    const-class v5, Landroid/widget/AbsListView;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_5

    .line 186
    .line 187
    const-class v5, Landroid/widget/ScrollView;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_6

    .line 198
    .line 199
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-nez v5, :cond_6

    .line 204
    .line 205
    move v5, v6

    .line 206
    goto :goto_4

    .line 207
    :cond_6
    move v5, v4

    .line 208
    :goto_4
    if-eqz v5, :cond_7

    .line 209
    .line 210
    :try_start_1
    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/ViewUtils;->b(Landroid/view/View;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {v2}, Lio/sentry/android/core/internal/util/ClassUtil;->a(Landroid/view/KeyEvent$Callback;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    new-instance v8, Lio/sentry/internal/gestures/UiElement;

    .line 219
    .line 220
    invoke-direct {v8, v2, v7, v5}, Lio/sentry/internal/gestures/UiElement;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :catch_0
    :cond_7
    move-object v8, p1

    .line 225
    :goto_5
    if-eqz v8, :cond_9

    .line 226
    .line 227
    sget-object v5, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 228
    .line 229
    if-ne p4, v5, :cond_8

    .line 230
    .line 231
    move-object v1, v8

    .line 232
    goto :goto_6

    .line 233
    :cond_8
    sget-object v5, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 234
    .line 235
    if-ne p4, v5, :cond_9

    .line 236
    .line 237
    return-object v8

    .line 238
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :cond_a
    return-object v1
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/high16 v1, -0x1000000

    .line 9
    .line 10
    and-int/2addr v1, v0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const v1, 0xffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr v1, v0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    const-string p0, ""

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
