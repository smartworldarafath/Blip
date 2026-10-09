.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Landroid/view/View$OnFocusChangeListener;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field public final g:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field public h:Landroid/animation/AnimatorSet;

.field public i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->d:Landroid/text/TextWatcher;

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->e:Landroid/view/View$OnFocusChangeListener;

    .line 17
    .line 18
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$3;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->f:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$4;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->g:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->b:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f080150

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f11002c

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->n0:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->f:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    check-cast v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$3;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$3;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->g:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->r0:Ljava/util/LinkedHashSet;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    new-array v1, v0, [F

    .line 62
    .line 63
    fill-array-data v1, :array_0

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->d:Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v2, 0x96

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    .line 87
    .line 88
    new-array v2, v0, [F

    .line 89
    .line 90
    fill-array-data v2, :array_1

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->a:Landroid/view/animation/LinearInterpolator;

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v4, 0x64

    .line 103
    .line 104
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    .line 107
    new-instance v6, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$8;

    .line 108
    .line 109
    invoke-direct {v6, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$8;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    .line 114
    .line 115
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 116
    .line 117
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v6, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->h:Landroid/animation/AnimatorSet;

    .line 121
    .line 122
    new-array v7, v0, [Landroid/animation/Animator;

    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    aput-object v1, v7, v8

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    aput-object v2, v7, v1

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->h:Landroid/animation/AnimatorSet;

    .line 134
    .line 135
    new-instance v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$6;

    .line 136
    .line 137
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$6;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    .line 142
    .line 143
    new-array v0, v0, [F

    .line 144
    .line 145
    fill-array-data v0, :array_2

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$8;

    .line 159
    .line 160
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$8;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->i:Landroid/animation/ValueAnimator;

    .line 167
    .line 168
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;

    .line 169
    .line 170
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->d(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->h:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->i:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->h:Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->h:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    if-nez p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->h:Landroid/animation/AnimatorSet;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->i:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->i:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method
