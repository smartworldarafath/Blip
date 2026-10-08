.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field public static final synthetic t:I


# instance fields
.field public final j:Ljava/util/ArrayList;

.field public final k:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

.field public final l:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

.field public final m:Ljava/util/LinkedHashSet;

.field public final n:Ljava/util/Comparator;

.field public o:[Ljava/lang/Integer;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    const p3, 0x7f1202b1

    .line 2
    .line 3
    .line 4
    const v3, 0x7f040254

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v3, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 34
    .line 35
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n:Ljava/util/Comparator;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v4, 0x7f1202b1

    .line 57
    .line 58
    .line 59
    new-array v5, p1, [I

    .line 60
    .line 61
    sget-object v2, Lcom/google/android/material/R$styleable;->k:[I

    .line 62
    .line 63
    move-object v1, p2

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 p3, 0x2

    .line 69
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 74
    .line 75
    .line 76
    const/4 p3, -0x1

    .line 77
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s:I

    .line 82
    .line 83
    const/4 p3, 0x1

    .line 84
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->r:Z

    .line 89
    .line 90
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    .line 96
    sget-object p1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 97
    .line 98
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private getFirstVisibleChildIndex()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method private getLastVisibleChildIndex()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method private getVisibleButtonCount()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method private setCheckedId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3
    .line 4
    .line 5
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/google/android/material/button/MaterialButton;->o:Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ge v2, v3, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    add-int/lit8 v5, v2, -0x1

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    .line 58
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    .line 60
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    .line 62
    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    move-object v6, v7

    .line 66
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 73
    .line 74
    .line 75
    neg-int v5, v5

    .line 76
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 77
    .line 78
    .line 79
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 83
    .line 84
    neg-int v5, v5

    .line 85
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 86
    .line 87
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    if-ne v0, v1, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    const/4 v1, 0x1

    .line 122
    if-ne p0, v1, :cond_5

    .line 123
    .line 124
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    .line 126
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 133
    .line 134
    .line 135
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 136
    .line 137
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 138
    .line 139
    :cond_6
    :goto_3
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "MaterialButtonToggleGroup"

    .line 6
    .line 7
    const-string p1, "Child views must be of type MaterialButton."

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p1, Lcom/google/android/material/button/MaterialButton;->x:Z

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 p3, 0x1

    .line 33
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(IZ)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-direct {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance p3, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 48
    .line 49
    iget-object v0, p2, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    .line 50
    .line 51
    iget-object v1, p2, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    .line 52
    .line 53
    iget-object v2, p2, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    .line 56
    .line 57
    invoke-direct {p3, v0, v1, v2, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final b(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final c(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    if-eq p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final d(IZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->r:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    instance-of v0, p2, Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 26
    .line 27
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 28
    .line 29
    invoke-virtual {p2, v2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 30
    .line 31
    .line 32
    iput-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 33
    .line 34
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s:I

    .line 35
    .line 36
    return v3

    .line 37
    :cond_1
    if-eqz p2, :cond_3

    .line 38
    .line 39
    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->q:Z

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 79
    .line 80
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 83
    .line 84
    .line 85
    iput-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, p2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    return v2
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-array v1, v2, [Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, [Ljava/lang/Integer;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->o:[Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getLastVisibleChildIndex()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v0, :cond_a

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/16 v7, 0x8

    .line 28
    .line 29
    if-ne v6, v7, :cond_0

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->d()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v7, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 48
    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/4 v9, 0x1

    .line 58
    if-nez v8, :cond_2

    .line 59
    .line 60
    move v8, v9

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v8, v3

    .line 63
    :goto_1
    sget-object v10, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->e:Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 64
    .line 65
    if-ne v4, v1, :cond_5

    .line 66
    .line 67
    if-eqz v8, :cond_4

    .line 68
    .line 69
    sget-object v8, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-ne v8, v9, :cond_3

    .line 76
    .line 77
    new-instance v8, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 78
    .line 79
    iget-object v9, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->b:Lcom/google/android/material/shape/CornerSize;

    .line 80
    .line 81
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->c:Lcom/google/android/material/shape/CornerSize;

    .line 82
    .line 83
    invoke-direct {v8, v10, v10, v9, v7}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    move-object v7, v8

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    new-instance v8, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 89
    .line 90
    iget-object v9, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->a:Lcom/google/android/material/shape/CornerSize;

    .line 91
    .line 92
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->d:Lcom/google/android/material/shape/CornerSize;

    .line 93
    .line 94
    invoke-direct {v8, v9, v7, v10, v10}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    new-instance v8, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 99
    .line 100
    iget-object v9, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->a:Lcom/google/android/material/shape/CornerSize;

    .line 101
    .line 102
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->b:Lcom/google/android/material/shape/CornerSize;

    .line 103
    .line 104
    invoke-direct {v8, v9, v10, v7, v10}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    if-ne v4, v2, :cond_8

    .line 109
    .line 110
    if-eqz v8, :cond_7

    .line 111
    .line 112
    sget-object v8, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-ne v8, v9, :cond_6

    .line 119
    .line 120
    new-instance v8, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 121
    .line 122
    iget-object v9, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->a:Lcom/google/android/material/shape/CornerSize;

    .line 123
    .line 124
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->d:Lcom/google/android/material/shape/CornerSize;

    .line 125
    .line 126
    invoke-direct {v8, v9, v7, v10, v10}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    new-instance v8, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 131
    .line 132
    iget-object v9, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->b:Lcom/google/android/material/shape/CornerSize;

    .line 133
    .line 134
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->c:Lcom/google/android/material/shape/CornerSize;

    .line 135
    .line 136
    invoke-direct {v8, v10, v10, v9, v7}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    new-instance v8, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 141
    .line 142
    iget-object v9, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->d:Lcom/google/android/material/shape/CornerSize;

    .line 143
    .line 144
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->c:Lcom/google/android/material/shape/CornerSize;

    .line 145
    .line 146
    invoke-direct {v8, v10, v9, v10, v7}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    const/4 v7, 0x0

    .line 151
    :goto_3
    if-nez v7, :cond_9

    .line 152
    .line 153
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    invoke-direct {v7, v8}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 157
    .line 158
    .line 159
    iput-object v7, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->e:Lcom/google/android/material/shape/CornerSize;

    .line 160
    .line 161
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 162
    .line 163
    invoke-direct {v7, v8}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 164
    .line 165
    .line 166
    iput-object v7, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->f:Lcom/google/android/material/shape/CornerSize;

    .line 167
    .line 168
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 169
    .line 170
    invoke-direct {v7, v8}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 171
    .line 172
    .line 173
    iput-object v7, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->g:Lcom/google/android/material/shape/CornerSize;

    .line 174
    .line 175
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 176
    .line 177
    invoke-direct {v7, v8}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 178
    .line 179
    .line 180
    iput-object v7, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->h:Lcom/google/android/material/shape/CornerSize;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_9
    iget-object v8, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->a:Lcom/google/android/material/shape/CornerSize;

    .line 184
    .line 185
    iput-object v8, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->e:Lcom/google/android/material/shape/CornerSize;

    .line 186
    .line 187
    iget-object v8, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->d:Lcom/google/android/material/shape/CornerSize;

    .line 188
    .line 189
    iput-object v8, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->h:Lcom/google/android/material/shape/CornerSize;

    .line 190
    .line 191
    iget-object v8, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->b:Lcom/google/android/material/shape/CornerSize;

    .line 192
    .line 193
    iput-object v8, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->f:Lcom/google/android/material/shape/CornerSize;

    .line 194
    .line 195
    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->c:Lcom/google/android/material/shape/CornerSize;

    .line 196
    .line 197
    iput-object v7, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->g:Lcom/google/android/material/shape/CornerSize;

    .line 198
    .line 199
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 204
    .line 205
    .line 206
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_a
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCheckedButtonId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, -0x1

    .line 9
    return p0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 18
    .line 19
    iget-boolean v3, v2, Lcom/google/android/material/button/MaterialButton;->x:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->o:[Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    array-length p1, p0

    .line 6
    if-lt p2, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget-object p0, p0, p2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const-string p0, "MaterialButtonToggleGroup"

    .line 17
    .line 18
    const-string p1, "Child order wasn\'t updated"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return p2
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->q:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    move p0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x2

    .line 21
    :goto_0
    invoke-static {v1, p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->a(III)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->j(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/material/button/MaterialButton;->o:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ltz p1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->q:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->q:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    move v0, p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Z

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
