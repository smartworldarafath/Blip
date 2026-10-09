.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$FontVariationSettingsManager;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/TintInfo;

.field public c:Landroidx/appcompat/widget/TintInfo;

.field public d:Landroidx/appcompat/widget/TintInfo;

.field public e:Landroidx/appcompat/widget/TintInfo;

.field public f:Landroidx/appcompat/widget/TintInfo;

.field public g:Landroidx/appcompat/widget/TintInfo;

.field public h:Landroidx/appcompat/widget/TintInfo;

.field public final i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Ljava/lang/String;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->m:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 21
    .line 22
    return-void
.end method

.method public static d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->a:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->d(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->m:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method public final e(Landroid/util/AttributeSet;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    sget-object v7, Landroidx/appcompat/R$styleable;->g:[I

    .line 8
    .line 9
    sget-object v8, Landroidx/appcompat/R$styleable;->r:[I

    .line 10
    .line 11
    iget-object v9, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 12
    .line 13
    iget-object v10, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->b:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    const-class v1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v2, Landroidx/appcompat/widget/AppCompatDrawableManager;->c:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->c()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto/16 :goto_27

    .line 34
    .line 35
    :cond_0
    :goto_0
    sget-object v12, Landroidx/appcompat/widget/AppCompatDrawableManager;->c:Landroidx/appcompat/widget/AppCompatDrawableManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    sget-object v1, Landroidx/appcompat/R$styleable;->f:[I

    .line 39
    .line 40
    invoke-static {v11, v3, v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->d(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    move-object v3, v1

    .line 45
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v5, v13, Landroidx/appcompat/widget/TintTypedArray;->b:Landroid/content/res/TypedArray;

    .line 52
    .line 53
    move-object/from16 v4, p1

    .line 54
    .line 55
    move/from16 v6, p2

    .line 56
    .line 57
    invoke-static/range {v1 .. v6}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 58
    .line 59
    .line 60
    move-object v3, v4

    .line 61
    move v5, v6

    .line 62
    iget-object v1, v13, Landroidx/appcompat/widget/TintTypedArray;->b:Landroid/content/res/TypedArray;

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v14, -0x1

    .line 66
    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v15, 0x3

    .line 71
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v11, v12, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iput-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 86
    .line 87
    :cond_1
    const/4 v4, 0x1

    .line 88
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 89
    .line 90
    .line 91
    move-result v16

    .line 92
    if-eqz v16, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    invoke-static {v11, v12, v15}, Landroidx/appcompat/widget/AppCompatTextHelper;->d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    iput-object v15, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 103
    .line 104
    :cond_2
    const/4 v15, 0x4

    .line 105
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 106
    .line 107
    .line 108
    move-result v17

    .line 109
    if-eqz v17, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-static {v11, v12, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iput-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 120
    .line 121
    :cond_3
    const/4 v4, 0x2

    .line 122
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    .line 124
    .line 125
    move-result v18

    .line 126
    if-eqz v18, :cond_4

    .line 127
    .line 128
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    invoke-static {v11, v12, v15}, Landroidx/appcompat/widget/AppCompatTextHelper;->d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    iput-object v15, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 137
    .line 138
    :cond_4
    const/4 v15, 0x5

    .line 139
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 140
    .line 141
    .line 142
    move-result v19

    .line 143
    if-eqz v19, :cond_5

    .line 144
    .line 145
    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-static {v11, v12, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iput-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 154
    .line 155
    :cond_5
    const/4 v4, 0x6

    .line 156
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 157
    .line 158
    .line 159
    move-result v20

    .line 160
    if-eqz v20, :cond_6

    .line 161
    .line 162
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-static {v11, v12, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->d(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iput-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 171
    .line 172
    :cond_6
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 180
    .line 181
    const/16 v13, 0xe

    .line 182
    .line 183
    if-eq v2, v14, :cond_9

    .line 184
    .line 185
    new-instance v4, Landroidx/appcompat/widget/TintTypedArray;

    .line 186
    .line 187
    invoke-virtual {v11, v2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-direct {v4, v11, v2}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 192
    .line 193
    .line 194
    if-nez v1, :cond_7

    .line 195
    .line 196
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 197
    .line 198
    .line 199
    move-result v22

    .line 200
    if-eqz v22, :cond_7

    .line 201
    .line 202
    invoke-virtual {v2, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 203
    .line 204
    .line 205
    move-result v22

    .line 206
    const/16 v23, 0x1

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_7
    move/from16 v22, v6

    .line 210
    .line 211
    move/from16 v23, v22

    .line 212
    .line 213
    :goto_1
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->i(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)Z

    .line 214
    .line 215
    .line 216
    const/16 v15, 0xf

    .line 217
    .line 218
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 219
    .line 220
    .line 221
    move-result v21

    .line 222
    if-eqz v21, :cond_8

    .line 223
    .line 224
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    goto :goto_2

    .line 229
    :cond_8
    const/4 v2, 0x0

    .line 230
    :goto_2
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_9
    move/from16 v22, v6

    .line 235
    .line 236
    move/from16 v23, v22

    .line 237
    .line 238
    const/4 v2, 0x0

    .line 239
    :goto_3
    new-instance v4, Landroidx/appcompat/widget/TintTypedArray;

    .line 240
    .line 241
    invoke-virtual {v11, v3, v8, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-direct {v4, v11, v8}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 246
    .line 247
    .line 248
    if-nez v1, :cond_a

    .line 249
    .line 250
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    if-eqz v15, :cond_a

    .line 255
    .line 256
    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v22

    .line 260
    const/16 v23, 0x1

    .line 261
    .line 262
    :cond_a
    move/from16 v13, v22

    .line 263
    .line 264
    const/16 v15, 0xf

    .line 265
    .line 266
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 267
    .line 268
    .line 269
    move-result v21

    .line 270
    if-eqz v21, :cond_b

    .line 271
    .line 272
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    :cond_b
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 277
    .line 278
    .line 279
    move-result v15

    .line 280
    move/from16 v22, v15

    .line 281
    .line 282
    const/4 v15, 0x0

    .line 283
    if-eqz v22, :cond_c

    .line 284
    .line 285
    invoke-virtual {v8, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-nez v8, :cond_c

    .line 290
    .line 291
    invoke-virtual {v10, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    .line 293
    .line 294
    :cond_c
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->i(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 298
    .line 299
    .line 300
    if-nez v1, :cond_d

    .line 301
    .line 302
    if-eqz v23, :cond_d

    .line 303
    .line 304
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 307
    .line 308
    .line 309
    :cond_d
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Z)V

    .line 310
    .line 311
    .line 312
    if-eqz v2, :cond_e

    .line 313
    .line 314
    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 319
    .line 320
    .line 321
    :cond_e
    iget-object v8, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->h:Landroid/content/Context;

    .line 322
    .line 323
    invoke-virtual {v8, v3, v7, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    iget-object v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->g:Landroid/widget/TextView;

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    move-object v2, v7

    .line 334
    move/from16 v17, v15

    .line 335
    .line 336
    const/4 v7, 0x1

    .line 337
    const/4 v13, 0x6

    .line 338
    const/4 v15, 0x2

    .line 339
    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 340
    .line 341
    .line 342
    const/4 v0, 0x5

    .line 343
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_f

    .line 348
    .line 349
    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iput v1, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 354
    .line 355
    :cond_f
    const/4 v0, 0x4

    .line 356
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    const/high16 v5, -0x40800000    # -1.0f

    .line 361
    .line 362
    if-eqz v1, :cond_10

    .line 363
    .line 364
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    goto :goto_4

    .line 369
    :cond_10
    move v0, v5

    .line 370
    :goto_4
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_11

    .line 375
    .line 376
    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    goto :goto_5

    .line 381
    :cond_11
    move v1, v5

    .line 382
    :goto_5
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 383
    .line 384
    .line 385
    move-result v18

    .line 386
    if-eqz v18, :cond_12

    .line 387
    .line 388
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 389
    .line 390
    .line 391
    move-result v18

    .line 392
    :goto_6
    const/4 v13, 0x3

    .line 393
    goto :goto_7

    .line 394
    :cond_12
    move/from16 v18, v5

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :goto_7
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 398
    .line 399
    .line 400
    move-result v16

    .line 401
    if-eqz v16, :cond_16

    .line 402
    .line 403
    invoke-virtual {v4, v13, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 404
    .line 405
    .line 406
    move-result v15

    .line 407
    if-lez v15, :cond_16

    .line 408
    .line 409
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 414
    .line 415
    .line 416
    move-result-object v13

    .line 417
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    .line 418
    .line 419
    .line 420
    move-result v15

    .line 421
    move/from16 v22, v6

    .line 422
    .line 423
    new-array v6, v15, [I

    .line 424
    .line 425
    if-lez v15, :cond_15

    .line 426
    .line 427
    move/from16 v5, v22

    .line 428
    .line 429
    :goto_8
    if-ge v5, v15, :cond_13

    .line 430
    .line 431
    invoke-virtual {v13, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 432
    .line 433
    .line 434
    move-result v23

    .line 435
    aput v23, v6, v5

    .line 436
    .line 437
    add-int/lit8 v5, v5, 0x1

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_13
    invoke-static {v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a([I)[I

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    iput-object v5, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->e:[I

    .line 445
    .line 446
    array-length v6, v5

    .line 447
    if-lez v6, :cond_14

    .line 448
    .line 449
    move v15, v7

    .line 450
    goto :goto_9

    .line 451
    :cond_14
    move/from16 v15, v22

    .line 452
    .line 453
    :goto_9
    iput-boolean v15, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:Z

    .line 454
    .line 455
    if-eqz v15, :cond_15

    .line 456
    .line 457
    iput v7, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 458
    .line 459
    aget v15, v5, v22

    .line 460
    .line 461
    int-to-float v15, v15

    .line 462
    iput v15, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 463
    .line 464
    sub-int/2addr v6, v7

    .line 465
    aget v5, v5, v6

    .line 466
    .line 467
    int-to-float v5, v5

    .line 468
    iput v5, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->d:F

    .line 469
    .line 470
    const/high16 v5, -0x40800000    # -1.0f

    .line 471
    .line 472
    iput v5, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b:F

    .line 473
    .line 474
    :cond_15
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 475
    .line 476
    .line 477
    goto :goto_a

    .line 478
    :cond_16
    move/from16 v22, v6

    .line 479
    .line 480
    :goto_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b()Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_20

    .line 488
    .line 489
    iget v4, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 490
    .line 491
    if-ne v4, v7, :cond_21

    .line 492
    .line 493
    iget-boolean v4, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:Z

    .line 494
    .line 495
    if-nez v4, :cond_1d

    .line 496
    .line 497
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    const/high16 v5, -0x40800000    # -1.0f

    .line 506
    .line 507
    cmpl-float v6, v1, v5

    .line 508
    .line 509
    if-nez v6, :cond_17

    .line 510
    .line 511
    const/high16 v1, 0x41400000    # 12.0f

    .line 512
    .line 513
    const/4 v15, 0x2

    .line 514
    invoke-static {v15, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    goto :goto_b

    .line 519
    :cond_17
    const/4 v15, 0x2

    .line 520
    :goto_b
    cmpl-float v6, v18, v5

    .line 521
    .line 522
    if-nez v6, :cond_18

    .line 523
    .line 524
    const/high16 v6, 0x42e00000    # 112.0f

    .line 525
    .line 526
    invoke-static {v15, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 527
    .line 528
    .line 529
    move-result v18

    .line 530
    :cond_18
    move/from16 v4, v18

    .line 531
    .line 532
    cmpl-float v6, v0, v5

    .line 533
    .line 534
    if-nez v6, :cond_19

    .line 535
    .line 536
    const/high16 v0, 0x3f800000    # 1.0f

    .line 537
    .line 538
    :cond_19
    const-string v5, "px) is less or equal to (0px)"

    .line 539
    .line 540
    cmpg-float v6, v1, v17

    .line 541
    .line 542
    if-lez v6, :cond_1c

    .line 543
    .line 544
    cmpg-float v6, v4, v1

    .line 545
    .line 546
    if-lez v6, :cond_1b

    .line 547
    .line 548
    cmpg-float v6, v0, v17

    .line 549
    .line 550
    if-lez v6, :cond_1a

    .line 551
    .line 552
    iput v7, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 553
    .line 554
    iput v1, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 555
    .line 556
    iput v4, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->d:F

    .line 557
    .line 558
    iput v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b:F

    .line 559
    .line 560
    move/from16 v0, v22

    .line 561
    .line 562
    iput-boolean v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:Z

    .line 563
    .line 564
    goto :goto_c

    .line 565
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 566
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    const-string v3, "The auto-size step granularity ("

    .line 570
    .line 571
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v1

    .line 588
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 589
    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    const-string v3, "Maximum auto-size text size ("

    .line 593
    .line 594
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v3, "px) is less or equal to minimum auto-size text size ("

    .line 601
    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v1, "px)"

    .line 609
    .line 610
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v0

    .line 621
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 622
    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v3, "Minimum auto-size text size ("

    .line 626
    .line 627
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v0

    .line 644
    :cond_1d
    :goto_c
    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b()Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_21

    .line 649
    .line 650
    iget v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 651
    .line 652
    if-ne v0, v7, :cond_21

    .line 653
    .line 654
    iget-boolean v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:Z

    .line 655
    .line 656
    if-eqz v0, :cond_1e

    .line 657
    .line 658
    iget-object v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->e:[I

    .line 659
    .line 660
    array-length v0, v0

    .line 661
    if-nez v0, :cond_21

    .line 662
    .line 663
    :cond_1e
    iget v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->d:F

    .line 664
    .line 665
    iget v1, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 666
    .line 667
    sub-float/2addr v0, v1

    .line 668
    iget v1, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b:F

    .line 669
    .line 670
    div-float/2addr v0, v1

    .line 671
    float-to-double v0, v0

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 673
    .line 674
    .line 675
    move-result-wide v0

    .line 676
    double-to-int v0, v0

    .line 677
    add-int/2addr v0, v7

    .line 678
    new-array v1, v0, [I

    .line 679
    .line 680
    const/4 v4, 0x0

    .line 681
    :goto_d
    if-ge v4, v0, :cond_1f

    .line 682
    .line 683
    iget v5, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 684
    .line 685
    int-to-float v6, v4

    .line 686
    iget v8, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b:F

    .line 687
    .line 688
    mul-float/2addr v6, v8

    .line 689
    add-float/2addr v6, v5

    .line 690
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 691
    .line 692
    .line 693
    move-result v5

    .line 694
    aput v5, v1, v4

    .line 695
    .line 696
    add-int/lit8 v4, v4, 0x1

    .line 697
    .line 698
    goto :goto_d

    .line 699
    :cond_1f
    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a([I)[I

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    iput-object v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->e:[I

    .line 704
    .line 705
    goto :goto_e

    .line 706
    :cond_20
    move/from16 v0, v22

    .line 707
    .line 708
    iput v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 709
    .line 710
    :cond_21
    :goto_e
    iget v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 711
    .line 712
    if-eqz v0, :cond_23

    .line 713
    .line 714
    iget-object v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->e:[I

    .line 715
    .line 716
    array-length v1, v0

    .line 717
    if-lez v1, :cond_23

    .line 718
    .line 719
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a:Landroidx/collection/LruCache;

    .line 720
    .line 721
    invoke-virtual {v10}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    int-to-float v1, v1

    .line 726
    const/high16 v5, -0x40800000    # -1.0f

    .line 727
    .line 728
    cmpl-float v1, v1, v5

    .line 729
    .line 730
    if-eqz v1, :cond_22

    .line 731
    .line 732
    iget v0, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 733
    .line 734
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    iget v1, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->d:F

    .line 739
    .line 740
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    iget v4, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b:F

    .line 745
    .line 746
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    const/4 v5, 0x0

    .line 751
    invoke-virtual {v10, v0, v1, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 752
    .line 753
    .line 754
    goto :goto_f

    .line 755
    :cond_22
    const/4 v5, 0x0

    .line 756
    invoke-virtual {v10, v0, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 757
    .line 758
    .line 759
    :cond_23
    :goto_f
    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    .line 760
    .line 761
    invoke-virtual {v11, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-direct {v0, v11, v1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 766
    .line 767
    .line 768
    const/16 v2, 0x8

    .line 769
    .line 770
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    if-eq v2, v14, :cond_24

    .line 775
    .line 776
    invoke-virtual {v12, v11, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    goto :goto_10

    .line 781
    :cond_24
    const/4 v2, 0x0

    .line 782
    :goto_10
    const/16 v3, 0xd

    .line 783
    .line 784
    invoke-virtual {v1, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 785
    .line 786
    .line 787
    move-result v3

    .line 788
    if-eq v3, v14, :cond_25

    .line 789
    .line 790
    invoke-virtual {v12, v11, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    goto :goto_11

    .line 795
    :cond_25
    const/4 v3, 0x0

    .line 796
    :goto_11
    const/16 v4, 0x9

    .line 797
    .line 798
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    if-eq v4, v14, :cond_26

    .line 803
    .line 804
    invoke-virtual {v12, v11, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    :goto_12
    const/4 v13, 0x6

    .line 809
    goto :goto_13

    .line 810
    :cond_26
    const/4 v4, 0x0

    .line 811
    goto :goto_12

    .line 812
    :goto_13
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 813
    .line 814
    .line 815
    move-result v5

    .line 816
    if-eq v5, v14, :cond_27

    .line 817
    .line 818
    invoke-virtual {v12, v11, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    goto :goto_14

    .line 823
    :cond_27
    const/4 v5, 0x0

    .line 824
    :goto_14
    const/16 v6, 0xa

    .line 825
    .line 826
    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 827
    .line 828
    .line 829
    move-result v6

    .line 830
    if-eq v6, v14, :cond_28

    .line 831
    .line 832
    invoke-virtual {v12, v11, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 833
    .line 834
    .line 835
    move-result-object v6

    .line 836
    goto :goto_15

    .line 837
    :cond_28
    const/4 v6, 0x0

    .line 838
    :goto_15
    const/4 v8, 0x7

    .line 839
    invoke-virtual {v1, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 840
    .line 841
    .line 842
    move-result v8

    .line 843
    if-eq v8, v14, :cond_29

    .line 844
    .line 845
    invoke-virtual {v12, v11, v8}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 846
    .line 847
    .line 848
    move-result-object v8

    .line 849
    goto :goto_16

    .line 850
    :cond_29
    const/4 v8, 0x0

    .line 851
    :goto_16
    if-nez v6, :cond_34

    .line 852
    .line 853
    if-eqz v8, :cond_2a

    .line 854
    .line 855
    goto :goto_1f

    .line 856
    :cond_2a
    if-nez v2, :cond_2b

    .line 857
    .line 858
    if-nez v3, :cond_2b

    .line 859
    .line 860
    if-nez v4, :cond_2b

    .line 861
    .line 862
    if-eqz v5, :cond_39

    .line 863
    .line 864
    :cond_2b
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 865
    .line 866
    .line 867
    move-result-object v6

    .line 868
    const/16 v22, 0x0

    .line 869
    .line 870
    aget-object v8, v6, v22

    .line 871
    .line 872
    if-nez v8, :cond_2c

    .line 873
    .line 874
    const/16 v19, 0x2

    .line 875
    .line 876
    aget-object v9, v6, v19

    .line 877
    .line 878
    if-eqz v9, :cond_2d

    .line 879
    .line 880
    :cond_2c
    const/16 v16, 0x3

    .line 881
    .line 882
    goto :goto_1b

    .line 883
    :cond_2d
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 884
    .line 885
    .line 886
    move-result-object v6

    .line 887
    if-eqz v2, :cond_2e

    .line 888
    .line 889
    goto :goto_17

    .line 890
    :cond_2e
    aget-object v2, v6, v22

    .line 891
    .line 892
    :goto_17
    if-eqz v3, :cond_2f

    .line 893
    .line 894
    goto :goto_18

    .line 895
    :cond_2f
    aget-object v3, v6, v7

    .line 896
    .line 897
    :goto_18
    if-eqz v4, :cond_30

    .line 898
    .line 899
    goto :goto_19

    .line 900
    :cond_30
    const/16 v19, 0x2

    .line 901
    .line 902
    aget-object v4, v6, v19

    .line 903
    .line 904
    :goto_19
    if-eqz v5, :cond_31

    .line 905
    .line 906
    goto :goto_1a

    .line 907
    :cond_31
    const/16 v16, 0x3

    .line 908
    .line 909
    aget-object v5, v6, v16

    .line 910
    .line 911
    :goto_1a
    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 912
    .line 913
    .line 914
    goto :goto_24

    .line 915
    :goto_1b
    if-eqz v3, :cond_32

    .line 916
    .line 917
    goto :goto_1c

    .line 918
    :cond_32
    aget-object v3, v6, v7

    .line 919
    .line 920
    :goto_1c
    if-eqz v5, :cond_33

    .line 921
    .line 922
    :goto_1d
    const/16 v19, 0x2

    .line 923
    .line 924
    goto :goto_1e

    .line 925
    :cond_33
    aget-object v5, v6, v16

    .line 926
    .line 927
    goto :goto_1d

    .line 928
    :goto_1e
    aget-object v2, v6, v19

    .line 929
    .line 930
    invoke-virtual {v10, v8, v3, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 931
    .line 932
    .line 933
    goto :goto_24

    .line 934
    :cond_34
    :goto_1f
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    if-eqz v6, :cond_35

    .line 939
    .line 940
    goto :goto_20

    .line 941
    :cond_35
    const/16 v22, 0x0

    .line 942
    .line 943
    aget-object v6, v2, v22

    .line 944
    .line 945
    :goto_20
    if-eqz v3, :cond_36

    .line 946
    .line 947
    goto :goto_21

    .line 948
    :cond_36
    aget-object v3, v2, v7

    .line 949
    .line 950
    :goto_21
    if-eqz v8, :cond_37

    .line 951
    .line 952
    goto :goto_22

    .line 953
    :cond_37
    const/16 v19, 0x2

    .line 954
    .line 955
    aget-object v8, v2, v19

    .line 956
    .line 957
    :goto_22
    if-eqz v5, :cond_38

    .line 958
    .line 959
    goto :goto_23

    .line 960
    :cond_38
    const/16 v16, 0x3

    .line 961
    .line 962
    aget-object v5, v2, v16

    .line 963
    .line 964
    :goto_23
    invoke-virtual {v10, v6, v3, v8, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 965
    .line 966
    .line 967
    :cond_39
    :goto_24
    const/16 v2, 0xb

    .line 968
    .line 969
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    if-eqz v3, :cond_3a

    .line 974
    .line 975
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 980
    .line 981
    .line 982
    :cond_3a
    const/16 v2, 0xc

    .line 983
    .line 984
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 985
    .line 986
    .line 987
    move-result v3

    .line 988
    if-eqz v3, :cond_3b

    .line 989
    .line 990
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 991
    .line 992
    .line 993
    move-result v2

    .line 994
    const/4 v3, 0x0

    .line 995
    invoke-static {v2, v3}, Landroidx/appcompat/widget/DrawableUtils;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1000
    .line 1001
    .line 1002
    :cond_3b
    const/16 v15, 0xf

    .line 1003
    .line 1004
    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1005
    .line 1006
    .line 1007
    move-result v2

    .line 1008
    const/16 v3, 0x12

    .line 1009
    .line 1010
    invoke-virtual {v1, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1011
    .line 1012
    .line 1013
    move-result v3

    .line 1014
    const/16 v4, 0x13

    .line 1015
    .line 1016
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1017
    .line 1018
    .line 1019
    move-result v5

    .line 1020
    if-eqz v5, :cond_3d

    .line 1021
    .line 1022
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v5

    .line 1026
    if-eqz v5, :cond_3c

    .line 1027
    .line 1028
    iget v6, v5, Landroid/util/TypedValue;->type:I

    .line 1029
    .line 1030
    const/4 v7, 0x5

    .line 1031
    if-ne v6, v7, :cond_3c

    .line 1032
    .line 1033
    iget v1, v5, Landroid/util/TypedValue;->data:I

    .line 1034
    .line 1035
    and-int/lit8 v4, v1, 0xf

    .line 1036
    .line 1037
    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 1038
    .line 1039
    .line 1040
    move-result v5

    .line 1041
    goto :goto_25

    .line 1042
    :cond_3c
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1043
    .line 1044
    .line 1045
    move-result v1

    .line 1046
    int-to-float v5, v1

    .line 1047
    move v4, v14

    .line 1048
    goto :goto_25

    .line 1049
    :cond_3d
    move v4, v14

    .line 1050
    const/high16 v5, -0x40800000    # -1.0f

    .line 1051
    .line 1052
    :goto_25
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 1053
    .line 1054
    .line 1055
    if-eq v2, v14, :cond_3e

    .line 1056
    .line 1057
    invoke-static {v2}, Landroidx/core/util/Preconditions;->b(I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 1061
    .line 1062
    .line 1063
    :cond_3e
    if-eq v3, v14, :cond_40

    .line 1064
    .line 1065
    invoke-static {v3}, Landroidx/core/util/Preconditions;->b(I)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    invoke-virtual {v10}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    if-eqz v1, :cond_3f

    .line 1081
    .line 1082
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1083
    .line 1084
    goto :goto_26

    .line 1085
    :cond_3f
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1086
    .line 1087
    :goto_26
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    if-le v3, v1, :cond_40

    .line 1092
    .line 1093
    sub-int/2addr v3, v0

    .line 1094
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    .line 1099
    .line 1100
    .line 1101
    move-result v1

    .line 1102
    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1107
    .line 1108
    .line 1109
    :cond_40
    const/high16 v0, -0x40800000    # -1.0f

    .line 1110
    .line 1111
    cmpl-float v0, v5, v0

    .line 1112
    .line 1113
    if-eqz v0, :cond_42

    .line 1114
    .line 1115
    if-ne v4, v14, :cond_41

    .line 1116
    .line 1117
    float-to-int v0, v5

    .line 1118
    invoke-static {v10, v0}, Landroidx/core/widget/TextViewCompat;->a(Landroid/widget/TextView;I)V

    .line 1119
    .line 1120
    .line 1121
    return-void

    .line 1122
    :cond_41
    invoke-static {v10, v4, v5}, Landroidx/core/widget/TextViewCompat;->b(Landroid/widget/TextView;IF)V

    .line 1123
    .line 1124
    .line 1125
    :cond_42
    return-void

    .line 1126
    :goto_27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    throw v0
.end method

.method public final f(Landroid/content/Context;I)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    .line 2
    .line 3
    sget-object v1, Landroidx/appcompat/R$styleable;->r:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-virtual {v3, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->i(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 34
    .line 35
    return-void
.end method

.method public final h(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 34
    .line 35
    return-void
.end method

.method public final i(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/appcompat/widget/TintTypedArray;->b:Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 20
    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 24
    .line 25
    and-int/2addr v0, v2

    .line 26
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0xd

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->m:Ljava/lang/String;

    .line 41
    .line 42
    :cond_1
    const/16 v0, 0xa

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0xc

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x1

    .line 52
    if-nez v4, :cond_9

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    iput-boolean v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->n:Z

    .line 68
    .line 69
    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eq p1, v7, :cond_5

    .line 74
    .line 75
    if-eq p1, v2, :cond_4

    .line 76
    .line 77
    const/4 p2, 0x3

    .line 78
    if-eq p1, p2, :cond_3

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 83
    .line 84
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 85
    .line 86
    return v7

    .line 87
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 88
    .line 89
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 90
    .line 91
    return v7

    .line 92
    :cond_5
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 93
    .line 94
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 95
    .line 96
    return v7

    .line 97
    :cond_6
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 98
    .line 99
    if-eq p1, v3, :cond_8

    .line 100
    .line 101
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 102
    .line 103
    if-eqz p2, :cond_8

    .line 104
    .line 105
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 106
    .line 107
    and-int/2addr v0, v2

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    move v6, v7

    .line 111
    :cond_7
    invoke-static {p2, p1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 116
    .line 117
    return v7

    .line 118
    :cond_8
    return v6

    .line 119
    :cond_9
    :goto_0
    const/4 v4, 0x0

    .line 120
    iput-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 121
    .line 122
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_a

    .line 127
    .line 128
    move v0, v5

    .line 129
    :cond_a
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 130
    .line 131
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_f

    .line 138
    .line 139
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 140
    .line 141
    iget-object v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    .line 147
    .line 148
    invoke-direct {v8, p0, v4, v5, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 149
    .line 150
    .line 151
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 152
    .line 153
    invoke-virtual {p2, v0, p1, v8}, Landroidx/appcompat/widget/TintTypedArray;->c(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_d

    .line 158
    .line 159
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 160
    .line 161
    if-eq p2, v3, :cond_c

    .line 162
    .line 163
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 168
    .line 169
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 170
    .line 171
    and-int/2addr v4, v2

    .line 172
    if-eqz v4, :cond_b

    .line 173
    .line 174
    move v4, v7

    .line 175
    goto :goto_1

    .line 176
    :cond_b
    move v4, v6

    .line 177
    :goto_1
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_c
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 185
    .line 186
    :cond_d
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 187
    .line 188
    if-nez p1, :cond_e

    .line 189
    .line 190
    move p1, v7

    .line 191
    goto :goto_3

    .line 192
    :cond_e
    move p1, v6

    .line 193
    :goto_3
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->n:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    :catch_0
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 196
    .line 197
    if-nez p1, :cond_12

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    if-eqz p1, :cond_12

    .line 204
    .line 205
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 206
    .line 207
    if-eq p2, v3, :cond_11

    .line 208
    .line 209
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 214
    .line 215
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 216
    .line 217
    and-int/2addr v0, v2

    .line 218
    if-eqz v0, :cond_10

    .line 219
    .line 220
    move v6, v7

    .line 221
    :cond_10
    invoke-static {p1, p2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_11
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 229
    .line 230
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 235
    .line 236
    :cond_12
    :goto_4
    return v7
.end method
