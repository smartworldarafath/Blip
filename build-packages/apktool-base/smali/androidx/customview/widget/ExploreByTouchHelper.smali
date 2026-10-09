.class public abstract Landroidx/customview/widget/ExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field public static final w:Landroid/graphics/Rect;

.field public static final x:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

.field public static final y:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;


# instance fields
.field public final m:Landroid/graphics/Rect;

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Rect;

.field public final p:[I

.field public final q:Landroid/view/accessibility/AccessibilityManager;

.field public final r:Lcom/google/android/material/chip/Chip;

.field public s:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field public t:I

.field public u:I

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->w:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->x:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 19
    .line 20
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$2;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->y:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->m:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->n:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->o:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->p:[I

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->t:I

    .line 33
    .line 34
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->v:I

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->r:Lcom/google/android/material/chip/Chip;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "accessibility"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private w(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->v:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->v:I

    .line 7
    .line 8
    const/16 v1, 0x80

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->v(II)V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x100

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->v(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->s:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/customview/widget/ExploreByTouchHelper;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->s:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->s:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 13
    .line 14
    return-object p0
.end method

.method public final d(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->j:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->r(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->t(IZ)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->v(II)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final k(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 11

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 15
    .line 16
    .line 17
    const-string v3, "android.view.View"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Landroidx/customview/widget/ExploreByTouchHelper;->w:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, -0x1

    .line 31
    iput v4, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 32
    .line 33
    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->r:Lcom/google/android/material/chip/Chip;

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->s(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->g()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x0

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string p0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 56
    .line 57
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v7

    .line 61
    :cond_1
    :goto_0
    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->n:Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_f

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    and-int/lit8 v9, v8, 0x40

    .line 77
    .line 78
    if-nez v9, :cond_e

    .line 79
    .line 80
    const/16 v9, 0x80

    .line 81
    .line 82
    and-int/2addr v8, v9

    .line 83
    if-nez v8, :cond_d

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iput p1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->c:I

    .line 97
    .line 98
    invoke-virtual {v0, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 99
    .line 100
    .line 101
    iget v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->t:I

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    if-ne v7, p1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 114
    .line 115
    .line 116
    const/16 v7, 0x40

    .line 117
    .line 118
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 122
    .line 123
    if-ne v7, p1, :cond_3

    .line 124
    .line 125
    move p1, v2

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move p1, v8

    .line 128
    :goto_2
    if-eqz p1, :cond_4

    .line 129
    .line 130
    const/4 v7, 0x2

    .line 131
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_5

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->p:[I

    .line 148
    .line 149
    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 150
    .line 151
    .line 152
    iget-object v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->m:Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    iget v0, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 167
    .line 168
    if-eq v0, v4, :cond_6

    .line 169
    .line 170
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 175
    .line 176
    invoke-direct {v9, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 177
    .line 178
    .line 179
    iget v0, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 180
    .line 181
    :goto_4
    if-eq v0, v4, :cond_6

    .line 182
    .line 183
    iput v4, v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 184
    .line 185
    iget-object v10, v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 186
    .line 187
    invoke-virtual {v10, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0, v9}, Landroidx/customview/widget/ExploreByTouchHelper;->s(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f(Landroid/graphics/Rect;)V

    .line 197
    .line 198
    .line 199
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 200
    .line 201
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 202
    .line 203
    invoke-virtual {v7, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 204
    .line 205
    .line 206
    iget v0, v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    aget v0, p1, v8

    .line 210
    .line 211
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    sub-int/2addr v0, v3

    .line 216
    aget v3, p1, v2

    .line 217
    .line 218
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    sub-int/2addr v3, v4

    .line 223
    invoke-virtual {v7, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 224
    .line 225
    .line 226
    :cond_7
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->o:Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-virtual {v5, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_c

    .line 233
    .line 234
    aget v0, p1, v8

    .line 235
    .line 236
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    sub-int/2addr v0, v3

    .line 241
    aget p1, p1, v2

    .line 242
    .line 243
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    sub-int/2addr p1, v3

    .line 248
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-eqz p0, :cond_c

    .line 256
    .line 257
    iget-object p0, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 258
    .line 259
    invoke-virtual {p0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_8

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_9

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    :goto_5
    instance-of v0, p1, Landroid/view/View;

    .line 281
    .line 282
    if-eqz v0, :cond_b

    .line 283
    .line 284
    check-cast p1, Landroid/view/View;

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const/4 v3, 0x0

    .line 291
    cmpg-float v0, v0, v3

    .line 292
    .line 293
    if-lez v0, :cond_c

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_a

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    goto :goto_5

    .line 307
    :cond_b
    if-eqz p1, :cond_c

    .line 308
    .line 309
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 310
    .line 311
    .line 312
    :cond_c
    :goto_6
    return-object v1

    .line 313
    :cond_d
    const-string p0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 314
    .line 315
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-object v7

    .line 319
    :cond_e
    const-string p0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 320
    .line 321
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-object v7

    .line 325
    :cond_f
    const-string p0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 326
    .line 327
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-object v7
.end method

.method public final l(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x7

    .line 21
    const/4 v2, 0x1

    .line 22
    const/high16 v3, -0x80000000

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/16 p1, 0xa

    .line 31
    .line 32
    if-eq v0, p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->v:I

    .line 36
    .line 37
    if-eq p1, v3, :cond_3

    .line 38
    .line 39
    invoke-direct {p0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->w(I)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->m(FF)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->w(I)V

    .line 56
    .line 57
    .line 58
    if-eq p1, v3, :cond_3

    .line 59
    .line 60
    return v2

    .line 61
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public abstract m(FF)I
.end method

.method public abstract n(Ljava/util/ArrayList;)V
.end method

.method public final o(ILandroid/graphics/Rect;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->n(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Landroidx/collection/SparseArrayCompat;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-direct {v4, v5}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 19
    .line 20
    .line 21
    move v6, v5

    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->k(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v4, v6, v7}, Landroidx/collection/SparseArrayCompat;->e(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v6, v6, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 39
    .line 40
    const/high16 v7, -0x80000000

    .line 41
    .line 42
    if-ne v3, v7, :cond_1

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 51
    .line 52
    :goto_1
    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->x:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 53
    .line 54
    sget-object v9, Landroidx/customview/widget/ExploreByTouchHelper;->y:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    .line 55
    .line 56
    iget-object v10, v0, Landroidx/customview/widget/ExploreByTouchHelper;->r:Lcom/google/android/material/chip/Chip;

    .line 57
    .line 58
    const/4 v11, 0x2

    .line 59
    const/4 v12, -0x1

    .line 60
    const/4 v13, 0x1

    .line 61
    if-eq v1, v13, :cond_15

    .line 62
    .line 63
    if-eq v1, v11, :cond_15

    .line 64
    .line 65
    const/16 v11, 0x82

    .line 66
    .line 67
    const/16 v14, 0x42

    .line 68
    .line 69
    const/16 v15, 0x21

    .line 70
    .line 71
    const/16 v6, 0x11

    .line 72
    .line 73
    if-eq v1, v6, :cond_2

    .line 74
    .line 75
    if-eq v1, v15, :cond_2

    .line 76
    .line 77
    if-eq v1, v14, :cond_2

    .line 78
    .line 79
    if-ne v1, v11, :cond_3

    .line 80
    .line 81
    :cond_2
    move/from16 v17, v13

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 85
    .line 86
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v5

    .line 90
    :goto_2
    new-instance v13, Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .line 94
    .line 95
    iget v5, v0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 96
    .line 97
    const-string v19, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 98
    .line 99
    if-eq v5, v7, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->p(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f(Landroid/graphics/Rect;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    if-eqz v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eq v1, v6, :cond_9

    .line 124
    .line 125
    if-eq v1, v15, :cond_8

    .line 126
    .line 127
    if-eq v1, v14, :cond_7

    .line 128
    .line 129
    if-ne v1, v11, :cond_6

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    invoke-virtual {v13, v10, v12, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    const/4 v10, 0x0

    .line 137
    invoke-static/range {v19 .. v19}, Lu2;->g(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return v10

    .line 141
    :cond_7
    const/4 v10, 0x0

    .line 142
    invoke-virtual {v13, v12, v10, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    const/4 v10, 0x0

    .line 147
    invoke-virtual {v13, v10, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    const/4 v10, 0x0

    .line 152
    invoke-virtual {v13, v2, v10, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    .line 154
    .line 155
    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    .line 156
    .line 157
    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 158
    .line 159
    .line 160
    if-eq v1, v6, :cond_d

    .line 161
    .line 162
    if-eq v1, v15, :cond_c

    .line 163
    .line 164
    if-eq v1, v14, :cond_b

    .line 165
    .line 166
    if-ne v1, v11, :cond_a

    .line 167
    .line 168
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    neg-int v5, v5

    .line 175
    const/4 v10, 0x0

    .line 176
    invoke-virtual {v2, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    const/4 v10, 0x0

    .line 181
    invoke-static/range {v19 .. v19}, Lu2;->g(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return v10

    .line 185
    :cond_b
    const/4 v10, 0x0

    .line 186
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    .line 192
    neg-int v5, v5

    .line 193
    invoke-virtual {v2, v5, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_c
    const/4 v10, 0x0

    .line 198
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    .line 204
    invoke-virtual {v2, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_d
    const/4 v10, 0x0

    .line 209
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    invoke-virtual {v2, v5, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 216
    .line 217
    .line 218
    :goto_4
    check-cast v9, Landroidx/customview/widget/ExploreByTouchHelper$2;

    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    new-instance v6, Landroid/graphics/Rect;

    .line 228
    .line 229
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .line 231
    .line 232
    const/4 v10, 0x0

    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    :goto_5
    if-ge v10, v5, :cond_14

    .line 236
    .line 237
    invoke-virtual {v4, v10}, Landroidx/collection/SparseArrayCompat;->g(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    check-cast v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 242
    .line 243
    if-ne v9, v3, :cond_e

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    move-object v11, v8

    .line 247
    check-cast v11, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 248
    .line 249
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f(Landroid/graphics/Rect;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v13, v6}, Landroidx/customview/widget/FocusStrategy;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-nez v11, :cond_f

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_f
    invoke-static {v1, v13, v2}, Landroidx/customview/widget/FocusStrategy;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-nez v11, :cond_10

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_10
    invoke-static {v1, v13, v6, v2}, Landroidx/customview/widget/FocusStrategy;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-eqz v11, :cond_11

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_11
    invoke-static {v1, v13, v2, v6}, Landroidx/customview/widget/FocusStrategy;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    if-eqz v11, :cond_12

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_12
    invoke-static {v1, v13, v6}, Landroidx/customview/widget/FocusStrategy;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    invoke-static {v1, v13, v6}, Landroidx/customview/widget/FocusStrategy;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    mul-int/lit8 v15, v11, 0xd

    .line 292
    .line 293
    mul-int/2addr v15, v11

    .line 294
    mul-int/2addr v14, v14

    .line 295
    add-int/2addr v14, v15

    .line 296
    invoke-static {v1, v13, v2}, Landroidx/customview/widget/FocusStrategy;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    invoke-static {v1, v13, v2}, Landroidx/customview/widget/FocusStrategy;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    mul-int/lit8 v17, v11, 0xd

    .line 305
    .line 306
    mul-int v17, v17, v11

    .line 307
    .line 308
    mul-int/2addr v15, v15

    .line 309
    add-int v15, v15, v17

    .line 310
    .line 311
    if-ge v14, v15, :cond_13

    .line 312
    .line 313
    :goto_6
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v16, v9

    .line 317
    .line 318
    :cond_13
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_14
    const/16 v18, 0x0

    .line 322
    .line 323
    :goto_8
    move-object/from16 v1, v16

    .line 324
    .line 325
    goto/16 :goto_10

    .line 326
    .line 327
    :cond_15
    move/from16 v17, v13

    .line 328
    .line 329
    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 330
    .line 331
    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    move/from16 v5, v17

    .line 336
    .line 337
    if-ne v2, v5, :cond_16

    .line 338
    .line 339
    const/4 v2, 0x1

    .line 340
    goto :goto_9

    .line 341
    :cond_16
    const/4 v2, 0x0

    .line 342
    :goto_9
    check-cast v9, Landroidx/customview/widget/ExploreByTouchHelper$2;

    .line 343
    .line 344
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    new-instance v6, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .line 355
    .line 356
    const/4 v10, 0x0

    .line 357
    :goto_a
    if-ge v10, v5, :cond_17

    .line 358
    .line 359
    invoke-virtual {v4, v10}, Landroidx/collection/SparseArrayCompat;->g(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    check-cast v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 364
    .line 365
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    add-int/lit8 v10, v10, 0x1

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_17
    new-instance v5, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    .line 372
    .line 373
    invoke-direct {v5, v2, v8}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 377
    .line 378
    .line 379
    const/4 v5, 0x1

    .line 380
    if-eq v1, v5, :cond_1b

    .line 381
    .line 382
    if-ne v1, v11, :cond_1a

    .line 383
    .line 384
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v3, :cond_18

    .line 389
    .line 390
    move v2, v12

    .line 391
    goto :goto_b

    .line 392
    :cond_18
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    :goto_b
    add-int/2addr v2, v5

    .line 397
    if-ge v2, v1, :cond_19

    .line 398
    .line 399
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    :goto_c
    const/16 v18, 0x0

    .line 404
    .line 405
    goto :goto_f

    .line 406
    :cond_19
    const/4 v6, 0x0

    .line 407
    goto :goto_c

    .line 408
    :cond_1a
    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 409
    .line 410
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const/16 v18, 0x0

    .line 414
    .line 415
    return v18

    .line 416
    :cond_1b
    const/16 v18, 0x0

    .line 417
    .line 418
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-nez v3, :cond_1c

    .line 423
    .line 424
    :goto_d
    const/16 v17, 0x1

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_1c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    goto :goto_d

    .line 432
    :goto_e
    add-int/lit8 v1, v1, -0x1

    .line 433
    .line 434
    if-ltz v1, :cond_1d

    .line 435
    .line 436
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    goto :goto_f

    .line 441
    :cond_1d
    const/4 v6, 0x0

    .line 442
    :goto_f
    move-object/from16 v16, v6

    .line 443
    .line 444
    check-cast v16, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 445
    .line 446
    goto :goto_8

    .line 447
    :goto_10
    if-nez v1, :cond_1e

    .line 448
    .line 449
    goto :goto_13

    .line 450
    :cond_1e
    iget-boolean v2, v4, Landroidx/collection/SparseArrayCompat;->j:Z

    .line 451
    .line 452
    if-eqz v2, :cond_1f

    .line 453
    .line 454
    invoke-static {v4}, Landroidx/collection/SparseArrayCompatKt;->a(Landroidx/collection/SparseArrayCompat;)V

    .line 455
    .line 456
    .line 457
    :cond_1f
    iget v2, v4, Landroidx/collection/SparseArrayCompat;->m:I

    .line 458
    .line 459
    move/from16 v5, v18

    .line 460
    .line 461
    :goto_11
    if-ge v5, v2, :cond_21

    .line 462
    .line 463
    iget-object v3, v4, Landroidx/collection/SparseArrayCompat;->l:[Ljava/lang/Object;

    .line 464
    .line 465
    aget-object v3, v3, v5

    .line 466
    .line 467
    if-ne v3, v1, :cond_20

    .line 468
    .line 469
    move v12, v5

    .line 470
    goto :goto_12

    .line 471
    :cond_20
    add-int/lit8 v5, v5, 0x1

    .line 472
    .line 473
    goto :goto_11

    .line 474
    :cond_21
    :goto_12
    invoke-virtual {v4, v12}, Landroidx/collection/SparseArrayCompat;->d(I)I

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    :goto_13
    invoke-virtual {v0, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->u(I)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    return v0
.end method

.method public final p(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->r:Lcom/google/android/material/chip/Chip;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/Chip;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->n(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-gtz p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "Views cannot have both real and virtual children"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_1
    if-ge v0, p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v4, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 66
    .line 67
    invoke-virtual {v4, p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-object v1

    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->k(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public abstract q(II)Z
.end method

.method public abstract r(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public abstract s(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public abstract t(IZ)V
.end method

.method public final u(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->r:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 17
    .line 18
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    const/high16 v1, -0x80000000

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->j(I)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->t(IZ)V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->v(II)V

    .line 38
    .line 39
    .line 40
    return v0
.end method

.method public final v(II)V
    .locals 4

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->r:Lcom/google/android/material/chip/Chip;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v2, -0x1

    .line 25
    if-eq p1, v2, :cond_4

    .line 26
    .line 27
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->p(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->g()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const-string p0, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 101
    .line 102
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v0, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-interface {v1, v0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_2
    return-void
.end method
