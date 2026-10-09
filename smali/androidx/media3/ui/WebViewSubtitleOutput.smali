.class final Landroidx/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field public final j:Landroidx/media3/ui/CanvasSubtitleOutput;

.field public final k:Landroid/webkit/WebView;

.field public l:Ljava/util/List;

.field public m:Landroidx/media3/ui/CaptionStyleCompat;

.field public n:F

.field public o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->l:Ljava/util/List;

    .line 8
    .line 9
    sget-object v1, Landroidx/media3/ui/CaptionStyleCompat;->g:Landroidx/media3/ui/CaptionStyleCompat;

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 12
    .line 13
    const v1, 0x3d5a511a    # 0.0533f

    .line 14
    .line 15
    .line 16
    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->n:F

    .line 17
    .line 18
    const v1, 0x3da3d70a    # 0.08f

    .line 19
    .line 20
    .line 21
    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->o:F

    .line 22
    .line 23
    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p1, v2}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->j:Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 30
    .line 31
    new-instance v3, Landroidx/media3/ui/WebViewSubtitleOutput$1;

    .line 32
    .line 33
    invoke-direct {v3, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->k:Landroid/webkit/WebView;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FF)V
    .locals 5

    .line 1
    iput-object p2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 2
    .line 3
    iput p3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->n:F

    .line 4
    .line 5
    iput p4, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->o:F

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/media3/common/text/Cue;

    .line 29
    .line 30
    iget-object v4, v3, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->l:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    :cond_2
    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->l:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->c()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->j:Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 64
    .line 65
    invoke-virtual {p1, v0, p2, p3, p4}, Landroidx/media3/ui/CanvasSubtitleOutput;->a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final b(IF)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    invoke-static {p1, p2, v0, v1}, Landroidx/media3/ui/SubtitleViewUtils;->b(IFII)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const p2, -0x800001

    .line 24
    .line 25
    .line 26
    cmpl-float p2, p1, p2

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string p0, "unset"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    div-float/2addr p1, p0

    .line 48
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 57
    .line 58
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    const-string p2, "%.2fpx"

    .line 61
    .line 62
    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final c()V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 9
    .line 10
    iget v2, v2, Landroidx/media3/ui/CaptionStyleCompat;->a:I

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->n:F

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v0, v4, v3}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(IF)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const v5, 0x3f99999a    # 1.2f

    .line 24
    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v7, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 31
    .line 32
    iget v8, v7, Landroidx/media3/ui/CaptionStyleCompat;->d:I

    .line 33
    .line 34
    iget v7, v7, Landroidx/media3/ui/CaptionStyleCompat;->e:I

    .line 35
    .line 36
    const-string v9, "unset"

    .line 37
    .line 38
    const/4 v10, 0x3

    .line 39
    const/4 v11, 0x2

    .line 40
    const/4 v12, 0x1

    .line 41
    if-eq v8, v12, :cond_3

    .line 42
    .line 43
    if-eq v8, v11, :cond_2

    .line 44
    .line 45
    if-eq v8, v10, :cond_1

    .line 46
    .line 47
    const/4 v13, 0x4

    .line 48
    if-eq v8, v13, :cond_0

    .line 49
    .line 50
    move-object v7, v9

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    const-string v8, "-0.05em -0.05em 0.15em "

    .line 61
    .line 62
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 74
    .line 75
    const-string v8, "0.06em 0.08em 0.15em "

    .line 76
    .line 77
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 87
    .line 88
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 89
    .line 90
    const-string v8, "0.1em 0.12em 0.15em "

    .line 91
    .line 92
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 106
    .line 107
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    .line 109
    const-string v13, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    .line 110
    .line 111
    invoke-static {v8, v13, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    :goto_0
    filled-new-array {v2, v3, v6, v7}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 120
    .line 121
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 122
    .line 123
    const-string v6, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    .line 124
    .line 125
    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    new-instance v2, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 138
    .line 139
    iget v3, v3, Landroidx/media3/ui/CaptionStyleCompat;->b:I

    .line 140
    .line 141
    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v7, "background-color:"

    .line 148
    .line 149
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, ";"

    .line 156
    .line 157
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v8, ".default_bg,.default_bg *"

    .line 165
    .line 166
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move v6, v4

    .line 170
    :goto_1
    iget-object v8, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->l:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-ge v6, v8, :cond_54

    .line 177
    .line 178
    iget-object v8, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->l:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    check-cast v8, Landroidx/media3/common/text/Cue;

    .line 185
    .line 186
    iget v13, v8, Landroidx/media3/common/text/Cue;->h:F

    .line 187
    .line 188
    iget v14, v8, Landroidx/media3/common/text/Cue;->p:I

    .line 189
    .line 190
    const v15, -0x800001

    .line 191
    .line 192
    .line 193
    cmpl-float v16, v13, v15

    .line 194
    .line 195
    const/high16 v17, 0x42c80000    # 100.0f

    .line 196
    .line 197
    if-eqz v16, :cond_4

    .line 198
    .line 199
    mul-float v13, v13, v17

    .line 200
    .line 201
    :goto_2
    move/from16 v16, v5

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_4
    const/high16 v13, 0x42480000    # 50.0f

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :goto_3
    iget v5, v8, Landroidx/media3/common/text/Cue;->i:I

    .line 208
    .line 209
    const/16 v18, -0x32

    .line 210
    .line 211
    const/16 v19, -0x64

    .line 212
    .line 213
    if-eq v5, v12, :cond_6

    .line 214
    .line 215
    if-eq v5, v11, :cond_5

    .line 216
    .line 217
    move v5, v4

    .line 218
    move/from16 v20, v15

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_5
    move/from16 v20, v15

    .line 222
    .line 223
    move/from16 v5, v19

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_6
    move/from16 v20, v15

    .line 227
    .line 228
    move/from16 v5, v18

    .line 229
    .line 230
    :goto_4
    iget v15, v8, Landroidx/media3/common/text/Cue;->e:F

    .line 231
    .line 232
    cmpl-float v21, v15, v20

    .line 233
    .line 234
    const/high16 v22, 0x3f800000    # 1.0f

    .line 235
    .line 236
    const/16 v23, 0x0

    .line 237
    .line 238
    const-string v10, "%.2f%%"

    .line 239
    .line 240
    if-eqz v21, :cond_e

    .line 241
    .line 242
    iget v4, v8, Landroidx/media3/common/text/Cue;->f:I

    .line 243
    .line 244
    if-eq v4, v12, :cond_c

    .line 245
    .line 246
    mul-float v15, v15, v17

    .line 247
    .line 248
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 257
    .line 258
    invoke-static {v15, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iget v15, v8, Landroidx/media3/common/text/Cue;->g:I

    .line 263
    .line 264
    if-ne v14, v12, :cond_9

    .line 265
    .line 266
    if-eq v15, v12, :cond_8

    .line 267
    .line 268
    if-eq v15, v11, :cond_7

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    goto :goto_5

    .line 272
    :cond_7
    move/from16 v15, v19

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_8
    move/from16 v15, v18

    .line 276
    .line 277
    :goto_5
    neg-int v15, v15

    .line 278
    move/from16 v19, v15

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_9
    if-eq v15, v12, :cond_b

    .line 282
    .line 283
    if-eq v15, v11, :cond_a

    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_a
    move/from16 v18, v19

    .line 289
    .line 290
    :cond_b
    :goto_6
    move/from16 v19, v18

    .line 291
    .line 292
    :goto_7
    move-object/from16 v28, v4

    .line 293
    .line 294
    const/4 v4, 0x0

    .line 295
    goto :goto_9

    .line 296
    :cond_c
    cmpl-float v4, v15, v23

    .line 297
    .line 298
    const-string v11, "%.2fem"

    .line 299
    .line 300
    if-ltz v4, :cond_d

    .line 301
    .line 302
    mul-float v15, v15, v16

    .line 303
    .line 304
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 313
    .line 314
    invoke-static {v15, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    move-object/from16 v28, v4

    .line 319
    .line 320
    const/4 v4, 0x0

    .line 321
    :goto_8
    const/16 v19, 0x0

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_d
    neg-float v4, v15

    .line 325
    sub-float v4, v4, v22

    .line 326
    .line 327
    mul-float v4, v4, v16

    .line 328
    .line 329
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 338
    .line 339
    invoke-static {v15, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    move-object/from16 v28, v4

    .line 344
    .line 345
    move v4, v12

    .line 346
    goto :goto_8

    .line 347
    :cond_e
    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->o:F

    .line 348
    .line 349
    sub-float v22, v22, v4

    .line 350
    .line 351
    mul-float v22, v22, v17

    .line 352
    .line 353
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 362
    .line 363
    invoke-static {v11, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    goto :goto_7

    .line 368
    :goto_9
    iget v11, v8, Landroidx/media3/common/text/Cue;->j:F

    .line 369
    .line 370
    cmpl-float v15, v11, v20

    .line 371
    .line 372
    if-eqz v15, :cond_f

    .line 373
    .line 374
    mul-float v11, v11, v17

    .line 375
    .line 376
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v11

    .line 384
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 385
    .line 386
    invoke-static {v15, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    :goto_a
    move-object/from16 v30, v10

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_f
    const-string v10, "fit-content"

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :goto_b
    iget-object v10, v8, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 397
    .line 398
    const-string v11, "start"

    .line 399
    .line 400
    const-string v15, "end"

    .line 401
    .line 402
    const-string v20, "center"

    .line 403
    .line 404
    if-nez v10, :cond_10

    .line 405
    .line 406
    move v10, v12

    .line 407
    move-object/from16 v31, v20

    .line 408
    .line 409
    const/4 v12, 0x2

    .line 410
    goto :goto_d

    .line 411
    :cond_10
    sget-object v22, Landroidx/media3/ui/WebViewSubtitleOutput$2;->a:[I

    .line 412
    .line 413
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    aget v10, v22, v10

    .line 418
    .line 419
    if-eq v10, v12, :cond_12

    .line 420
    .line 421
    const/4 v12, 0x2

    .line 422
    if-eq v10, v12, :cond_11

    .line 423
    .line 424
    move-object/from16 v31, v20

    .line 425
    .line 426
    :goto_c
    const/4 v10, 0x1

    .line 427
    goto :goto_d

    .line 428
    :cond_11
    move-object/from16 v31, v15

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_12
    const/4 v12, 0x2

    .line 432
    move-object/from16 v31, v11

    .line 433
    .line 434
    goto :goto_c

    .line 435
    :goto_d
    if-eq v14, v10, :cond_14

    .line 436
    .line 437
    if-eq v14, v12, :cond_13

    .line 438
    .line 439
    const-string v10, "horizontal-tb"

    .line 440
    .line 441
    :goto_e
    move-object/from16 v32, v10

    .line 442
    .line 443
    goto :goto_f

    .line 444
    :cond_13
    const-string v10, "vertical-lr"

    .line 445
    .line 446
    goto :goto_e

    .line 447
    :cond_14
    const-string v10, "vertical-rl"

    .line 448
    .line 449
    goto :goto_e

    .line 450
    :goto_f
    iget v10, v8, Landroidx/media3/common/text/Cue;->n:I

    .line 451
    .line 452
    iget v12, v8, Landroidx/media3/common/text/Cue;->o:F

    .line 453
    .line 454
    invoke-virtual {v0, v10, v12}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(IF)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v33

    .line 458
    iget-boolean v10, v8, Landroidx/media3/common/text/Cue;->l:Z

    .line 459
    .line 460
    if-eqz v10, :cond_15

    .line 461
    .line 462
    iget v10, v8, Landroidx/media3/common/text/Cue;->m:I

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_15
    iget-object v10, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 466
    .line 467
    iget v10, v10, Landroidx/media3/ui/CaptionStyleCompat;->c:I

    .line 468
    .line 469
    :goto_10
    invoke-static {v10}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v34

    .line 473
    const-string v10, "right"

    .line 474
    .line 475
    const-string v12, "left"

    .line 476
    .line 477
    const-string v24, "top"

    .line 478
    .line 479
    move/from16 v25, v4

    .line 480
    .line 481
    const/4 v4, 0x1

    .line 482
    if-eq v14, v4, :cond_1a

    .line 483
    .line 484
    const/4 v4, 0x2

    .line 485
    if-eq v14, v4, :cond_17

    .line 486
    .line 487
    if-eqz v25, :cond_16

    .line 488
    .line 489
    const-string v24, "bottom"

    .line 490
    .line 491
    :cond_16
    move-object/from16 v25, v12

    .line 492
    .line 493
    move-object/from16 v27, v24

    .line 494
    .line 495
    :goto_11
    const/4 v4, 0x2

    .line 496
    goto :goto_14

    .line 497
    :cond_17
    if-eqz v25, :cond_18

    .line 498
    .line 499
    goto :goto_13

    .line 500
    :cond_18
    :goto_12
    move-object v10, v12

    .line 501
    :cond_19
    :goto_13
    move-object/from16 v27, v10

    .line 502
    .line 503
    move-object/from16 v25, v24

    .line 504
    .line 505
    goto :goto_11

    .line 506
    :cond_1a
    if-eqz v25, :cond_19

    .line 507
    .line 508
    goto :goto_12

    .line 509
    :goto_14
    if-eq v14, v4, :cond_1c

    .line 510
    .line 511
    const/4 v4, 0x1

    .line 512
    if-ne v14, v4, :cond_1b

    .line 513
    .line 514
    goto :goto_16

    .line 515
    :cond_1b
    const-string v4, "width"

    .line 516
    .line 517
    :goto_15
    move-object/from16 v29, v4

    .line 518
    .line 519
    goto :goto_17

    .line 520
    :cond_1c
    :goto_16
    const-string v4, "height"

    .line 521
    .line 522
    move/from16 v29, v19

    .line 523
    .line 524
    move/from16 v19, v5

    .line 525
    .line 526
    move/from16 v5, v29

    .line 527
    .line 528
    goto :goto_15

    .line 529
    :goto_17
    iget-object v4, v8, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 530
    .line 531
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 540
    .line 541
    .line 542
    move-result-object v10

    .line 543
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 544
    .line 545
    sget-object v12, Landroidx/media3/ui/SpannedToHtmlConverter;->a:Ljava/util/regex/Pattern;

    .line 546
    .line 547
    const-string v12, "</span>"

    .line 548
    .line 549
    move/from16 v24, v5

    .line 550
    .line 551
    const-string v5, ";\'>"

    .line 552
    .line 553
    move/from16 v38, v6

    .line 554
    .line 555
    const-string v6, ""

    .line 556
    .line 557
    if-nez v4, :cond_1d

    .line 558
    .line 559
    new-instance v4, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 560
    .line 561
    invoke-direct {v4, v6}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v40, v3

    .line 565
    .line 566
    move-object/from16 v26, v6

    .line 567
    .line 568
    :goto_18
    move-object/from16 v43, v7

    .line 569
    .line 570
    move-object/from16 v39, v11

    .line 571
    .line 572
    move/from16 v36, v13

    .line 573
    .line 574
    move-object/from16 v41, v15

    .line 575
    .line 576
    goto/16 :goto_2b

    .line 577
    .line 578
    :cond_1d
    move-object/from16 v26, v6

    .line 579
    .line 580
    instance-of v6, v4, Landroid/text/Spanned;

    .line 581
    .line 582
    if-nez v6, :cond_1e

    .line 583
    .line 584
    new-instance v6, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 585
    .line 586
    invoke-static {v4}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-direct {v6, v4}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    move-object/from16 v40, v3

    .line 594
    .line 595
    move-object v4, v6

    .line 596
    goto :goto_18

    .line 597
    :cond_1e
    check-cast v4, Landroid/text/Spanned;

    .line 598
    .line 599
    new-instance v6, Ljava/util/HashSet;

    .line 600
    .line 601
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 602
    .line 603
    .line 604
    move/from16 v35, v10

    .line 605
    .line 606
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 607
    .line 608
    .line 609
    move-result v10

    .line 610
    move-object/from16 v39, v11

    .line 611
    .line 612
    const-class v11, Landroid/text/style/BackgroundColorSpan;

    .line 613
    .line 614
    move/from16 v36, v13

    .line 615
    .line 616
    const/4 v13, 0x0

    .line 617
    invoke-interface {v4, v13, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v10

    .line 621
    check-cast v10, [Landroid/text/style/BackgroundColorSpan;

    .line 622
    .line 623
    array-length v11, v10

    .line 624
    const/4 v13, 0x0

    .line 625
    :goto_19
    if-ge v13, v11, :cond_1f

    .line 626
    .line 627
    aget-object v37, v10, v13

    .line 628
    .line 629
    invoke-virtual/range {v37 .. v37}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 630
    .line 631
    .line 632
    move-result v37

    .line 633
    move-object/from16 v40, v10

    .line 634
    .line 635
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v10

    .line 639
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    add-int/lit8 v13, v13, 0x1

    .line 643
    .line 644
    move-object/from16 v10, v40

    .line 645
    .line 646
    goto :goto_19

    .line 647
    :cond_1f
    new-instance v10, Ljava/util/HashMap;

    .line 648
    .line 649
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 657
    .line 658
    .line 659
    move-result v11

    .line 660
    if-eqz v11, :cond_20

    .line 661
    .line 662
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v11

    .line 666
    check-cast v11, Ljava/lang/Integer;

    .line 667
    .line 668
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 669
    .line 670
    .line 671
    move-result v11

    .line 672
    const-string v13, "bg_"

    .line 673
    .line 674
    invoke-static {v11, v13}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v13

    .line 678
    move-object/from16 v37, v6

    .line 679
    .line 680
    const-string v6, ",."

    .line 681
    .line 682
    move/from16 v40, v11

    .line 683
    .line 684
    const-string v11, " *"

    .line 685
    .line 686
    move-object/from16 v41, v15

    .line 687
    .line 688
    const-string v15, "."

    .line 689
    .line 690
    invoke-static {v15, v13, v6, v13, v11}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    invoke-static/range {v40 .. v40}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    sget-object v13, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 699
    .line 700
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 701
    .line 702
    new-instance v13, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v11

    .line 717
    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-object/from16 v6, v37

    .line 721
    .line 722
    move-object/from16 v15, v41

    .line 723
    .line 724
    goto :goto_1a

    .line 725
    :cond_20
    move-object/from16 v41, v15

    .line 726
    .line 727
    new-instance v6, Landroid/util/SparseArray;

    .line 728
    .line 729
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 730
    .line 731
    .line 732
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 733
    .line 734
    .line 735
    move-result v10

    .line 736
    const-class v11, Ljava/lang/Object;

    .line 737
    .line 738
    const/4 v13, 0x0

    .line 739
    invoke-interface {v4, v13, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v10

    .line 743
    array-length v11, v10

    .line 744
    const/4 v13, 0x0

    .line 745
    :goto_1b
    if-ge v13, v11, :cond_47

    .line 746
    .line 747
    aget-object v15, v10, v13

    .line 748
    .line 749
    move-object/from16 v40, v3

    .line 750
    .line 751
    instance-of v3, v15, Landroid/text/style/StrikethroughSpan;

    .line 752
    .line 753
    const/16 v37, 0x0

    .line 754
    .line 755
    if-eqz v3, :cond_21

    .line 756
    .line 757
    const-string v42, "<span style=\'text-decoration:line-through;\'>"

    .line 758
    .line 759
    move-object/from16 v43, v42

    .line 760
    .line 761
    move/from16 v42, v3

    .line 762
    .line 763
    move-object/from16 v3, v43

    .line 764
    .line 765
    move-object/from16 v43, v7

    .line 766
    .line 767
    :goto_1c
    move-object/from16 v44, v10

    .line 768
    .line 769
    :goto_1d
    move/from16 v45, v11

    .line 770
    .line 771
    move/from16 v46, v13

    .line 772
    .line 773
    goto/16 :goto_23

    .line 774
    .line 775
    :cond_21
    move/from16 v42, v3

    .line 776
    .line 777
    instance-of v3, v15, Landroid/text/style/ForegroundColorSpan;

    .line 778
    .line 779
    if-eqz v3, :cond_22

    .line 780
    .line 781
    move-object v3, v15

    .line 782
    check-cast v3, Landroid/text/style/ForegroundColorSpan;

    .line 783
    .line 784
    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 785
    .line 786
    .line 787
    move-result v3

    .line 788
    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    sget-object v43, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 793
    .line 794
    sget-object v43, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 795
    .line 796
    move-object/from16 v43, v7

    .line 797
    .line 798
    const-string v7, "<span style=\'color:"

    .line 799
    .line 800
    invoke-static {v7, v3, v5}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    goto :goto_1c

    .line 805
    :cond_22
    move-object/from16 v43, v7

    .line 806
    .line 807
    instance-of v3, v15, Landroid/text/style/BackgroundColorSpan;

    .line 808
    .line 809
    if-eqz v3, :cond_23

    .line 810
    .line 811
    move-object v3, v15

    .line 812
    check-cast v3, Landroid/text/style/BackgroundColorSpan;

    .line 813
    .line 814
    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 819
    .line 820
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 821
    .line 822
    const-string v7, "<span class=\'bg_"

    .line 823
    .line 824
    move-object/from16 v44, v10

    .line 825
    .line 826
    const-string v10, "\'>"

    .line 827
    .line 828
    invoke-static {v7, v3, v10}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    goto :goto_1d

    .line 833
    :cond_23
    move-object/from16 v44, v10

    .line 834
    .line 835
    instance-of v3, v15, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 836
    .line 837
    if-eqz v3, :cond_24

    .line 838
    .line 839
    const-string v3, "<span style=\'text-combine-upright:all;\'>"

    .line 840
    .line 841
    goto :goto_1d

    .line 842
    :cond_24
    instance-of v3, v15, Landroid/text/style/AbsoluteSizeSpan;

    .line 843
    .line 844
    if-eqz v3, :cond_26

    .line 845
    .line 846
    move-object v3, v15

    .line 847
    check-cast v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 848
    .line 849
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    .line 850
    .line 851
    .line 852
    move-result v7

    .line 853
    if-eqz v7, :cond_25

    .line 854
    .line 855
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    int-to-float v3, v3

    .line 860
    goto :goto_1e

    .line 861
    :cond_25
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    int-to-float v3, v3

    .line 866
    div-float v3, v3, v35

    .line 867
    .line 868
    :goto_1e
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 877
    .line 878
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 879
    .line 880
    const-string v10, "<span style=\'font-size:%.2fpx;\'>"

    .line 881
    .line 882
    invoke-static {v7, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    goto :goto_1d

    .line 887
    :cond_26
    instance-of v3, v15, Landroid/text/style/RelativeSizeSpan;

    .line 888
    .line 889
    if-eqz v3, :cond_27

    .line 890
    .line 891
    move-object v3, v15

    .line 892
    check-cast v3, Landroid/text/style/RelativeSizeSpan;

    .line 893
    .line 894
    invoke-virtual {v3}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    mul-float v3, v3, v17

    .line 899
    .line 900
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 909
    .line 910
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 911
    .line 912
    const-string v10, "<span style=\'font-size:%.2f%%;\'>"

    .line 913
    .line 914
    invoke-static {v7, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    goto/16 :goto_1d

    .line 919
    .line 920
    :cond_27
    instance-of v3, v15, Landroid/text/style/TypefaceSpan;

    .line 921
    .line 922
    if-eqz v3, :cond_29

    .line 923
    .line 924
    move-object v3, v15

    .line 925
    check-cast v3, Landroid/text/style/TypefaceSpan;

    .line 926
    .line 927
    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    if-eqz v3, :cond_28

    .line 932
    .line 933
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 934
    .line 935
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 936
    .line 937
    const-string v7, "<span style=\'font-family:\""

    .line 938
    .line 939
    const-string v10, "\";\'>"

    .line 940
    .line 941
    invoke-static {v7, v3, v10}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v3

    .line 945
    goto/16 :goto_1d

    .line 946
    .line 947
    :cond_28
    :goto_1f
    move/from16 v45, v11

    .line 948
    .line 949
    move/from16 v46, v13

    .line 950
    .line 951
    move-object/from16 v3, v37

    .line 952
    .line 953
    goto/16 :goto_23

    .line 954
    .line 955
    :cond_29
    instance-of v3, v15, Landroid/text/style/StyleSpan;

    .line 956
    .line 957
    if-eqz v3, :cond_2d

    .line 958
    .line 959
    move-object v3, v15

    .line 960
    check-cast v3, Landroid/text/style/StyleSpan;

    .line 961
    .line 962
    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 963
    .line 964
    .line 965
    move-result v3

    .line 966
    const/4 v10, 0x1

    .line 967
    if-eq v3, v10, :cond_2c

    .line 968
    .line 969
    const/4 v7, 0x2

    .line 970
    if-eq v3, v7, :cond_2b

    .line 971
    .line 972
    const/4 v7, 0x3

    .line 973
    if-eq v3, v7, :cond_2a

    .line 974
    .line 975
    goto :goto_1f

    .line 976
    :cond_2a
    const-string v3, "<b><i>"

    .line 977
    .line 978
    goto/16 :goto_1d

    .line 979
    .line 980
    :cond_2b
    const-string v3, "<i>"

    .line 981
    .line 982
    goto/16 :goto_1d

    .line 983
    .line 984
    :cond_2c
    const-string v3, "<b>"

    .line 985
    .line 986
    goto/16 :goto_1d

    .line 987
    .line 988
    :cond_2d
    instance-of v3, v15, Landroidx/media3/common/text/RubySpan;

    .line 989
    .line 990
    if-eqz v3, :cond_31

    .line 991
    .line 992
    move-object v3, v15

    .line 993
    check-cast v3, Landroidx/media3/common/text/RubySpan;

    .line 994
    .line 995
    iget v3, v3, Landroidx/media3/common/text/RubySpan;->b:I

    .line 996
    .line 997
    const/4 v7, -0x1

    .line 998
    if-eq v3, v7, :cond_30

    .line 999
    .line 1000
    const/4 v10, 0x1

    .line 1001
    if-eq v3, v10, :cond_2f

    .line 1002
    .line 1003
    const/4 v7, 0x2

    .line 1004
    if-eq v3, v7, :cond_2e

    .line 1005
    .line 1006
    goto :goto_1f

    .line 1007
    :cond_2e
    const-string v3, "<ruby style=\'ruby-position:under;\'>"

    .line 1008
    .line 1009
    goto/16 :goto_1d

    .line 1010
    .line 1011
    :cond_2f
    const-string v3, "<ruby style=\'ruby-position:over;\'>"

    .line 1012
    .line 1013
    goto/16 :goto_1d

    .line 1014
    .line 1015
    :cond_30
    const-string v3, "<ruby style=\'ruby-position:unset;\'>"

    .line 1016
    .line 1017
    goto/16 :goto_1d

    .line 1018
    .line 1019
    :cond_31
    instance-of v3, v15, Landroid/text/style/UnderlineSpan;

    .line 1020
    .line 1021
    if-eqz v3, :cond_32

    .line 1022
    .line 1023
    const-string v3, "<u>"

    .line 1024
    .line 1025
    goto/16 :goto_1d

    .line 1026
    .line 1027
    :cond_32
    instance-of v3, v15, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 1028
    .line 1029
    if-eqz v3, :cond_28

    .line 1030
    .line 1031
    move-object v3, v15

    .line 1032
    check-cast v3, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 1033
    .line 1034
    iget v7, v3, Landroidx/media3/common/text/TextEmphasisSpan;->a:I

    .line 1035
    .line 1036
    iget v10, v3, Landroidx/media3/common/text/TextEmphasisSpan;->b:I

    .line 1037
    .line 1038
    move/from16 v45, v11

    .line 1039
    .line 1040
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .line 1044
    .line 1045
    move/from16 v46, v13

    .line 1046
    .line 1047
    const/4 v13, 0x1

    .line 1048
    if-eq v10, v13, :cond_34

    .line 1049
    .line 1050
    const/4 v13, 0x2

    .line 1051
    if-eq v10, v13, :cond_33

    .line 1052
    .line 1053
    goto :goto_20

    .line 1054
    :cond_33
    const-string v10, "open "

    .line 1055
    .line 1056
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    goto :goto_20

    .line 1060
    :cond_34
    const/4 v13, 0x2

    .line 1061
    const-string v10, "filled "

    .line 1062
    .line 1063
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    :goto_20
    if-eqz v7, :cond_38

    .line 1067
    .line 1068
    const/4 v10, 0x1

    .line 1069
    if-eq v7, v10, :cond_37

    .line 1070
    .line 1071
    if-eq v7, v13, :cond_36

    .line 1072
    .line 1073
    const/4 v10, 0x3

    .line 1074
    if-eq v7, v10, :cond_35

    .line 1075
    .line 1076
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    goto :goto_21

    .line 1080
    :cond_35
    const-string v7, "sesame"

    .line 1081
    .line 1082
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    goto :goto_21

    .line 1086
    :cond_36
    const-string v7, "dot"

    .line 1087
    .line 1088
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    goto :goto_21

    .line 1092
    :cond_37
    const-string v7, "circle"

    .line 1093
    .line 1094
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    goto :goto_21

    .line 1098
    :cond_38
    const-string v7, "none"

    .line 1099
    .line 1100
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    :goto_21
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v7

    .line 1107
    iget v3, v3, Landroidx/media3/common/text/TextEmphasisSpan;->c:I

    .line 1108
    .line 1109
    const/4 v13, 0x2

    .line 1110
    if-eq v3, v13, :cond_39

    .line 1111
    .line 1112
    const-string v3, "over right"

    .line 1113
    .line 1114
    goto :goto_22

    .line 1115
    :cond_39
    const-string v3, "under left"

    .line 1116
    .line 1117
    :goto_22
    filled-new-array {v7, v3}, [Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 1122
    .line 1123
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1124
    .line 1125
    const-string v10, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 1126
    .line 1127
    invoke-static {v7, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    :goto_23
    if-nez v42, :cond_3a

    .line 1132
    .line 1133
    instance-of v7, v15, Landroid/text/style/ForegroundColorSpan;

    .line 1134
    .line 1135
    if-nez v7, :cond_3a

    .line 1136
    .line 1137
    instance-of v7, v15, Landroid/text/style/BackgroundColorSpan;

    .line 1138
    .line 1139
    if-nez v7, :cond_3a

    .line 1140
    .line 1141
    instance-of v7, v15, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 1142
    .line 1143
    if-nez v7, :cond_3a

    .line 1144
    .line 1145
    instance-of v7, v15, Landroid/text/style/AbsoluteSizeSpan;

    .line 1146
    .line 1147
    if-nez v7, :cond_3a

    .line 1148
    .line 1149
    instance-of v7, v15, Landroid/text/style/RelativeSizeSpan;

    .line 1150
    .line 1151
    if-nez v7, :cond_3a

    .line 1152
    .line 1153
    instance-of v7, v15, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 1154
    .line 1155
    if-eqz v7, :cond_3b

    .line 1156
    .line 1157
    :cond_3a
    const/4 v10, 0x3

    .line 1158
    goto :goto_26

    .line 1159
    :cond_3b
    instance-of v7, v15, Landroid/text/style/TypefaceSpan;

    .line 1160
    .line 1161
    if-eqz v7, :cond_3d

    .line 1162
    .line 1163
    move-object v7, v15

    .line 1164
    check-cast v7, Landroid/text/style/TypefaceSpan;

    .line 1165
    .line 1166
    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v7

    .line 1170
    if-eqz v7, :cond_3c

    .line 1171
    .line 1172
    move-object v7, v12

    .line 1173
    :goto_24
    const/4 v10, 0x3

    .line 1174
    goto :goto_27

    .line 1175
    :cond_3c
    move-object/from16 v7, v37

    .line 1176
    .line 1177
    goto :goto_24

    .line 1178
    :cond_3d
    instance-of v7, v15, Landroid/text/style/StyleSpan;

    .line 1179
    .line 1180
    if-eqz v7, :cond_42

    .line 1181
    .line 1182
    move-object v7, v15

    .line 1183
    check-cast v7, Landroid/text/style/StyleSpan;

    .line 1184
    .line 1185
    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 1186
    .line 1187
    .line 1188
    move-result v7

    .line 1189
    const/4 v10, 0x1

    .line 1190
    if-eq v7, v10, :cond_41

    .line 1191
    .line 1192
    const/4 v13, 0x2

    .line 1193
    if-eq v7, v13, :cond_40

    .line 1194
    .line 1195
    const/4 v10, 0x3

    .line 1196
    if-eq v7, v10, :cond_3e

    .line 1197
    .line 1198
    goto :goto_25

    .line 1199
    :cond_3e
    const-string v37, "</i></b>"

    .line 1200
    .line 1201
    :cond_3f
    :goto_25
    move-object/from16 v7, v37

    .line 1202
    .line 1203
    goto :goto_27

    .line 1204
    :cond_40
    const/4 v10, 0x3

    .line 1205
    const-string v37, "</i>"

    .line 1206
    .line 1207
    goto :goto_25

    .line 1208
    :cond_41
    const/4 v10, 0x3

    .line 1209
    const-string v37, "</b>"

    .line 1210
    .line 1211
    goto :goto_25

    .line 1212
    :cond_42
    const/4 v10, 0x3

    .line 1213
    instance-of v7, v15, Landroidx/media3/common/text/RubySpan;

    .line 1214
    .line 1215
    if-eqz v7, :cond_43

    .line 1216
    .line 1217
    move-object v7, v15

    .line 1218
    check-cast v7, Landroidx/media3/common/text/RubySpan;

    .line 1219
    .line 1220
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    const-string v13, "<rt>"

    .line 1223
    .line 1224
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    iget-object v7, v7, Landroidx/media3/common/text/RubySpan;->a:Ljava/lang/String;

    .line 1228
    .line 1229
    invoke-static {v7}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v7

    .line 1233
    const-string v13, "</rt></ruby>"

    .line 1234
    .line 1235
    invoke-static {v11, v7, v13}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v37

    .line 1239
    goto :goto_25

    .line 1240
    :cond_43
    instance-of v7, v15, Landroid/text/style/UnderlineSpan;

    .line 1241
    .line 1242
    if-eqz v7, :cond_3f

    .line 1243
    .line 1244
    const-string v37, "</u>"

    .line 1245
    .line 1246
    goto :goto_25

    .line 1247
    :goto_26
    move-object v7, v12

    .line 1248
    :goto_27
    invoke-interface {v4, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 1249
    .line 1250
    .line 1251
    move-result v11

    .line 1252
    invoke-interface {v4, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 1253
    .line 1254
    .line 1255
    move-result v13

    .line 1256
    if-eqz v3, :cond_46

    .line 1257
    .line 1258
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1259
    .line 1260
    .line 1261
    new-instance v15, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 1262
    .line 1263
    invoke-direct {v15, v11, v13, v3, v7}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v3

    .line 1270
    check-cast v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 1271
    .line 1272
    if-nez v3, :cond_44

    .line 1273
    .line 1274
    new-instance v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 1275
    .line 1276
    invoke-direct {v3}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v6, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1280
    .line 1281
    .line 1282
    :cond_44
    iget-object v3, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->a:Ljava/util/ArrayList;

    .line 1283
    .line 1284
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v3

    .line 1291
    check-cast v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 1292
    .line 1293
    if-nez v3, :cond_45

    .line 1294
    .line 1295
    new-instance v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 1296
    .line 1297
    invoke-direct {v3}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v6, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1301
    .line 1302
    .line 1303
    :cond_45
    iget-object v3, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    .line 1304
    .line 1305
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    :cond_46
    add-int/lit8 v13, v46, 0x1

    .line 1309
    .line 1310
    move-object/from16 v3, v40

    .line 1311
    .line 1312
    move-object/from16 v7, v43

    .line 1313
    .line 1314
    move-object/from16 v10, v44

    .line 1315
    .line 1316
    move/from16 v11, v45

    .line 1317
    .line 1318
    goto/16 :goto_1b

    .line 1319
    .line 1320
    :cond_47
    move-object/from16 v40, v3

    .line 1321
    .line 1322
    move-object/from16 v43, v7

    .line 1323
    .line 1324
    const/4 v10, 0x3

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1328
    .line 1329
    .line 1330
    move-result v7

    .line 1331
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1332
    .line 1333
    .line 1334
    const/4 v7, 0x0

    .line 1335
    const/4 v13, 0x0

    .line 1336
    :goto_28
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 1337
    .line 1338
    .line 1339
    move-result v11

    .line 1340
    if-ge v13, v11, :cond_4a

    .line 1341
    .line 1342
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1343
    .line 1344
    .line 1345
    move-result v11

    .line 1346
    invoke-interface {v4, v7, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v7

    .line 1350
    invoke-static {v7}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v7

    .line 1354
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v7

    .line 1361
    check-cast v7, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 1362
    .line 1363
    iget-object v15, v7, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    .line 1364
    .line 1365
    iget-object v10, v7, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->a:Ljava/util/ArrayList;

    .line 1366
    .line 1367
    move-object/from16 v17, v6

    .line 1368
    .line 1369
    sget-object v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->f:Landroidx/media3/ui/h;

    .line 1370
    .line 1371
    invoke-static {v15, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v6, v7, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    .line 1375
    .line 1376
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v6

    .line 1380
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1381
    .line 1382
    .line 1383
    move-result v7

    .line 1384
    if-eqz v7, :cond_48

    .line 1385
    .line 1386
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v7

    .line 1390
    check-cast v7, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 1391
    .line 1392
    iget-object v7, v7, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    .line 1393
    .line 1394
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    goto :goto_29

    .line 1398
    :cond_48
    sget-object v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->e:Landroidx/media3/ui/h;

    .line 1399
    .line 1400
    invoke-static {v10, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v6

    .line 1407
    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1408
    .line 1409
    .line 1410
    move-result v7

    .line 1411
    if-eqz v7, :cond_49

    .line 1412
    .line 1413
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v7

    .line 1417
    check-cast v7, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 1418
    .line 1419
    iget-object v7, v7, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    .line 1420
    .line 1421
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    goto :goto_2a

    .line 1425
    :cond_49
    add-int/lit8 v13, v13, 0x1

    .line 1426
    .line 1427
    move v7, v11

    .line 1428
    move-object/from16 v6, v17

    .line 1429
    .line 1430
    const/4 v10, 0x3

    .line 1431
    goto :goto_28

    .line 1432
    :cond_4a
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1433
    .line 1434
    .line 1435
    move-result v6

    .line 1436
    invoke-interface {v4, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v4

    .line 1440
    invoke-static {v4}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v4

    .line 1444
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    .line 1447
    new-instance v4, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 1448
    .line 1449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v3

    .line 1453
    invoke-direct {v4, v3}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    :goto_2b
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v3

    .line 1464
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1465
    .line 1466
    .line 1467
    move-result v6

    .line 1468
    if-eqz v6, :cond_4d

    .line 1469
    .line 1470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v6

    .line 1474
    check-cast v6, Ljava/lang/String;

    .line 1475
    .line 1476
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v7

    .line 1480
    check-cast v7, Ljava/lang/String;

    .line 1481
    .line 1482
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v7

    .line 1486
    check-cast v7, Ljava/lang/String;

    .line 1487
    .line 1488
    if-eqz v7, :cond_4c

    .line 1489
    .line 1490
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v6

    .line 1494
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v6

    .line 1498
    if-eqz v6, :cond_4b

    .line 1499
    .line 1500
    goto :goto_2d

    .line 1501
    :cond_4b
    const/4 v6, 0x0

    .line 1502
    goto :goto_2e

    .line 1503
    :cond_4c
    :goto_2d
    const/4 v6, 0x1

    .line 1504
    :goto_2e
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 1505
    .line 1506
    .line 1507
    goto :goto_2c

    .line 1508
    :cond_4d
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v3

    .line 1512
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v6

    .line 1516
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v35

    .line 1520
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v36

    .line 1524
    iget v7, v8, Landroidx/media3/common/text/Cue;->q:F

    .line 1525
    .line 1526
    cmpl-float v10, v7, v23

    .line 1527
    .line 1528
    if-eqz v10, :cond_50

    .line 1529
    .line 1530
    const/4 v13, 0x2

    .line 1531
    if-eq v14, v13, :cond_4f

    .line 1532
    .line 1533
    const/4 v10, 0x1

    .line 1534
    if-ne v14, v10, :cond_4e

    .line 1535
    .line 1536
    goto :goto_2f

    .line 1537
    :cond_4e
    const-string v10, "skewX"

    .line 1538
    .line 1539
    goto :goto_30

    .line 1540
    :cond_4f
    :goto_2f
    const-string v10, "skewY"

    .line 1541
    .line 1542
    :goto_30
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v7

    .line 1546
    filled-new-array {v10, v7}, [Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v7

    .line 1550
    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 1551
    .line 1552
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1553
    .line 1554
    const-string v11, "%s(%.2fdeg)"

    .line 1555
    .line 1556
    invoke-static {v10, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v7

    .line 1560
    move-object/from16 v37, v7

    .line 1561
    .line 1562
    :goto_31
    move-object/from16 v24, v3

    .line 1563
    .line 1564
    move-object/from16 v26, v6

    .line 1565
    .line 1566
    goto :goto_32

    .line 1567
    :cond_50
    move-object/from16 v37, v26

    .line 1568
    .line 1569
    goto :goto_31

    .line 1570
    :goto_32
    filled-new-array/range {v24 .. v37}, [Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v3

    .line 1574
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1575
    .line 1576
    const-string v7, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    .line 1577
    .line 1578
    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v3

    .line 1582
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    const-string v3, "<span class=\'default_bg\'>"

    .line 1586
    .line 1587
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    .line 1590
    iget-object v3, v8, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 1591
    .line 1592
    iget-object v4, v4, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->a:Ljava/lang/String;

    .line 1593
    .line 1594
    if-eqz v3, :cond_53

    .line 1595
    .line 1596
    sget-object v6, Landroidx/media3/ui/WebViewSubtitleOutput$2;->a:[I

    .line 1597
    .line 1598
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1599
    .line 1600
    .line 1601
    move-result v3

    .line 1602
    aget v3, v6, v3

    .line 1603
    .line 1604
    const/4 v10, 0x1

    .line 1605
    if-eq v3, v10, :cond_52

    .line 1606
    .line 1607
    const/4 v13, 0x2

    .line 1608
    if-eq v3, v13, :cond_51

    .line 1609
    .line 1610
    move-object/from16 v11, v20

    .line 1611
    .line 1612
    goto :goto_33

    .line 1613
    :cond_51
    move-object/from16 v11, v41

    .line 1614
    .line 1615
    goto :goto_33

    .line 1616
    :cond_52
    const/4 v13, 0x2

    .line 1617
    move-object/from16 v11, v39

    .line 1618
    .line 1619
    :goto_33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1620
    .line 1621
    const-string v6, "<span style=\'display:inline-block; text-align:"

    .line 1622
    .line 1623
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v3

    .line 1636
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    .line 1644
    .line 1645
    goto :goto_34

    .line 1646
    :cond_53
    const/4 v13, 0x2

    .line 1647
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    .line 1649
    .line 1650
    :goto_34
    const-string v3, "</span></div>"

    .line 1651
    .line 1652
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    add-int/lit8 v6, v38, 0x1

    .line 1656
    .line 1657
    move v11, v13

    .line 1658
    move/from16 v5, v16

    .line 1659
    .line 1660
    move-object/from16 v3, v40

    .line 1661
    .line 1662
    move-object/from16 v7, v43

    .line 1663
    .line 1664
    const/4 v4, 0x0

    .line 1665
    const/4 v10, 0x3

    .line 1666
    const/4 v12, 0x1

    .line 1667
    goto/16 :goto_1

    .line 1668
    .line 1669
    :cond_54
    const-string v3, "</div></body></html>"

    .line 1670
    .line 1671
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .line 1678
    .line 1679
    const-string v4, "<html><head><style>"

    .line 1680
    .line 1681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v4

    .line 1688
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v4

    .line 1692
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1693
    .line 1694
    .line 1695
    move-result v5

    .line 1696
    if-eqz v5, :cond_55

    .line 1697
    .line 1698
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v5

    .line 1702
    check-cast v5, Ljava/lang/String;

    .line 1703
    .line 1704
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    const-string v6, "{"

    .line 1708
    .line 1709
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v5

    .line 1716
    check-cast v5, Ljava/lang/String;

    .line 1717
    .line 1718
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    .line 1720
    .line 1721
    const-string v5, "}"

    .line 1722
    .line 1723
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    goto :goto_35

    .line 1727
    :cond_55
    const-string v2, "</style></head>"

    .line 1728
    .line 1729
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    .line 1731
    .line 1732
    const/4 v13, 0x0

    .line 1733
    invoke-virtual {v1, v13, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v1

    .line 1740
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1741
    .line 1742
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1743
    .line 1744
    .line 1745
    move-result-object v1

    .line 1746
    const/4 v10, 0x1

    .line 1747
    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v1

    .line 1751
    const-string v2, "text/html"

    .line 1752
    .line 1753
    const-string v3, "base64"

    .line 1754
    .line 1755
    iget-object v0, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->k:Landroid/webkit/WebView;

    .line 1756
    .line 1757
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    .line 1759
    .line 1760
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->l:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
