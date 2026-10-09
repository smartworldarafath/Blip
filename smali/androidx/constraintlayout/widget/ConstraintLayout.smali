.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    }
.end annotation


# instance fields
.field public final j:Landroid/util/SparseArray;

.field public final k:Ljava/util/ArrayList;

.field public final l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:Landroidx/constraintlayout/widget/ConstraintSet;

.field public t:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field public u:I

.field public v:Ljava/util/HashMap;

.field public final w:Landroid/util/SparseArray;

.field public final x:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 28
    .line 29
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 30
    .line 31
    const v0, 0x7fffffff

    .line 32
    .line 33
    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 40
    .line 41
    const/16 v0, 0x107

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 59
    .line 60
    new-instance v0, Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:Landroid/util/SparseArray;

    .line 66
    .line 67
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 73
    .line 74
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/util/AttributeSet;I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 81
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 83
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const p1, 0x7fffffff

    .line 84
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 85
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    const/16 p1, 0x107

    .line 87
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 p1, -0x1

    .line 90
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 92
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:Landroid/util/SparseArray;

    .line 93
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 94
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 7

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 9
    .line 10
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 11
    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 15
    .line 16
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 17
    .line 18
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 19
    .line 20
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 21
    .line 22
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 23
    .line 24
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 25
    .line 26
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 27
    .line 28
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 29
    .line 30
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 31
    .line 32
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 33
    .line 34
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 41
    .line 42
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 43
    .line 44
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 45
    .line 46
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 47
    .line 48
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 49
    .line 50
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 51
    .line 52
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 53
    .line 54
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 55
    .line 56
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 57
    .line 58
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 59
    .line 60
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 61
    .line 62
    const/high16 v4, 0x3f000000    # 0.5f

    .line 63
    .line 64
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 65
    .line 66
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 73
    .line 74
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 75
    .line 76
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 77
    .line 78
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 79
    .line 80
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 81
    .line 82
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 83
    .line 84
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 85
    .line 86
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 87
    .line 88
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 89
    .line 90
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 91
    .line 92
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 93
    .line 94
    const/high16 v2, 0x3f800000    # 1.0f

    .line 95
    .line 96
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 97
    .line 98
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 99
    .line 100
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 101
    .line 102
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 103
    .line 104
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 105
    .line 106
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 107
    .line 108
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 109
    .line 110
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 111
    .line 112
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 113
    .line 114
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 115
    .line 116
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 117
    .line 118
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 119
    .line 120
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 121
    .line 122
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:I

    .line 123
    .line 124
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 125
    .line 126
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 127
    .line 128
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 129
    .line 130
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 131
    .line 132
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 133
    .line 134
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:F

    .line 135
    .line 136
    new-instance v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 137
    .line 138
    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 142
    .line 143
    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    if-lez p0, :cond_0

    .line 37
    .line 38
    return p0

    .line 39
    :cond_0
    return v2
.end method


# virtual methods
.method public final b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 17
    .line 18
    return-object p0
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 6
    .line 7
    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->g0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->f0:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 10
    .line 11
    iput-object v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->f:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_8

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->b:[I

    .line 33
    .line 34
    invoke-virtual {v3, p1, v4, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v5, 0x9

    .line 50
    .line 51
    if-ne v4, v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 54
    .line 55
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const/16 v5, 0xa

    .line 63
    .line 64
    if-ne v4, v5, :cond_1

    .line 65
    .line 66
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 67
    .line 68
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/4 v5, 0x7

    .line 76
    if-ne v4, v5, :cond_2

    .line 77
    .line 78
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 79
    .line 80
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/16 v5, 0x8

    .line 88
    .line 89
    if-ne v4, v5, :cond_3

    .line 90
    .line 91
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 92
    .line 93
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/16 v5, 0x59

    .line 101
    .line 102
    if-ne v4, v5, :cond_4

    .line 103
    .line 104
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 105
    .line 106
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/16 v5, 0x26

    .line 114
    .line 115
    if-ne v4, v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    const/16 v5, 0x12

    .line 131
    .line 132
    if-ne v4, v5, :cond_6

    .line 133
    .line 134
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    :try_start_1
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 139
    .line 140
    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 154
    .line 155
    :goto_1
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 156
    .line 157
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 164
    .line 165
    iput p0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 166
    .line 167
    const/16 p1, 0x100

    .line 168
    .line 169
    and-int/2addr p0, p1

    .line 170
    if-ne p0, p1, :cond_9

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    :cond_9
    sput-boolean v2, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 174
    .line 175
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final d(I)V
    .locals 7

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v2, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->b:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    const/4 v4, 0x1

    .line 38
    if-eq v2, v4, :cond_4

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v2, v4, :cond_0

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    sparse-switch v4, :sswitch_data_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :sswitch_0
    const-string v4, "Variant"

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 68
    .line 69
    invoke-direct {v2, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    iget-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->b:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :catch_1
    move-exception p1

    .line 83
    goto :goto_4

    .line 84
    :sswitch_1
    const-string v4, "layoutDescription"

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :sswitch_2
    const-string v4, "StateSet"

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :sswitch_3
    const-string v4, "State"

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_1

    .line 109
    .line 110
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 111
    .line 112
    invoke-direct {v3, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->a:Landroid/util/SparseArray;

    .line 116
    .line 117
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->a:I

    .line 118
    .line 119
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :sswitch_4
    const-string v4, "ConstraintSet"

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_1

    .line 130
    .line 131
    invoke-virtual {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_1
    :goto_1
    const-string v4, "ConstraintLayoutStates"

    .line 136
    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v6, "unknown tag "

    .line 143
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 162
    .line 163
    .line 164
    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :cond_4
    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 175
    .line 176
    return-void

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    move v4, v1

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    move v5, v1

    .line 53
    :goto_1
    if-ge v5, v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v1

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float/2addr v7, v3

    .line 123
    float-to-int v7, v7

    .line 124
    int-to-float v8, v8

    .line 125
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 126
    .line 127
    div-float/2addr v8, v11

    .line 128
    mul-float/2addr v8, v4

    .line 129
    float-to-int v8, v8

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v9, v10

    .line 132
    mul-float/2addr v9, v3

    .line 133
    float-to-int v9, v9

    .line 134
    int-to-float v6, v6

    .line 135
    div-float/2addr v6, v11

    .line 136
    mul-float/2addr v6, v4

    .line 137
    float-to-int v6, v6

    .line 138
    new-instance v15, Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .line 142
    .line 143
    const/high16 v10, -0x10000

    .line 144
    .line 145
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    int-to-float v11, v7

    .line 149
    int-to-float v12, v8

    .line 150
    add-int/2addr v7, v9

    .line 151
    int-to-float v13, v7

    .line 152
    move v14, v12

    .line 153
    move-object/from16 v10, p1

    .line 154
    .line 155
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    move v7, v11

    .line 159
    add-int/2addr v8, v6

    .line 160
    int-to-float v14, v8

    .line 161
    move v11, v13

    .line 162
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    move v6, v12

    .line 166
    move v12, v14

    .line 167
    move v13, v7

    .line 168
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    move v7, v11

    .line 172
    move v11, v13

    .line 173
    move v14, v6

    .line 174
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    move/from16 v16, v14

    .line 178
    .line 179
    move v14, v12

    .line 180
    move/from16 v12, v16

    .line 181
    .line 182
    const v6, -0xff0100

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    .line 187
    .line 188
    move v13, v7

    .line 189
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    move/from16 v16, v14

    .line 193
    .line 194
    move v14, v12

    .line 195
    move/from16 v12, v16

    .line 196
    .line 197
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_3
    return-void
.end method

.method public final e(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->e:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 6
    .line 7
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 24
    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 30
    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 36
    .line 37
    if-eqz p5, :cond_0

    .line 38
    .line 39
    or-int/2addr p1, p3

    .line 40
    :cond_0
    if-eqz p6, :cond_1

    .line 41
    .line 42
    or-int/2addr p2, p3

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 11

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 12
    .line 13
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 14
    .line 15
    const/high16 v2, -0x40800000    # -1.0f

    .line 16
    .line 17
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 18
    .line 19
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 20
    .line 21
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 22
    .line 23
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 24
    .line 25
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 26
    .line 27
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 28
    .line 29
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 30
    .line 31
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 32
    .line 33
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 34
    .line 35
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 36
    .line 37
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 44
    .line 45
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 46
    .line 47
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 48
    .line 49
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 50
    .line 51
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 52
    .line 53
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 54
    .line 55
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 56
    .line 57
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 58
    .line 59
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 60
    .line 61
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 62
    .line 63
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 64
    .line 65
    const/high16 v5, 0x3f000000    # 0.5f

    .line 66
    .line 67
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 68
    .line 69
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    iput-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 76
    .line 77
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 78
    .line 79
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 80
    .line 81
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 82
    .line 83
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 84
    .line 85
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 86
    .line 87
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 88
    .line 89
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 90
    .line 91
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 92
    .line 93
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 94
    .line 95
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 96
    .line 97
    const/high16 v2, 0x3f800000    # 1.0f

    .line 98
    .line 99
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 100
    .line 101
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 102
    .line 103
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 104
    .line 105
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 106
    .line 107
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 108
    .line 109
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 110
    .line 111
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 112
    .line 113
    iput-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 114
    .line 115
    iput-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 116
    .line 117
    iput-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 118
    .line 119
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 120
    .line 121
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 122
    .line 123
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 124
    .line 125
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:I

    .line 126
    .line 127
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 128
    .line 129
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 130
    .line 131
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 132
    .line 133
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 134
    .line 135
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 136
    .line 137
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:F

    .line 138
    .line 139
    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 140
    .line 141
    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 145
    .line 146
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->b:[I

    .line 147
    .line 148
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    move v2, v3

    .line 157
    :goto_0
    if-ge v2, p1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;->a:Landroid/util/SparseIntArray;

    .line 164
    .line 165
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    const-string v8, "ConstraintLayout"

    .line 170
    .line 171
    const/4 v9, 0x2

    .line 172
    const/4 v10, -0x2

    .line 173
    packed-switch v6, :pswitch_data_0

    .line 174
    .line 175
    .line 176
    packed-switch v6, :pswitch_data_1

    .line 177
    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :pswitch_1
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 190
    .line 191
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 196
    .line 197
    goto/16 :goto_3

    .line 198
    .line 199
    :pswitch_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 200
    .line 201
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :pswitch_3
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :pswitch_4
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :pswitch_5
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 226
    .line 227
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :pswitch_6
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 236
    .line 237
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :pswitch_7
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 250
    .line 251
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 252
    .line 253
    if-eqz v5, :cond_5

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 260
    .line 261
    const/16 v8, 0x2c

    .line 262
    .line 263
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-lez v6, :cond_2

    .line 268
    .line 269
    add-int/lit8 v8, v5, -0x1

    .line 270
    .line 271
    if-ge v6, v8, :cond_2

    .line 272
    .line 273
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    const-string v9, "W"

    .line 280
    .line 281
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    if-eqz v9, :cond_0

    .line 286
    .line 287
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_0
    const-string v9, "H"

    .line 291
    .line 292
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_1

    .line 297
    .line 298
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 299
    .line 300
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_2
    move v6, v3

    .line 304
    :goto_2
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 305
    .line 306
    const/16 v9, 0x3a

    .line 307
    .line 308
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-ltz v8, :cond_4

    .line 313
    .line 314
    add-int/lit8 v5, v5, -0x1

    .line 315
    .line 316
    if-ge v8, v5, :cond_4

    .line 317
    .line 318
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 325
    .line 326
    add-int/lit8 v8, v8, 0x1

    .line 327
    .line 328
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-lez v8, :cond_5

    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    if-lez v8, :cond_5

    .line 343
    .line 344
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    cmpl-float v8, v5, v4

    .line 353
    .line 354
    if-lez v8, :cond_5

    .line 355
    .line 356
    cmpl-float v8, v6, v4

    .line 357
    .line 358
    if-lez v8, :cond_5

    .line 359
    .line 360
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 361
    .line 362
    if-ne v8, v7, :cond_3

    .line 363
    .line 364
    div-float/2addr v6, v5

    .line 365
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 366
    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :cond_3
    div-float/2addr v5, v6

    .line 371
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 372
    .line 373
    .line 374
    goto/16 :goto_3

    .line 375
    .line 376
    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-lez v6, :cond_5

    .line 387
    .line 388
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 389
    .line 390
    .line 391
    goto/16 :goto_3

    .line 392
    .line 393
    :pswitch_8
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 394
    .line 395
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 404
    .line 405
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 406
    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :pswitch_9
    :try_start_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 410
    .line 411
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 416
    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    :catch_0
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 420
    .line 421
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-ne v5, v10, :cond_5

    .line 426
    .line 427
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 428
    .line 429
    goto/16 :goto_3

    .line 430
    .line 431
    :pswitch_a
    :try_start_3
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 432
    .line 433
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 438
    .line 439
    goto/16 :goto_3

    .line 440
    .line 441
    :catch_1
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 442
    .line 443
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-ne v5, v10, :cond_5

    .line 448
    .line 449
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 450
    .line 451
    goto/16 :goto_3

    .line 452
    .line 453
    :pswitch_b
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 454
    .line 455
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 464
    .line 465
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :pswitch_c
    :try_start_4
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 470
    .line 471
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 476
    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :catch_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 480
    .line 481
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    if-ne v5, v10, :cond_5

    .line 486
    .line 487
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 488
    .line 489
    goto/16 :goto_3

    .line 490
    .line 491
    :pswitch_d
    :try_start_5
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 492
    .line 493
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 498
    .line 499
    goto/16 :goto_3

    .line 500
    .line 501
    :catch_3
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 502
    .line 503
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-ne v5, v10, :cond_5

    .line 508
    .line 509
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 510
    .line 511
    goto/16 :goto_3

    .line 512
    .line 513
    :pswitch_e
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 518
    .line 519
    if-ne v5, v7, :cond_5

    .line 520
    .line 521
    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 522
    .line 523
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    goto/16 :goto_3

    .line 527
    .line 528
    :pswitch_f
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 533
    .line 534
    if-ne v5, v7, :cond_5

    .line 535
    .line 536
    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 537
    .line 538
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    goto/16 :goto_3

    .line 542
    .line 543
    :pswitch_10
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 544
    .line 545
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 550
    .line 551
    goto/16 :goto_3

    .line 552
    .line 553
    :pswitch_11
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 554
    .line 555
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 560
    .line 561
    goto/16 :goto_3

    .line 562
    .line 563
    :pswitch_12
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 564
    .line 565
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    iput-boolean v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 570
    .line 571
    goto/16 :goto_3

    .line 572
    .line 573
    :pswitch_13
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 574
    .line 575
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    iput-boolean v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 580
    .line 581
    goto/16 :goto_3

    .line 582
    .line 583
    :pswitch_14
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 584
    .line 585
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 590
    .line 591
    goto/16 :goto_3

    .line 592
    .line 593
    :pswitch_15
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 594
    .line 595
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 600
    .line 601
    goto/16 :goto_3

    .line 602
    .line 603
    :pswitch_16
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 604
    .line 605
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 610
    .line 611
    goto/16 :goto_3

    .line 612
    .line 613
    :pswitch_17
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 614
    .line 615
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 620
    .line 621
    goto/16 :goto_3

    .line 622
    .line 623
    :pswitch_18
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 624
    .line 625
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 626
    .line 627
    .line 628
    move-result v5

    .line 629
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 630
    .line 631
    goto/16 :goto_3

    .line 632
    .line 633
    :pswitch_19
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 634
    .line 635
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 640
    .line 641
    goto/16 :goto_3

    .line 642
    .line 643
    :pswitch_1a
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 644
    .line 645
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 650
    .line 651
    if-ne v6, v1, :cond_5

    .line 652
    .line 653
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 654
    .line 655
    .line 656
    move-result v5

    .line 657
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 658
    .line 659
    goto/16 :goto_3

    .line 660
    .line 661
    :pswitch_1b
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 662
    .line 663
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 664
    .line 665
    .line 666
    move-result v6

    .line 667
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 668
    .line 669
    if-ne v6, v1, :cond_5

    .line 670
    .line 671
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 676
    .line 677
    goto/16 :goto_3

    .line 678
    .line 679
    :pswitch_1c
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 680
    .line 681
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 686
    .line 687
    if-ne v6, v1, :cond_5

    .line 688
    .line 689
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 694
    .line 695
    goto/16 :goto_3

    .line 696
    .line 697
    :pswitch_1d
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 698
    .line 699
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 700
    .line 701
    .line 702
    move-result v6

    .line 703
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 704
    .line 705
    if-ne v6, v1, :cond_5

    .line 706
    .line 707
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 712
    .line 713
    goto/16 :goto_3

    .line 714
    .line 715
    :pswitch_1e
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 716
    .line 717
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 722
    .line 723
    if-ne v6, v1, :cond_5

    .line 724
    .line 725
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 726
    .line 727
    .line 728
    move-result v5

    .line 729
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 730
    .line 731
    goto/16 :goto_3

    .line 732
    .line 733
    :pswitch_1f
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 734
    .line 735
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 736
    .line 737
    .line 738
    move-result v6

    .line 739
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 740
    .line 741
    if-ne v6, v1, :cond_5

    .line 742
    .line 743
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 748
    .line 749
    goto/16 :goto_3

    .line 750
    .line 751
    :pswitch_20
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 752
    .line 753
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 754
    .line 755
    .line 756
    move-result v6

    .line 757
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 758
    .line 759
    if-ne v6, v1, :cond_5

    .line 760
    .line 761
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 762
    .line 763
    .line 764
    move-result v5

    .line 765
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 766
    .line 767
    goto/16 :goto_3

    .line 768
    .line 769
    :pswitch_21
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 770
    .line 771
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 776
    .line 777
    if-ne v6, v1, :cond_5

    .line 778
    .line 779
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 784
    .line 785
    goto/16 :goto_3

    .line 786
    .line 787
    :pswitch_22
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 788
    .line 789
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 790
    .line 791
    .line 792
    move-result v6

    .line 793
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 794
    .line 795
    if-ne v6, v1, :cond_5

    .line 796
    .line 797
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 802
    .line 803
    goto/16 :goto_3

    .line 804
    .line 805
    :pswitch_23
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 806
    .line 807
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 808
    .line 809
    .line 810
    move-result v6

    .line 811
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 812
    .line 813
    if-ne v6, v1, :cond_5

    .line 814
    .line 815
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 816
    .line 817
    .line 818
    move-result v5

    .line 819
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 820
    .line 821
    goto/16 :goto_3

    .line 822
    .line 823
    :pswitch_24
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 824
    .line 825
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 826
    .line 827
    .line 828
    move-result v6

    .line 829
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 830
    .line 831
    if-ne v6, v1, :cond_5

    .line 832
    .line 833
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 834
    .line 835
    .line 836
    move-result v5

    .line 837
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 838
    .line 839
    goto/16 :goto_3

    .line 840
    .line 841
    :pswitch_25
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 842
    .line 843
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 844
    .line 845
    .line 846
    move-result v6

    .line 847
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 848
    .line 849
    if-ne v6, v1, :cond_5

    .line 850
    .line 851
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 856
    .line 857
    goto :goto_3

    .line 858
    :pswitch_26
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 859
    .line 860
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 861
    .line 862
    .line 863
    move-result v6

    .line 864
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 865
    .line 866
    if-ne v6, v1, :cond_5

    .line 867
    .line 868
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 869
    .line 870
    .line 871
    move-result v5

    .line 872
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 873
    .line 874
    goto :goto_3

    .line 875
    :pswitch_27
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 876
    .line 877
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 878
    .line 879
    .line 880
    move-result v5

    .line 881
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 882
    .line 883
    goto :goto_3

    .line 884
    :pswitch_28
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 885
    .line 886
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 887
    .line 888
    .line 889
    move-result v5

    .line 890
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 891
    .line 892
    goto :goto_3

    .line 893
    :pswitch_29
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 894
    .line 895
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 896
    .line 897
    .line 898
    move-result v5

    .line 899
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 900
    .line 901
    goto :goto_3

    .line 902
    :pswitch_2a
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 903
    .line 904
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 905
    .line 906
    .line 907
    move-result v5

    .line 908
    const/high16 v6, 0x43b40000    # 360.0f

    .line 909
    .line 910
    rem-float/2addr v5, v6

    .line 911
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 912
    .line 913
    cmpg-float v8, v5, v4

    .line 914
    .line 915
    if-gez v8, :cond_5

    .line 916
    .line 917
    sub-float v5, v6, v5

    .line 918
    .line 919
    rem-float/2addr v5, v6

    .line 920
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 921
    .line 922
    goto :goto_3

    .line 923
    :pswitch_2b
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 924
    .line 925
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 926
    .line 927
    .line 928
    move-result v5

    .line 929
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 930
    .line 931
    goto :goto_3

    .line 932
    :pswitch_2c
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 933
    .line 934
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 939
    .line 940
    if-ne v6, v1, :cond_5

    .line 941
    .line 942
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 943
    .line 944
    .line 945
    move-result v5

    .line 946
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 947
    .line 948
    goto :goto_3

    .line 949
    :pswitch_2d
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 950
    .line 951
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 952
    .line 953
    .line 954
    move-result v5

    .line 955
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 956
    .line 957
    :catch_4
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 958
    .line 959
    goto/16 :goto_0

    .line 960
    .line 961
    :cond_6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 965
    .line 966
    .line 967
    return-object v0

    .line 968
    nop

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .line 969
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 970
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 971
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 972
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 973
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 974
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 975
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 976
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 977
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 978
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 979
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 980
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 981
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 982
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 983
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    const/4 v1, 0x0

    .line 984
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    const/4 v2, 0x0

    .line 985
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 986
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 987
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 988
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 989
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 990
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 991
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 992
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 993
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 994
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 995
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 996
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 997
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    const/4 v3, 0x0

    .line 998
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    const/4 v4, 0x1

    .line 999
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 1000
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 1001
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 1002
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 1003
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 1004
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 1005
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 1006
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 1007
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 1008
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 1009
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1010
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 1011
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 1012
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 1013
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 1014
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 1015
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 1016
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 1017
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 1018
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 1019
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 1020
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 1021
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 1022
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 1023
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:I

    .line 1024
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 1025
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 1026
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 1027
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 1028
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 1029
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:F

    .line 1030
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public getOptimizationLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 4
    .line 5
    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    if-ge p4, p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-lez p1, :cond_2

    .line 75
    .line 76
    :goto_2
    if-ge p3, p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    add-int/lit8 p3, p3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 12
    .line 13
    const/high16 v2, 0x400000

    .line 14
    .line 15
    and-int/2addr v1, v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v3, v1, :cond_0

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v4

    .line 29
    :goto_0
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 30
    .line 31
    iput-boolean v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 32
    .line 33
    iget-object v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->e0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    .line 34
    .line 35
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->f0:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 36
    .line 37
    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 38
    .line 39
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 40
    .line 41
    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->l:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 42
    .line 43
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    .line 47
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    .line 49
    if-eqz v7, :cond_56

    .line 50
    .line 51
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    move v13, v4

    .line 58
    :goto_1
    if-ge v13, v7, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-virtual {v15}, Landroid/view/View;->isLayoutRequested()Z

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    if-eqz v15, :cond_1

    .line 69
    .line 70
    move v7, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v7, v4

    .line 76
    :goto_2
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 77
    .line 78
    if-eqz v7, :cond_51

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 81
    .line 82
    .line 83
    move-result v21

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    move/from16 v22, v2

    .line 89
    .line 90
    move v2, v4

    .line 91
    :goto_3
    if-ge v2, v15, :cond_4

    .line 92
    .line 93
    const/16 v23, 0x2

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    if-nez v11, :cond_3

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_3
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q()V

    .line 107
    .line 108
    .line 109
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const/16 v23, 0x2

    .line 113
    .line 114
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 115
    .line 116
    const/16 v24, 0x0

    .line 117
    .line 118
    move/from16 v25, v3

    .line 119
    .line 120
    if-eqz v21, :cond_d

    .line 121
    .line 122
    move v3, v4

    .line 123
    :goto_5
    if-ge v3, v15, :cond_d

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 152
    .line 153
    if-nez v14, :cond_5

    .line 154
    .line 155
    new-instance v14, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 161
    .line 162
    :cond_5
    const-string v14, "/"

    .line 163
    .line 164
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v14
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    move/from16 v18, v3

    .line 169
    .line 170
    const/4 v3, -0x1

    .line 171
    if-eq v14, v3, :cond_6

    .line 172
    .line 173
    add-int/lit8 v14, v14, 0x1

    .line 174
    .line 175
    :try_start_1
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    goto :goto_6

    .line 180
    :cond_6
    move-object v3, v2

    .line 181
    :goto_6
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_7

    .line 187
    :catch_0
    move/from16 v18, v3

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_7
    move/from16 v18, v3

    .line 191
    .line 192
    :goto_7
    const/16 v3, 0x2f

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    const/4 v4, -0x1

    .line 199
    if-eq v3, v4, :cond_8

    .line 200
    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_9

    .line 212
    .line 213
    :goto_8
    move-object v3, v5

    .line 214
    goto :goto_9

    .line 215
    :cond_9
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Landroid/view/View;

    .line 220
    .line 221
    if-nez v4, :cond_a

    .line 222
    .line 223
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    if-eqz v4, :cond_a

    .line 228
    .line 229
    if-eq v4, v0, :cond_a

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-ne v3, v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    :cond_a
    if-ne v4, v0, :cond_b

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_b
    if-nez v4, :cond_c

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    goto :goto_9

    .line 247
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 252
    .line 253
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 254
    .line 255
    :goto_9
    iput-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .line 257
    :catch_1
    :goto_a
    add-int/lit8 v3, v18, 0x1

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    goto/16 :goto_5

    .line 261
    .line 262
    :cond_d
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 263
    .line 264
    const/4 v3, -0x1

    .line 265
    if-eq v2, v3, :cond_e

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    :goto_b
    if-ge v2, v15, :cond_e

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 275
    .line 276
    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_e
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 281
    .line 282
    if-eqz v2, :cond_f

    .line 283
    .line 284
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 285
    .line 286
    .line 287
    :cond_f
    iget-object v2, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 290
    .line 291
    .line 292
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-lez v3, :cond_18

    .line 299
    .line 300
    const/4 v4, 0x0

    .line 301
    :goto_c
    if-ge v4, v3, :cond_18

    .line 302
    .line 303
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v14

    .line 307
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 308
    .line 309
    move-object/from16 v17, v2

    .line 310
    .line 311
    iget-object v2, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->o:Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-virtual {v14}, Landroid/view/View;->isInEditMode()Z

    .line 314
    .line 315
    .line 316
    move-result v18

    .line 317
    if-eqz v18, :cond_10

    .line 318
    .line 319
    move/from16 v18, v3

    .line 320
    .line 321
    iget-object v3, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->n:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_d

    .line 327
    :cond_10
    move/from16 v18, v3

    .line 328
    .line 329
    :goto_d
    iget-object v3, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->m:Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 330
    .line 331
    if-nez v3, :cond_11

    .line 332
    .line 333
    move/from16 v19, v4

    .line 334
    .line 335
    move/from16 v29, v7

    .line 336
    .line 337
    goto/16 :goto_13

    .line 338
    .line 339
    :cond_11
    move/from16 v19, v4

    .line 340
    .line 341
    const/4 v4, 0x0

    .line 342
    iput v4, v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 343
    .line 344
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    :goto_e
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->k:I

    .line 352
    .line 353
    if-ge v3, v4, :cond_17

    .line 354
    .line 355
    iget-object v4, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[I

    .line 356
    .line 357
    aget v4, v4, v3

    .line 358
    .line 359
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v20

    .line 363
    check-cast v20, Landroid/view/View;

    .line 364
    .line 365
    if-nez v20, :cond_13

    .line 366
    .line 367
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    check-cast v4, Ljava/lang/String;

    .line 376
    .line 377
    move/from16 v28, v3

    .line 378
    .line 379
    invoke-virtual {v14, v0, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    move/from16 v29, v7

    .line 384
    .line 385
    if-eqz v3, :cond_12

    .line 386
    .line 387
    iget-object v7, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[I

    .line 388
    .line 389
    aput v3, v7, v28

    .line 390
    .line 391
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    move-object/from16 v20, v3

    .line 403
    .line 404
    check-cast v20, Landroid/view/View;

    .line 405
    .line 406
    :cond_12
    :goto_f
    move-object/from16 v3, v20

    .line 407
    .line 408
    goto :goto_10

    .line 409
    :cond_13
    move/from16 v28, v3

    .line 410
    .line 411
    move/from16 v29, v7

    .line 412
    .line 413
    goto :goto_f

    .line 414
    :goto_10
    if-eqz v3, :cond_16

    .line 415
    .line 416
    iget-object v4, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->m:Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 417
    .line 418
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    if-eq v3, v4, :cond_16

    .line 426
    .line 427
    if-nez v3, :cond_14

    .line 428
    .line 429
    goto :goto_11

    .line 430
    :cond_14
    iget v7, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 431
    .line 432
    add-int/lit8 v7, v7, 0x1

    .line 433
    .line 434
    move-object/from16 v20, v2

    .line 435
    .line 436
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 437
    .line 438
    move-object/from16 v30, v3

    .line 439
    .line 440
    array-length v3, v2

    .line 441
    if-le v7, v3, :cond_15

    .line 442
    .line 443
    array-length v3, v2

    .line 444
    mul-int/lit8 v3, v3, 0x2

    .line 445
    .line 446
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 451
    .line 452
    iput-object v2, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 453
    .line 454
    :cond_15
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 455
    .line 456
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 457
    .line 458
    aput-object v30, v2, v3

    .line 459
    .line 460
    add-int/lit8 v3, v3, 0x1

    .line 461
    .line 462
    iput v3, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 463
    .line 464
    goto :goto_12

    .line 465
    :cond_16
    :goto_11
    move-object/from16 v20, v2

    .line 466
    .line 467
    :goto_12
    add-int/lit8 v3, v28, 0x1

    .line 468
    .line 469
    move-object/from16 v2, v20

    .line 470
    .line 471
    move/from16 v7, v29

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :cond_17
    move/from16 v29, v7

    .line 475
    .line 476
    iget-object v2, v14, Landroidx/constraintlayout/widget/ConstraintHelper;->m:Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 477
    .line 478
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    :goto_13
    add-int/lit8 v4, v19, 0x1

    .line 482
    .line 483
    move-object/from16 v2, v17

    .line 484
    .line 485
    move/from16 v3, v18

    .line 486
    .line 487
    move/from16 v7, v29

    .line 488
    .line 489
    goto/16 :goto_c

    .line 490
    .line 491
    :cond_18
    move/from16 v29, v7

    .line 492
    .line 493
    const/4 v2, 0x0

    .line 494
    :goto_14
    if-ge v2, v15, :cond_19

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    add-int/lit8 v2, v2, 0x1

    .line 500
    .line 501
    goto :goto_14

    .line 502
    :cond_19
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:Landroid/util/SparseArray;

    .line 503
    .line 504
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 505
    .line 506
    .line 507
    const/4 v4, 0x0

    .line 508
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    const/4 v3, 0x0

    .line 519
    :goto_15
    if-ge v3, v15, :cond_1a

    .line 520
    .line 521
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    invoke-virtual {v2, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    add-int/lit8 v3, v3, 0x1

    .line 537
    .line 538
    goto :goto_15

    .line 539
    :cond_1a
    const/4 v3, 0x0

    .line 540
    :goto_16
    if-ge v3, v15, :cond_50

    .line 541
    .line 542
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    if-nez v7, :cond_1b

    .line 551
    .line 552
    move-object/from16 v0, v16

    .line 553
    .line 554
    move/from16 v16, v15

    .line 555
    .line 556
    move-object v15, v0

    .line 557
    move-object/from16 v19, v1

    .line 558
    .line 559
    move/from16 v28, v3

    .line 560
    .line 561
    move-object/from16 v18, v5

    .line 562
    .line 563
    move-object/from16 v17, v6

    .line 564
    .line 565
    move-object v3, v8

    .line 566
    move-object v0, v10

    .line 567
    move-object/from16 v41, v11

    .line 568
    .line 569
    move-object v1, v12

    .line 570
    move-object v6, v13

    .line 571
    :goto_17
    const/4 v11, -0x1

    .line 572
    goto/16 :goto_32

    .line 573
    .line 574
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 575
    .line 576
    .line 577
    move-result-object v14

    .line 578
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 579
    .line 580
    move/from16 v28, v3

    .line 581
    .line 582
    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    iget-object v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 588
    .line 589
    if-eqz v3, :cond_1c

    .line 590
    .line 591
    check-cast v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .line 592
    .line 593
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    const/4 v3, 0x0

    .line 599
    iput-object v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 600
    .line 601
    goto :goto_18

    .line 602
    :cond_1c
    const/4 v3, 0x0

    .line 603
    :goto_18
    iput-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 604
    .line 605
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    iput v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 613
    .line 614
    iput-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:Landroid/view/View;

    .line 615
    .line 616
    instance-of v3, v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 617
    .line 618
    if-eqz v3, :cond_22

    .line 619
    .line 620
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 621
    .line 622
    iget-boolean v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 623
    .line 624
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 625
    .line 626
    move/from16 v17, v3

    .line 627
    .line 628
    iget v3, v4, Landroidx/constraintlayout/widget/Barrier;->p:I

    .line 629
    .line 630
    iput v3, v4, Landroidx/constraintlayout/widget/Barrier;->q:I

    .line 631
    .line 632
    move-object/from16 v36, v8

    .line 633
    .line 634
    const/4 v8, 0x5

    .line 635
    if-eqz v17, :cond_1f

    .line 636
    .line 637
    if-ne v3, v8, :cond_1e

    .line 638
    .line 639
    move/from16 v8, v25

    .line 640
    .line 641
    iput v8, v4, Landroidx/constraintlayout/widget/Barrier;->q:I

    .line 642
    .line 643
    :cond_1d
    :goto_19
    move-object/from16 v38, v9

    .line 644
    .line 645
    goto :goto_1a

    .line 646
    :cond_1e
    const/4 v8, 0x6

    .line 647
    if-ne v3, v8, :cond_1d

    .line 648
    .line 649
    const/4 v3, 0x0

    .line 650
    iput v3, v4, Landroidx/constraintlayout/widget/Barrier;->q:I

    .line 651
    .line 652
    goto :goto_19

    .line 653
    :cond_1f
    move-object/from16 v38, v9

    .line 654
    .line 655
    move v9, v8

    .line 656
    const/4 v8, 0x0

    .line 657
    if-ne v3, v9, :cond_20

    .line 658
    .line 659
    iput v8, v4, Landroidx/constraintlayout/widget/Barrier;->q:I

    .line 660
    .line 661
    goto :goto_1a

    .line 662
    :cond_20
    const/4 v8, 0x6

    .line 663
    if-ne v3, v8, :cond_21

    .line 664
    .line 665
    const/4 v8, 0x1

    .line 666
    iput v8, v4, Landroidx/constraintlayout/widget/Barrier;->q:I

    .line 667
    .line 668
    :cond_21
    :goto_1a
    instance-of v3, v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 669
    .line 670
    if-eqz v3, :cond_23

    .line 671
    .line 672
    move-object v3, v7

    .line 673
    check-cast v3, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 674
    .line 675
    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->q:I

    .line 676
    .line 677
    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 678
    .line 679
    goto :goto_1b

    .line 680
    :cond_22
    move-object/from16 v36, v8

    .line 681
    .line 682
    move-object/from16 v38, v9

    .line 683
    .line 684
    :cond_23
    :goto_1b
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 685
    .line 686
    if-eqz v3, :cond_28

    .line 687
    .line 688
    check-cast v7, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 689
    .line 690
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 691
    .line 692
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    .line 693
    .line 694
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:F

    .line 695
    .line 696
    const/high16 v9, -0x40800000    # -1.0f

    .line 697
    .line 698
    cmpl-float v14, v8, v9

    .line 699
    .line 700
    if-eqz v14, :cond_25

    .line 701
    .line 702
    if-lez v14, :cond_24

    .line 703
    .line 704
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->d0:F

    .line 705
    .line 706
    const/4 v8, -0x1

    .line 707
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->e0:I

    .line 708
    .line 709
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->f0:I

    .line 710
    .line 711
    goto :goto_1d

    .line 712
    :cond_24
    :goto_1c
    move-object/from16 v0, v16

    .line 713
    .line 714
    move/from16 v16, v15

    .line 715
    .line 716
    move-object v15, v0

    .line 717
    move-object/from16 v19, v1

    .line 718
    .line 719
    move-object/from16 v18, v5

    .line 720
    .line 721
    move-object/from16 v17, v6

    .line 722
    .line 723
    move-object v0, v10

    .line 724
    move-object/from16 v41, v11

    .line 725
    .line 726
    move-object v1, v12

    .line 727
    move-object v6, v13

    .line 728
    move-object/from16 v3, v36

    .line 729
    .line 730
    move-object/from16 v9, v38

    .line 731
    .line 732
    goto/16 :goto_17

    .line 733
    .line 734
    :cond_25
    const/4 v8, -0x1

    .line 735
    if-eq v3, v8, :cond_27

    .line 736
    .line 737
    if-le v3, v8, :cond_26

    .line 738
    .line 739
    iput v9, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->d0:F

    .line 740
    .line 741
    iput v3, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->e0:I

    .line 742
    .line 743
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->f0:I

    .line 744
    .line 745
    :cond_26
    :goto_1d
    move-object/from16 v0, v16

    .line 746
    .line 747
    move/from16 v16, v15

    .line 748
    .line 749
    move-object v15, v0

    .line 750
    move-object/from16 v19, v1

    .line 751
    .line 752
    move-object/from16 v18, v5

    .line 753
    .line 754
    move-object/from16 v17, v6

    .line 755
    .line 756
    move-object v0, v10

    .line 757
    move-object/from16 v41, v11

    .line 758
    .line 759
    move-object v1, v12

    .line 760
    move-object v6, v13

    .line 761
    move-object/from16 v3, v36

    .line 762
    .line 763
    move-object/from16 v9, v38

    .line 764
    .line 765
    move v11, v8

    .line 766
    goto/16 :goto_32

    .line 767
    .line 768
    :cond_27
    if-eq v4, v8, :cond_26

    .line 769
    .line 770
    if-le v4, v8, :cond_26

    .line 771
    .line 772
    iput v9, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->d0:F

    .line 773
    .line 774
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->e0:I

    .line 775
    .line 776
    iput v4, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->f0:I

    .line 777
    .line 778
    goto :goto_1c

    .line 779
    :cond_28
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:I

    .line 780
    .line 781
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 782
    .line 783
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 784
    .line 785
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 786
    .line 787
    move-object/from16 v30, v7

    .line 788
    .line 789
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 790
    .line 791
    move/from16 v35, v7

    .line 792
    .line 793
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 794
    .line 795
    move/from16 v37, v7

    .line 796
    .line 797
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:F

    .line 798
    .line 799
    move-object/from16 v39, v10

    .line 800
    .line 801
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 802
    .line 803
    sget-object v18, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 804
    .line 805
    sget-object v40, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 806
    .line 807
    move-object/from16 v41, v11

    .line 808
    .line 809
    const/4 v11, -0x1

    .line 810
    if-eq v10, v11, :cond_2a

    .line 811
    .line 812
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    move-object/from16 v32, v3

    .line 817
    .line 818
    check-cast v32, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 819
    .line 820
    if-eqz v32, :cond_29

    .line 821
    .line 822
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 823
    .line 824
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 825
    .line 826
    sget-object v31, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->o:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 827
    .line 828
    const/16 v35, 0x0

    .line 829
    .line 830
    move-object/from16 v33, v31

    .line 831
    .line 832
    move/from16 v34, v4

    .line 833
    .line 834
    invoke-virtual/range {v30 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 835
    .line 836
    .line 837
    move-object/from16 v10, v30

    .line 838
    .line 839
    iput v3, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    .line 840
    .line 841
    goto :goto_1e

    .line 842
    :cond_29
    move-object/from16 v10, v30

    .line 843
    .line 844
    :goto_1e
    move-object/from16 v3, v16

    .line 845
    .line 846
    move/from16 v16, v15

    .line 847
    .line 848
    move-object v15, v3

    .line 849
    move-object/from16 v19, v1

    .line 850
    .line 851
    move-object/from16 v17, v6

    .line 852
    .line 853
    move-object v8, v10

    .line 854
    move-object v1, v12

    .line 855
    move-object v6, v13

    .line 856
    move-object/from16 v4, v18

    .line 857
    .line 858
    move-object/from16 v3, v36

    .line 859
    .line 860
    move-object/from16 v9, v38

    .line 861
    .line 862
    move-object/from16 v18, v5

    .line 863
    .line 864
    move-object/from16 v5, v40

    .line 865
    .line 866
    goto/16 :goto_27

    .line 867
    .line 868
    :cond_2a
    move-object/from16 v10, v30

    .line 869
    .line 870
    if-eq v3, v11, :cond_2d

    .line 871
    .line 872
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    move-object/from16 v32, v3

    .line 877
    .line 878
    check-cast v32, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 879
    .line 880
    if-eqz v32, :cond_2b

    .line 881
    .line 882
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 883
    .line 884
    move-object/from16 v33, v18

    .line 885
    .line 886
    move/from16 v34, v3

    .line 887
    .line 888
    move-object/from16 v30, v10

    .line 889
    .line 890
    move-object/from16 v31, v18

    .line 891
    .line 892
    invoke-virtual/range {v30 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 893
    .line 894
    .line 895
    goto :goto_1f

    .line 896
    :cond_2b
    move-object/from16 v30, v10

    .line 897
    .line 898
    move-object/from16 v31, v18

    .line 899
    .line 900
    :cond_2c
    :goto_1f
    move v3, v15

    .line 901
    goto :goto_20

    .line 902
    :cond_2d
    move-object/from16 v30, v10

    .line 903
    .line 904
    move-object/from16 v31, v18

    .line 905
    .line 906
    if-eq v4, v11, :cond_2c

    .line 907
    .line 908
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    move-object/from16 v17, v3

    .line 913
    .line 914
    check-cast v17, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 915
    .line 916
    if-eqz v17, :cond_2c

    .line 917
    .line 918
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 919
    .line 920
    move/from16 v19, v3

    .line 921
    .line 922
    move v3, v15

    .line 923
    move-object/from16 v18, v16

    .line 924
    .line 925
    move-object/from16 v15, v30

    .line 926
    .line 927
    move-object/from16 v16, v31

    .line 928
    .line 929
    move/from16 v20, v35

    .line 930
    .line 931
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 932
    .line 933
    .line 934
    move-object/from16 v16, v18

    .line 935
    .line 936
    :goto_20
    if-eq v8, v11, :cond_30

    .line 937
    .line 938
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    move-object/from16 v17, v4

    .line 943
    .line 944
    check-cast v17, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 945
    .line 946
    if-eqz v17, :cond_2e

    .line 947
    .line 948
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 949
    .line 950
    move/from16 v19, v4

    .line 951
    .line 952
    move-object/from16 v15, v30

    .line 953
    .line 954
    move-object/from16 v18, v31

    .line 955
    .line 956
    move/from16 v20, v37

    .line 957
    .line 958
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 959
    .line 960
    .line 961
    move-object/from16 v4, v18

    .line 962
    .line 963
    goto :goto_21

    .line 964
    :cond_2e
    move-object/from16 v4, v31

    .line 965
    .line 966
    :cond_2f
    :goto_21
    move-object/from16 v15, v16

    .line 967
    .line 968
    goto :goto_22

    .line 969
    :cond_30
    move-object/from16 v4, v31

    .line 970
    .line 971
    move/from16 v20, v37

    .line 972
    .line 973
    if-eq v9, v11, :cond_2f

    .line 974
    .line 975
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v8

    .line 979
    move-object/from16 v17, v8

    .line 980
    .line 981
    check-cast v17, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 982
    .line 983
    if-eqz v17, :cond_2f

    .line 984
    .line 985
    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 986
    .line 987
    move-object/from16 v18, v16

    .line 988
    .line 989
    move/from16 v19, v8

    .line 990
    .line 991
    move-object/from16 v15, v30

    .line 992
    .line 993
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 994
    .line 995
    .line 996
    goto :goto_21

    .line 997
    :goto_22
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 998
    .line 999
    if-eq v8, v11, :cond_32

    .line 1000
    .line 1001
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v8

    .line 1005
    move-object/from16 v32, v8

    .line 1006
    .line 1007
    check-cast v32, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1008
    .line 1009
    if-eqz v32, :cond_31

    .line 1010
    .line 1011
    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1012
    .line 1013
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 1014
    .line 1015
    move-object/from16 v33, v40

    .line 1016
    .line 1017
    move/from16 v34, v8

    .line 1018
    .line 1019
    move/from16 v35, v9

    .line 1020
    .line 1021
    move-object/from16 v31, v40

    .line 1022
    .line 1023
    invoke-virtual/range {v30 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_23

    .line 1027
    :cond_31
    move-object/from16 v31, v40

    .line 1028
    .line 1029
    :goto_23
    move-object/from16 v19, v1

    .line 1030
    .line 1031
    move/from16 v16, v3

    .line 1032
    .line 1033
    move-object/from16 v18, v5

    .line 1034
    .line 1035
    move-object/from16 v17, v6

    .line 1036
    .line 1037
    move-object v1, v12

    .line 1038
    move-object v6, v13

    .line 1039
    move-object/from16 v3, v36

    .line 1040
    .line 1041
    move-object/from16 v9, v38

    .line 1042
    .line 1043
    move-object/from16 v0, v41

    .line 1044
    .line 1045
    const/4 v5, -0x1

    .line 1046
    goto :goto_24

    .line 1047
    :cond_32
    move-object/from16 v31, v40

    .line 1048
    .line 1049
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 1050
    .line 1051
    const/4 v9, -0x1

    .line 1052
    if-eq v8, v9, :cond_33

    .line 1053
    .line 1054
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    move-object v10, v8

    .line 1059
    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1060
    .line 1061
    if-eqz v10, :cond_33

    .line 1062
    .line 1063
    move-object v8, v12

    .line 1064
    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1065
    .line 1066
    move-object v11, v13

    .line 1067
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 1068
    .line 1069
    move-object/from16 v19, v1

    .line 1070
    .line 1071
    move/from16 v16, v3

    .line 1072
    .line 1073
    move-object/from16 v18, v5

    .line 1074
    .line 1075
    move-object/from16 v17, v6

    .line 1076
    .line 1077
    move-object v1, v8

    .line 1078
    move v5, v9

    .line 1079
    move-object v6, v11

    .line 1080
    move-object/from16 v8, v30

    .line 1081
    .line 1082
    move-object/from16 v9, v31

    .line 1083
    .line 1084
    move-object/from16 v3, v36

    .line 1085
    .line 1086
    move-object/from16 v11, v38

    .line 1087
    .line 1088
    move-object/from16 v0, v41

    .line 1089
    .line 1090
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1091
    .line 1092
    .line 1093
    move-object v9, v11

    .line 1094
    goto :goto_24

    .line 1095
    :cond_33
    move-object/from16 v19, v1

    .line 1096
    .line 1097
    move/from16 v16, v3

    .line 1098
    .line 1099
    move-object/from16 v18, v5

    .line 1100
    .line 1101
    move-object/from16 v17, v6

    .line 1102
    .line 1103
    move v5, v9

    .line 1104
    move-object v1, v12

    .line 1105
    move-object v6, v13

    .line 1106
    move-object/from16 v3, v36

    .line 1107
    .line 1108
    move-object/from16 v9, v38

    .line 1109
    .line 1110
    move-object/from16 v0, v41

    .line 1111
    .line 1112
    :goto_24
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 1113
    .line 1114
    if-eq v8, v5, :cond_35

    .line 1115
    .line 1116
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v8

    .line 1120
    move-object v10, v8

    .line 1121
    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1122
    .line 1123
    if-eqz v10, :cond_34

    .line 1124
    .line 1125
    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1126
    .line 1127
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 1128
    .line 1129
    move-object/from16 v8, v30

    .line 1130
    .line 1131
    move-object/from16 v11, v31

    .line 1132
    .line 1133
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1134
    .line 1135
    .line 1136
    :cond_34
    move-object/from16 v8, v30

    .line 1137
    .line 1138
    move-object/from16 v5, v31

    .line 1139
    .line 1140
    goto :goto_25

    .line 1141
    :cond_35
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 1142
    .line 1143
    if-eq v8, v5, :cond_34

    .line 1144
    .line 1145
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v5

    .line 1149
    move-object v10, v5

    .line 1150
    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1151
    .line 1152
    if-eqz v10, :cond_34

    .line 1153
    .line 1154
    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1155
    .line 1156
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 1157
    .line 1158
    move-object v11, v9

    .line 1159
    move-object/from16 v8, v30

    .line 1160
    .line 1161
    move-object/from16 v5, v31

    .line 1162
    .line 1163
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1164
    .line 1165
    .line 1166
    :goto_25
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 1167
    .line 1168
    const/4 v11, -0x1

    .line 1169
    if-eq v10, v11, :cond_36

    .line 1170
    .line 1171
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v10

    .line 1175
    check-cast v10, Landroid/view/View;

    .line 1176
    .line 1177
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 1178
    .line 1179
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v11

    .line 1183
    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1184
    .line 1185
    if-eqz v11, :cond_36

    .line 1186
    .line 1187
    if-eqz v10, :cond_36

    .line 1188
    .line 1189
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v12

    .line 1193
    instance-of v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1194
    .line 1195
    if-eqz v12, :cond_36

    .line 1196
    .line 1197
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v10

    .line 1201
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1202
    .line 1203
    const/4 v12, 0x1

    .line 1204
    iput-boolean v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 1205
    .line 1206
    iput-boolean v12, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 1207
    .line 1208
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1209
    .line 1210
    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v12

    .line 1214
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v11

    .line 1218
    move-object/from16 v41, v0

    .line 1219
    .line 1220
    const/4 v0, -0x1

    .line 1221
    const/4 v13, 0x0

    .line 1222
    invoke-virtual {v12, v11, v13, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)V

    .line 1223
    .line 1224
    .line 1225
    const/4 v12, 0x1

    .line 1226
    iput-boolean v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 1227
    .line 1228
    iget-object v0, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1229
    .line 1230
    iput-boolean v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 1231
    .line 1232
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 1244
    .line 1245
    .line 1246
    goto :goto_26

    .line 1247
    :cond_36
    move-object/from16 v41, v0

    .line 1248
    .line 1249
    :goto_26
    cmpl-float v0, v7, v24

    .line 1250
    .line 1251
    if-ltz v0, :cond_37

    .line 1252
    .line 1253
    iput v7, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 1254
    .line 1255
    :cond_37
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 1256
    .line 1257
    cmpl-float v7, v0, v24

    .line 1258
    .line 1259
    if-ltz v7, :cond_38

    .line 1260
    .line 1261
    iput v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 1262
    .line 1263
    :cond_38
    :goto_27
    if-eqz v21, :cond_3a

    .line 1264
    .line 1265
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 1266
    .line 1267
    const/4 v11, -0x1

    .line 1268
    if-ne v0, v11, :cond_39

    .line 1269
    .line 1270
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 1271
    .line 1272
    if-eq v7, v11, :cond_3a

    .line 1273
    .line 1274
    :cond_39
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 1275
    .line 1276
    iput v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 1277
    .line 1278
    iput v7, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 1279
    .line 1280
    :cond_3a
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 1281
    .line 1282
    const/4 v7, -0x2

    .line 1283
    if-nez v0, :cond_3e

    .line 1284
    .line 1285
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1286
    .line 1287
    const/4 v11, -0x1

    .line 1288
    if-ne v0, v11, :cond_3d

    .line 1289
    .line 1290
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 1291
    .line 1292
    if-eqz v0, :cond_3b

    .line 1293
    .line 1294
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_28

    .line 1298
    :cond_3b
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1299
    .line 1300
    .line 1301
    :goto_28
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1306
    .line 1307
    iput v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 1308
    .line 1309
    invoke-virtual {v8, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1314
    .line 1315
    iput v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 1316
    .line 1317
    :cond_3c
    :goto_29
    move-object/from16 v0, v39

    .line 1318
    .line 1319
    goto :goto_2a

    .line 1320
    :cond_3d
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1321
    .line 1322
    .line 1323
    const/4 v4, 0x0

    .line 1324
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 1325
    .line 1326
    .line 1327
    goto :goto_29

    .line 1328
    :cond_3e
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1329
    .line 1330
    .line 1331
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1332
    .line 1333
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 1334
    .line 1335
    .line 1336
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1337
    .line 1338
    if-ne v0, v7, :cond_3c

    .line 1339
    .line 1340
    move-object/from16 v0, v39

    .line 1341
    .line 1342
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1343
    .line 1344
    .line 1345
    :goto_2a
    iget-boolean v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 1346
    .line 1347
    if-nez v4, :cond_41

    .line 1348
    .line 1349
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1350
    .line 1351
    const/4 v11, -0x1

    .line 1352
    if-ne v4, v11, :cond_40

    .line 1353
    .line 1354
    iget-boolean v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 1355
    .line 1356
    if-eqz v4, :cond_3f

    .line 1357
    .line 1358
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1359
    .line 1360
    .line 1361
    goto :goto_2b

    .line 1362
    :cond_3f
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1363
    .line 1364
    .line 1365
    :goto_2b
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v4

    .line 1369
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1370
    .line 1371
    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 1372
    .line 1373
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v4

    .line 1377
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1378
    .line 1379
    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 1380
    .line 1381
    goto :goto_2c

    .line 1382
    :cond_40
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1383
    .line 1384
    .line 1385
    const/4 v4, 0x0

    .line 1386
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 1387
    .line 1388
    .line 1389
    goto :goto_2c

    .line 1390
    :cond_41
    const/4 v11, -0x1

    .line 1391
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1392
    .line 1393
    .line 1394
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1395
    .line 1396
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 1397
    .line 1398
    .line 1399
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1400
    .line 1401
    if-ne v4, v7, :cond_42

    .line 1402
    .line 1403
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1404
    .line 1405
    .line 1406
    :cond_42
    :goto_2c
    iget-object v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 1407
    .line 1408
    if-eqz v4, :cond_43

    .line 1409
    .line 1410
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1411
    .line 1412
    .line 1413
    move-result v5

    .line 1414
    if-nez v5, :cond_44

    .line 1415
    .line 1416
    :cond_43
    move/from16 v4, v24

    .line 1417
    .line 1418
    goto/16 :goto_30

    .line 1419
    .line 1420
    :cond_44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1421
    .line 1422
    .line 1423
    move-result v5

    .line 1424
    const/16 v7, 0x2c

    .line 1425
    .line 1426
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    .line 1427
    .line 1428
    .line 1429
    move-result v7

    .line 1430
    if-lez v7, :cond_47

    .line 1431
    .line 1432
    add-int/lit8 v10, v5, -0x1

    .line 1433
    .line 1434
    if-ge v7, v10, :cond_47

    .line 1435
    .line 1436
    const/4 v13, 0x0

    .line 1437
    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v10

    .line 1441
    const-string v12, "W"

    .line 1442
    .line 1443
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v12

    .line 1447
    if-eqz v12, :cond_45

    .line 1448
    .line 1449
    const/4 v10, 0x0

    .line 1450
    goto :goto_2d

    .line 1451
    :cond_45
    const-string v12, "H"

    .line 1452
    .line 1453
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v10

    .line 1457
    if-eqz v10, :cond_46

    .line 1458
    .line 1459
    const/4 v10, 0x1

    .line 1460
    goto :goto_2d

    .line 1461
    :cond_46
    move v10, v11

    .line 1462
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    .line 1463
    .line 1464
    goto :goto_2e

    .line 1465
    :cond_47
    move v10, v11

    .line 1466
    const/4 v7, 0x0

    .line 1467
    :goto_2e
    const/16 v12, 0x3a

    .line 1468
    .line 1469
    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(I)I

    .line 1470
    .line 1471
    .line 1472
    move-result v12

    .line 1473
    if-ltz v12, :cond_49

    .line 1474
    .line 1475
    add-int/lit8 v5, v5, -0x1

    .line 1476
    .line 1477
    if-ge v12, v5, :cond_49

    .line 1478
    .line 1479
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v5

    .line 1483
    add-int/lit8 v12, v12, 0x1

    .line 1484
    .line 1485
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v4

    .line 1489
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1490
    .line 1491
    .line 1492
    move-result v7

    .line 1493
    if-lez v7, :cond_4a

    .line 1494
    .line 1495
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1496
    .line 1497
    .line 1498
    move-result v7

    .line 1499
    if-lez v7, :cond_4a

    .line 1500
    .line 1501
    :try_start_2
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1502
    .line 1503
    .line 1504
    move-result v5

    .line 1505
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1506
    .line 1507
    .line 1508
    move-result v4

    .line 1509
    cmpl-float v7, v5, v24

    .line 1510
    .line 1511
    if-lez v7, :cond_4a

    .line 1512
    .line 1513
    cmpl-float v7, v4, v24

    .line 1514
    .line 1515
    if-lez v7, :cond_4a

    .line 1516
    .line 1517
    const/4 v12, 0x1

    .line 1518
    if-ne v10, v12, :cond_48

    .line 1519
    .line 1520
    div-float/2addr v4, v5

    .line 1521
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 1522
    .line 1523
    .line 1524
    move-result v4

    .line 1525
    goto :goto_2f

    .line 1526
    :cond_48
    div-float/2addr v5, v4

    .line 1527
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 1528
    .line 1529
    .line 1530
    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1531
    goto :goto_2f

    .line 1532
    :cond_49
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v4

    .line 1536
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1537
    .line 1538
    .line 1539
    move-result v5

    .line 1540
    if-lez v5, :cond_4a

    .line 1541
    .line 1542
    :try_start_3
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1543
    .line 1544
    .line 1545
    move-result v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1546
    goto :goto_2f

    .line 1547
    :catch_2
    :cond_4a
    move/from16 v4, v24

    .line 1548
    .line 1549
    :goto_2f
    cmpl-float v5, v4, v24

    .line 1550
    .line 1551
    if-lez v5, :cond_4b

    .line 1552
    .line 1553
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 1554
    .line 1555
    iput v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 1556
    .line 1557
    goto :goto_31

    .line 1558
    :goto_30
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 1559
    .line 1560
    :cond_4b
    :goto_31
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 1561
    .line 1562
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:[F

    .line 1563
    .line 1564
    const/16 v27, 0x0

    .line 1565
    .line 1566
    aput v4, v5, v27

    .line 1567
    .line 1568
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 1569
    .line 1570
    const/16 v25, 0x1

    .line 1571
    .line 1572
    aput v4, v5, v25

    .line 1573
    .line 1574
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 1575
    .line 1576
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 1577
    .line 1578
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 1579
    .line 1580
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    .line 1581
    .line 1582
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 1583
    .line 1584
    iget v5, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 1585
    .line 1586
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 1587
    .line 1588
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 1589
    .line 1590
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 1591
    .line 1592
    iput v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 1593
    .line 1594
    const v5, 0x7fffffff

    .line 1595
    .line 1596
    .line 1597
    if-ne v7, v5, :cond_4c

    .line 1598
    .line 1599
    const/4 v7, 0x0

    .line 1600
    :cond_4c
    iput v7, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 1601
    .line 1602
    iput v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 1603
    .line 1604
    const/16 v24, 0x0

    .line 1605
    .line 1606
    cmpl-float v7, v10, v24

    .line 1607
    .line 1608
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1609
    .line 1610
    if-lez v7, :cond_4d

    .line 1611
    .line 1612
    cmpg-float v7, v10, v12

    .line 1613
    .line 1614
    if-gez v7, :cond_4d

    .line 1615
    .line 1616
    if-nez v4, :cond_4d

    .line 1617
    .line 1618
    const/4 v4, 0x2

    .line 1619
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 1620
    .line 1621
    :cond_4d
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 1622
    .line 1623
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 1624
    .line 1625
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 1626
    .line 1627
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 1628
    .line 1629
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 1630
    .line 1631
    iput v7, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 1632
    .line 1633
    if-ne v10, v5, :cond_4e

    .line 1634
    .line 1635
    const/4 v10, 0x0

    .line 1636
    :cond_4e
    iput v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 1637
    .line 1638
    iput v13, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    .line 1639
    .line 1640
    const/16 v24, 0x0

    .line 1641
    .line 1642
    cmpl-float v5, v13, v24

    .line 1643
    .line 1644
    if-lez v5, :cond_4f

    .line 1645
    .line 1646
    cmpg-float v5, v13, v12

    .line 1647
    .line 1648
    if-gez v5, :cond_4f

    .line 1649
    .line 1650
    if-nez v4, :cond_4f

    .line 1651
    .line 1652
    const/4 v4, 0x2

    .line 1653
    iput v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 1654
    .line 1655
    :cond_4f
    :goto_32
    add-int/lit8 v4, v28, 0x1

    .line 1656
    .line 1657
    move/from16 v5, v16

    .line 1658
    .line 1659
    move-object/from16 v16, v15

    .line 1660
    .line 1661
    move v15, v5

    .line 1662
    const/16 v23, 0x2

    .line 1663
    .line 1664
    const/16 v25, 0x1

    .line 1665
    .line 1666
    move-object v10, v0

    .line 1667
    move-object v12, v1

    .line 1668
    move-object v8, v3

    .line 1669
    move v3, v4

    .line 1670
    move-object v13, v6

    .line 1671
    move-object/from16 v6, v17

    .line 1672
    .line 1673
    move-object/from16 v5, v18

    .line 1674
    .line 1675
    move-object/from16 v1, v19

    .line 1676
    .line 1677
    move-object/from16 v11, v41

    .line 1678
    .line 1679
    const/16 v24, 0x0

    .line 1680
    .line 1681
    move-object/from16 v0, p0

    .line 1682
    .line 1683
    goto/16 :goto_16

    .line 1684
    .line 1685
    :cond_50
    :goto_33
    move-object/from16 v19, v1

    .line 1686
    .line 1687
    move-object/from16 v18, v5

    .line 1688
    .line 1689
    move-object/from16 v17, v6

    .line 1690
    .line 1691
    move-object v3, v8

    .line 1692
    move-object v0, v10

    .line 1693
    move-object v1, v12

    .line 1694
    move-object v6, v13

    .line 1695
    move-object/from16 v15, v16

    .line 1696
    .line 1697
    goto :goto_34

    .line 1698
    :cond_51
    move/from16 v22, v2

    .line 1699
    .line 1700
    move/from16 v29, v7

    .line 1701
    .line 1702
    goto :goto_33

    .line 1703
    :goto_34
    if-eqz v29, :cond_55

    .line 1704
    .line 1705
    move-object/from16 v2, v19

    .line 1706
    .line 1707
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->a:Ljava/util/ArrayList;

    .line 1708
    .line 1709
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1710
    .line 1711
    .line 1712
    move-object/from16 v5, v18

    .line 1713
    .line 1714
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 1715
    .line 1716
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1717
    .line 1718
    .line 1719
    move-result v7

    .line 1720
    const/4 v8, 0x0

    .line 1721
    :goto_35
    if-ge v8, v7, :cond_54

    .line 1722
    .line 1723
    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 1724
    .line 1725
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v10

    .line 1729
    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1730
    .line 1731
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1732
    .line 1733
    const/16 v27, 0x0

    .line 1734
    .line 1735
    aget-object v12, v11, v27

    .line 1736
    .line 1737
    if-eq v12, v1, :cond_52

    .line 1738
    .line 1739
    if-eq v12, v6, :cond_52

    .line 1740
    .line 1741
    const/16 v25, 0x1

    .line 1742
    .line 1743
    aget-object v11, v11, v25

    .line 1744
    .line 1745
    if-eq v11, v1, :cond_52

    .line 1746
    .line 1747
    if-ne v11, v6, :cond_53

    .line 1748
    .line 1749
    :cond_52
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    .line 1751
    .line 1752
    :cond_53
    add-int/lit8 v8, v8, 0x1

    .line 1753
    .line 1754
    goto :goto_35

    .line 1755
    :cond_54
    move-object/from16 v8, v17

    .line 1756
    .line 1757
    const/4 v12, 0x1

    .line 1758
    iput-boolean v12, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 1759
    .line 1760
    :goto_36
    move-object/from16 v4, p0

    .line 1761
    .line 1762
    goto :goto_37

    .line 1763
    :cond_55
    move-object/from16 v8, v17

    .line 1764
    .line 1765
    move-object/from16 v5, v18

    .line 1766
    .line 1767
    move-object/from16 v2, v19

    .line 1768
    .line 1769
    goto :goto_36

    .line 1770
    :cond_56
    move/from16 v22, v2

    .line 1771
    .line 1772
    move-object v3, v8

    .line 1773
    move-object v0, v10

    .line 1774
    move-object/from16 v15, v16

    .line 1775
    .line 1776
    move-object v2, v1

    .line 1777
    move-object v8, v6

    .line 1778
    move-object v1, v12

    .line 1779
    goto :goto_36

    .line 1780
    :goto_37
    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 1781
    .line 1782
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 1783
    .line 1784
    .line 1785
    move-result v7

    .line 1786
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 1787
    .line 1788
    .line 1789
    move-result v10

    .line 1790
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 1791
    .line 1792
    .line 1793
    move-result v11

    .line 1794
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 1795
    .line 1796
    .line 1797
    move-result v12

    .line 1798
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 1799
    .line 1800
    .line 1801
    move-result v13

    .line 1802
    const/4 v14, 0x0

    .line 1803
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 1804
    .line 1805
    .line 1806
    move-result v13

    .line 1807
    move-object/from16 v36, v3

    .line 1808
    .line 1809
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 1810
    .line 1811
    .line 1812
    move-result v3

    .line 1813
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    .line 1814
    .line 1815
    .line 1816
    move-result v3

    .line 1817
    add-int v14, v13, v3

    .line 1818
    .line 1819
    move/from16 v16, v10

    .line 1820
    .line 1821
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 1822
    .line 1823
    .line 1824
    move-result v10

    .line 1825
    move/from16 v17, v12

    .line 1826
    .line 1827
    iget-object v12, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1828
    .line 1829
    iput v13, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->b:I

    .line 1830
    .line 1831
    iput v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->c:I

    .line 1832
    .line 1833
    iput v10, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 1834
    .line 1835
    iput v14, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->e:I

    .line 1836
    .line 1837
    move/from16 v3, p1

    .line 1838
    .line 1839
    iput v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 1840
    .line 1841
    move/from16 v3, p2

    .line 1842
    .line 1843
    iput v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 1844
    .line 1845
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    .line 1846
    .line 1847
    .line 1848
    move-result v3

    .line 1849
    move/from16 v18, v10

    .line 1850
    .line 1851
    const/4 v10, 0x0

    .line 1852
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1853
    .line 1854
    .line 1855
    move-result v3

    .line 1856
    move/from16 v19, v3

    .line 1857
    .line 1858
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    .line 1859
    .line 1860
    .line 1861
    move-result v3

    .line 1862
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1863
    .line 1864
    .line 1865
    move-result v3

    .line 1866
    if-gtz v19, :cond_58

    .line 1867
    .line 1868
    if-lez v3, :cond_57

    .line 1869
    .line 1870
    goto :goto_38

    .line 1871
    :cond_57
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 1872
    .line 1873
    .line 1874
    move-result v3

    .line 1875
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1876
    .line 1877
    .line 1878
    move-result v3

    .line 1879
    goto :goto_39

    .line 1880
    :cond_58
    :goto_38
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v10

    .line 1884
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v10

    .line 1888
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1889
    .line 1890
    and-int v10, v10, v22

    .line 1891
    .line 1892
    if-eqz v10, :cond_59

    .line 1893
    .line 1894
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 1895
    .line 1896
    .line 1897
    move-result v10

    .line 1898
    move/from16 v20, v3

    .line 1899
    .line 1900
    const/4 v3, 0x1

    .line 1901
    if-ne v3, v10, :cond_59

    .line 1902
    .line 1903
    move/from16 v3, v20

    .line 1904
    .line 1905
    goto :goto_39

    .line 1906
    :cond_59
    move/from16 v3, v19

    .line 1907
    .line 1908
    :goto_39
    sub-int v10, v16, v18

    .line 1909
    .line 1910
    sub-int v14, v17, v14

    .line 1911
    .line 1912
    move-object/from16 v38, v9

    .line 1913
    .line 1914
    iget v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->e:I

    .line 1915
    .line 1916
    iget v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 1917
    .line 1918
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1919
    .line 1920
    .line 1921
    move-result v16

    .line 1922
    move/from16 v17, v9

    .line 1923
    .line 1924
    const/high16 v9, -0x80000000

    .line 1925
    .line 1926
    if-eq v7, v9, :cond_5d

    .line 1927
    .line 1928
    if-eqz v7, :cond_5b

    .line 1929
    .line 1930
    const/high16 v9, 0x40000000    # 2.0f

    .line 1931
    .line 1932
    if-eq v7, v9, :cond_5a

    .line 1933
    .line 1934
    move/from16 v20, v12

    .line 1935
    .line 1936
    move-object/from16 v19, v15

    .line 1937
    .line 1938
    move-object/from16 v9, v36

    .line 1939
    .line 1940
    const/4 v12, 0x0

    .line 1941
    :goto_3a
    const/high16 v15, -0x80000000

    .line 1942
    .line 1943
    goto :goto_3c

    .line 1944
    :cond_5a
    iget v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 1945
    .line 1946
    sub-int/2addr v9, v12

    .line 1947
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 1948
    .line 1949
    .line 1950
    move-result v9

    .line 1951
    move/from16 v20, v12

    .line 1952
    .line 1953
    move-object/from16 v19, v15

    .line 1954
    .line 1955
    const/high16 v15, -0x80000000

    .line 1956
    .line 1957
    move v12, v9

    .line 1958
    move-object/from16 v9, v36

    .line 1959
    .line 1960
    goto :goto_3c

    .line 1961
    :cond_5b
    if-nez v16, :cond_5c

    .line 1962
    .line 1963
    iget v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 1964
    .line 1965
    move/from16 v20, v12

    .line 1966
    .line 1967
    const/4 v12, 0x0

    .line 1968
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    .line 1969
    .line 1970
    .line 1971
    move-result v27

    .line 1972
    move-object v9, v0

    .line 1973
    move-object/from16 v19, v15

    .line 1974
    .line 1975
    move/from16 v12, v27

    .line 1976
    .line 1977
    goto :goto_3a

    .line 1978
    :cond_5c
    move/from16 v20, v12

    .line 1979
    .line 1980
    const/4 v12, 0x0

    .line 1981
    move-object v9, v0

    .line 1982
    :goto_3b
    move-object/from16 v19, v15

    .line 1983
    .line 1984
    goto :goto_3a

    .line 1985
    :cond_5d
    move/from16 v20, v12

    .line 1986
    .line 1987
    const/4 v12, 0x0

    .line 1988
    if-nez v16, :cond_5e

    .line 1989
    .line 1990
    iget v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 1991
    .line 1992
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    .line 1993
    .line 1994
    .line 1995
    move-result v9

    .line 1996
    move v12, v9

    .line 1997
    move-object/from16 v19, v15

    .line 1998
    .line 1999
    const/high16 v15, -0x80000000

    .line 2000
    .line 2001
    move-object v9, v0

    .line 2002
    goto :goto_3c

    .line 2003
    :cond_5e
    move-object v9, v0

    .line 2004
    move v12, v10

    .line 2005
    goto :goto_3b

    .line 2006
    :goto_3c
    if-eq v11, v15, :cond_62

    .line 2007
    .line 2008
    if-eqz v11, :cond_60

    .line 2009
    .line 2010
    const/high16 v15, 0x40000000    # 2.0f

    .line 2011
    .line 2012
    if-eq v11, v15, :cond_5f

    .line 2013
    .line 2014
    move-object/from16 v39, v0

    .line 2015
    .line 2016
    move/from16 v16, v14

    .line 2017
    .line 2018
    move-object/from16 v0, v36

    .line 2019
    .line 2020
    const/4 v15, 0x0

    .line 2021
    goto :goto_3f

    .line 2022
    :cond_5f
    iget v15, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2023
    .line 2024
    sub-int v15, v15, v17

    .line 2025
    .line 2026
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    .line 2027
    .line 2028
    .line 2029
    move-result v15

    .line 2030
    move-object/from16 v39, v0

    .line 2031
    .line 2032
    move/from16 v16, v14

    .line 2033
    .line 2034
    move-object/from16 v0, v36

    .line 2035
    .line 2036
    goto :goto_3f

    .line 2037
    :cond_60
    if-nez v16, :cond_61

    .line 2038
    .line 2039
    iget v15, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2040
    .line 2041
    move-object/from16 v39, v0

    .line 2042
    .line 2043
    const/4 v0, 0x0

    .line 2044
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 2045
    .line 2046
    .line 2047
    move-result v27

    .line 2048
    move/from16 v16, v14

    .line 2049
    .line 2050
    move/from16 v15, v27

    .line 2051
    .line 2052
    :goto_3d
    move-object/from16 v0, v39

    .line 2053
    .line 2054
    goto :goto_3f

    .line 2055
    :cond_61
    move-object/from16 v39, v0

    .line 2056
    .line 2057
    const/4 v0, 0x0

    .line 2058
    move v15, v0

    .line 2059
    :goto_3e
    move/from16 v16, v14

    .line 2060
    .line 2061
    goto :goto_3d

    .line 2062
    :cond_62
    move-object/from16 v39, v0

    .line 2063
    .line 2064
    const/4 v0, 0x0

    .line 2065
    if-nez v16, :cond_63

    .line 2066
    .line 2067
    iget v15, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2068
    .line 2069
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 2070
    .line 2071
    .line 2072
    move-result v15

    .line 2073
    goto :goto_3e

    .line 2074
    :cond_63
    move v15, v14

    .line 2075
    move/from16 v16, v15

    .line 2076
    .line 2077
    goto :goto_3d

    .line 2078
    :goto_3f
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 2079
    .line 2080
    .line 2081
    move-result v14

    .line 2082
    move/from16 v21, v10

    .line 2083
    .line 2084
    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:[I

    .line 2085
    .line 2086
    if-ne v12, v14, :cond_64

    .line 2087
    .line 2088
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 2089
    .line 2090
    .line 2091
    move-result v14

    .line 2092
    if-eq v15, v14, :cond_65

    .line 2093
    .line 2094
    :cond_64
    const/4 v14, 0x1

    .line 2095
    goto :goto_41

    .line 2096
    :cond_65
    const/16 v25, 0x1

    .line 2097
    .line 2098
    :goto_40
    const/4 v14, 0x0

    .line 2099
    goto :goto_42

    .line 2100
    :goto_41
    iput-boolean v14, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->c:Z

    .line 2101
    .line 2102
    move/from16 v25, v14

    .line 2103
    .line 2104
    goto :goto_40

    .line 2105
    :goto_42
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 2106
    .line 2107
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 2108
    .line 2109
    move/from16 v27, v14

    .line 2110
    .line 2111
    iget v14, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 2112
    .line 2113
    sub-int v14, v14, v20

    .line 2114
    .line 2115
    aput v14, v10, v27

    .line 2116
    .line 2117
    iget v14, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2118
    .line 2119
    sub-int v14, v14, v17

    .line 2120
    .line 2121
    aput v14, v10, v25

    .line 2122
    .line 2123
    move/from16 v14, v27

    .line 2124
    .line 2125
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 2126
    .line 2127
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 2128
    .line 2129
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v5, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 2133
    .line 2134
    .line 2135
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2136
    .line 2137
    .line 2138
    invoke-virtual {v5, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 2139
    .line 2140
    .line 2141
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2142
    .line 2143
    sub-int v0, v0, v20

    .line 2144
    .line 2145
    if-gez v0, :cond_66

    .line 2146
    .line 2147
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 2148
    .line 2149
    goto :goto_43

    .line 2150
    :cond_66
    iput v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 2151
    .line 2152
    :goto_43
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2153
    .line 2154
    sub-int v0, v0, v17

    .line 2155
    .line 2156
    if-gez v0, :cond_67

    .line 2157
    .line 2158
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 2159
    .line 2160
    goto :goto_44

    .line 2161
    :cond_67
    iput v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 2162
    .line 2163
    :goto_44
    iput v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->j0:I

    .line 2164
    .line 2165
    iput v13, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->k0:I

    .line 2166
    .line 2167
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2168
    .line 2169
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->a:Ljava/util/ArrayList;

    .line 2170
    .line 2171
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->g0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 2172
    .line 2173
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 2174
    .line 2175
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 2176
    .line 2177
    .line 2178
    move-result v12

    .line 2179
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 2180
    .line 2181
    .line 2182
    move-result v13

    .line 2183
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 2184
    .line 2185
    .line 2186
    move-result v14

    .line 2187
    and-int/lit16 v15, v6, 0x80

    .line 2188
    .line 2189
    const/16 v4, 0x80

    .line 2190
    .line 2191
    if-ne v15, v4, :cond_68

    .line 2192
    .line 2193
    const/4 v4, 0x1

    .line 2194
    goto :goto_45

    .line 2195
    :cond_68
    const/4 v4, 0x0

    .line 2196
    :goto_45
    if-nez v4, :cond_6a

    .line 2197
    .line 2198
    const/16 v15, 0x40

    .line 2199
    .line 2200
    and-int/2addr v6, v15

    .line 2201
    if-ne v6, v15, :cond_69

    .line 2202
    .line 2203
    goto :goto_46

    .line 2204
    :cond_69
    const/4 v6, 0x0

    .line 2205
    goto :goto_47

    .line 2206
    :cond_6a
    :goto_46
    const/4 v6, 0x1

    .line 2207
    :goto_47
    if-eqz v6, :cond_73

    .line 2208
    .line 2209
    const/4 v15, 0x0

    .line 2210
    :goto_48
    if-ge v15, v12, :cond_73

    .line 2211
    .line 2212
    move/from16 v17, v6

    .line 2213
    .line 2214
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 2215
    .line 2216
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v6

    .line 2220
    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2221
    .line 2222
    move-object/from16 v20, v10

    .line 2223
    .line 2224
    iget-object v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2225
    .line 2226
    move-object/from16 v22, v10

    .line 2227
    .line 2228
    const/16 v27, 0x0

    .line 2229
    .line 2230
    aget-object v10, v22, v27

    .line 2231
    .line 2232
    if-ne v10, v1, :cond_6b

    .line 2233
    .line 2234
    const/16 v26, 0x1

    .line 2235
    .line 2236
    :goto_49
    const/16 v25, 0x1

    .line 2237
    .line 2238
    goto :goto_4a

    .line 2239
    :cond_6b
    const/16 v26, 0x0

    .line 2240
    .line 2241
    goto :goto_49

    .line 2242
    :goto_4a
    aget-object v10, v22, v25

    .line 2243
    .line 2244
    if-ne v10, v1, :cond_6c

    .line 2245
    .line 2246
    const/4 v10, 0x1

    .line 2247
    goto :goto_4b

    .line 2248
    :cond_6c
    const/4 v10, 0x0

    .line 2249
    :goto_4b
    if-eqz v26, :cond_6d

    .line 2250
    .line 2251
    if-eqz v10, :cond_6d

    .line 2252
    .line 2253
    iget v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 2254
    .line 2255
    const/16 v24, 0x0

    .line 2256
    .line 2257
    cmpl-float v10, v10, v24

    .line 2258
    .line 2259
    if-lez v10, :cond_6e

    .line 2260
    .line 2261
    const/4 v10, 0x1

    .line 2262
    goto :goto_4c

    .line 2263
    :cond_6d
    const/16 v24, 0x0

    .line 2264
    .line 2265
    :cond_6e
    const/4 v10, 0x0

    .line 2266
    :goto_4c
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 2267
    .line 2268
    .line 2269
    move-result v22

    .line 2270
    if-eqz v22, :cond_70

    .line 2271
    .line 2272
    if-eqz v10, :cond_70

    .line 2273
    .line 2274
    :cond_6f
    :goto_4d
    const/high16 v15, 0x40000000    # 2.0f

    .line 2275
    .line 2276
    const/16 v17, 0x0

    .line 2277
    .line 2278
    goto :goto_4e

    .line 2279
    :cond_70
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    .line 2280
    .line 2281
    .line 2282
    move-result v22

    .line 2283
    if-eqz v22, :cond_71

    .line 2284
    .line 2285
    if-eqz v10, :cond_71

    .line 2286
    .line 2287
    goto :goto_4d

    .line 2288
    :cond_71
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 2289
    .line 2290
    .line 2291
    move-result v10

    .line 2292
    if-nez v10, :cond_6f

    .line 2293
    .line 2294
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    .line 2295
    .line 2296
    .line 2297
    move-result v6

    .line 2298
    if-eqz v6, :cond_72

    .line 2299
    .line 2300
    goto :goto_4d

    .line 2301
    :cond_72
    add-int/lit8 v15, v15, 0x1

    .line 2302
    .line 2303
    move/from16 v6, v17

    .line 2304
    .line 2305
    move-object/from16 v10, v20

    .line 2306
    .line 2307
    goto :goto_48

    .line 2308
    :cond_73
    move/from16 v17, v6

    .line 2309
    .line 2310
    move-object/from16 v20, v10

    .line 2311
    .line 2312
    const/high16 v15, 0x40000000    # 2.0f

    .line 2313
    .line 2314
    :goto_4e
    if-ne v7, v15, :cond_74

    .line 2315
    .line 2316
    if-eq v11, v15, :cond_75

    .line 2317
    .line 2318
    :cond_74
    if-eqz v4, :cond_76

    .line 2319
    .line 2320
    :cond_75
    const/4 v6, 0x1

    .line 2321
    goto :goto_4f

    .line 2322
    :cond_76
    const/4 v6, 0x0

    .line 2323
    :goto_4f
    and-int v6, v17, v6

    .line 2324
    .line 2325
    if-eqz v6, :cond_82

    .line 2326
    .line 2327
    const/16 v27, 0x0

    .line 2328
    .line 2329
    aget v6, v20, v27

    .line 2330
    .line 2331
    move/from16 v10, v21

    .line 2332
    .line 2333
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    .line 2334
    .line 2335
    .line 2336
    move-result v6

    .line 2337
    const/4 v10, 0x1

    .line 2338
    aget v15, v20, v10

    .line 2339
    .line 2340
    move/from16 v10, v16

    .line 2341
    .line 2342
    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    .line 2343
    .line 2344
    .line 2345
    move-result v10

    .line 2346
    const/high16 v15, 0x40000000    # 2.0f

    .line 2347
    .line 2348
    if-ne v7, v15, :cond_78

    .line 2349
    .line 2350
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 2351
    .line 2352
    .line 2353
    move-result v15

    .line 2354
    if-eq v15, v6, :cond_77

    .line 2355
    .line 2356
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 2357
    .line 2358
    .line 2359
    const/4 v6, 0x1

    .line 2360
    iput-boolean v6, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 2361
    .line 2362
    :goto_50
    const/high16 v15, 0x40000000    # 2.0f

    .line 2363
    .line 2364
    goto :goto_51

    .line 2365
    :cond_77
    const/4 v6, 0x1

    .line 2366
    goto :goto_50

    .line 2367
    :cond_78
    const/4 v6, 0x1

    .line 2368
    :goto_51
    if-ne v11, v15, :cond_7a

    .line 2369
    .line 2370
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 2371
    .line 2372
    .line 2373
    move-result v15

    .line 2374
    if-eq v15, v10, :cond_79

    .line 2375
    .line 2376
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 2377
    .line 2378
    .line 2379
    iput-boolean v6, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 2380
    .line 2381
    :cond_79
    const/high16 v15, 0x40000000    # 2.0f

    .line 2382
    .line 2383
    :cond_7a
    if-ne v7, v15, :cond_7b

    .line 2384
    .line 2385
    if-ne v11, v15, :cond_7b

    .line 2386
    .line 2387
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->e(Z)Z

    .line 2388
    .line 2389
    .line 2390
    move-result v4

    .line 2391
    move-object/from16 v20, v9

    .line 2392
    .line 2393
    move/from16 v17, v12

    .line 2394
    .line 2395
    const/4 v6, 0x2

    .line 2396
    const/high16 v15, 0x40000000    # 2.0f

    .line 2397
    .line 2398
    goto/16 :goto_55

    .line 2399
    .line 2400
    :cond_7b
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2401
    .line 2402
    iget-boolean v10, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 2403
    .line 2404
    if-eqz v10, :cond_7d

    .line 2405
    .line 2406
    iget-object v10, v6, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 2407
    .line 2408
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v10

    .line 2412
    :goto_52
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 2413
    .line 2414
    .line 2415
    move-result v15

    .line 2416
    if-eqz v15, :cond_7c

    .line 2417
    .line 2418
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v15

    .line 2422
    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2423
    .line 2424
    move-object/from16 v16, v10

    .line 2425
    .line 2426
    const/4 v10, 0x0

    .line 2427
    iput-boolean v10, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 2428
    .line 2429
    move/from16 v17, v12

    .line 2430
    .line 2431
    iget-object v12, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 2432
    .line 2433
    move-object/from16 v20, v9

    .line 2434
    .line 2435
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2436
    .line 2437
    iput-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2438
    .line 2439
    iput-boolean v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 2440
    .line 2441
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 2442
    .line 2443
    .line 2444
    iget-object v9, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 2445
    .line 2446
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2447
    .line 2448
    iput-boolean v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2449
    .line 2450
    iput-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 2451
    .line 2452
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 2453
    .line 2454
    .line 2455
    move-object/from16 v10, v16

    .line 2456
    .line 2457
    move/from16 v12, v17

    .line 2458
    .line 2459
    move-object/from16 v9, v20

    .line 2460
    .line 2461
    goto :goto_52

    .line 2462
    :cond_7c
    move-object/from16 v20, v9

    .line 2463
    .line 2464
    move/from16 v17, v12

    .line 2465
    .line 2466
    const/4 v10, 0x0

    .line 2467
    iput-boolean v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 2468
    .line 2469
    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 2470
    .line 2471
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2472
    .line 2473
    iput-boolean v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2474
    .line 2475
    iput-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 2476
    .line 2477
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 2478
    .line 2479
    .line 2480
    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 2481
    .line 2482
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2483
    .line 2484
    iput-boolean v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2485
    .line 2486
    iput-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 2487
    .line 2488
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 2489
    .line 2490
    .line 2491
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->c()V

    .line 2492
    .line 2493
    .line 2494
    goto :goto_53

    .line 2495
    :cond_7d
    move-object/from16 v20, v9

    .line 2496
    .line 2497
    move/from16 v17, v12

    .line 2498
    .line 2499
    const/4 v10, 0x0

    .line 2500
    :goto_53
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2501
    .line 2502
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 2503
    .line 2504
    .line 2505
    iput v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 2506
    .line 2507
    iput v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 2508
    .line 2509
    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 2510
    .line 2511
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 2512
    .line 2513
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 2514
    .line 2515
    .line 2516
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 2517
    .line 2518
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 2519
    .line 2520
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 2521
    .line 2522
    .line 2523
    const/high16 v15, 0x40000000    # 2.0f

    .line 2524
    .line 2525
    if-ne v7, v15, :cond_7e

    .line 2526
    .line 2527
    invoke-virtual {v8, v10, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->f(IZ)Z

    .line 2528
    .line 2529
    .line 2530
    move-result v6

    .line 2531
    move v9, v6

    .line 2532
    const/4 v6, 0x1

    .line 2533
    goto :goto_54

    .line 2534
    :cond_7e
    const/4 v6, 0x0

    .line 2535
    const/4 v9, 0x1

    .line 2536
    :goto_54
    if-ne v11, v15, :cond_7f

    .line 2537
    .line 2538
    const/4 v12, 0x1

    .line 2539
    invoke-virtual {v8, v12, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->f(IZ)Z

    .line 2540
    .line 2541
    .line 2542
    move-result v4

    .line 2543
    and-int/2addr v4, v9

    .line 2544
    add-int/lit8 v6, v6, 0x1

    .line 2545
    .line 2546
    goto :goto_55

    .line 2547
    :cond_7f
    move v4, v9

    .line 2548
    :goto_55
    if-eqz v4, :cond_83

    .line 2549
    .line 2550
    if-ne v7, v15, :cond_80

    .line 2551
    .line 2552
    const/4 v7, 0x1

    .line 2553
    goto :goto_56

    .line 2554
    :cond_80
    const/4 v7, 0x0

    .line 2555
    :goto_56
    if-ne v11, v15, :cond_81

    .line 2556
    .line 2557
    const/4 v8, 0x1

    .line 2558
    goto :goto_57

    .line 2559
    :cond_81
    const/4 v8, 0x0

    .line 2560
    :goto_57
    invoke-virtual {v5, v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->w(ZZ)V

    .line 2561
    .line 2562
    .line 2563
    goto :goto_58

    .line 2564
    :cond_82
    move-object/from16 v20, v9

    .line 2565
    .line 2566
    move/from16 v17, v12

    .line 2567
    .line 2568
    const/4 v4, 0x0

    .line 2569
    const/4 v6, 0x0

    .line 2570
    :cond_83
    :goto_58
    if-eqz v4, :cond_84

    .line 2571
    .line 2572
    const/4 v4, 0x2

    .line 2573
    if-eq v6, v4, :cond_a0

    .line 2574
    .line 2575
    :cond_84
    if-lez v17, :cond_8a

    .line 2576
    .line 2577
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 2578
    .line 2579
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2580
    .line 2581
    .line 2582
    move-result v4

    .line 2583
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->g0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 2584
    .line 2585
    const/4 v7, 0x0

    .line 2586
    :goto_59
    if-ge v7, v4, :cond_88

    .line 2587
    .line 2588
    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 2589
    .line 2590
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2591
    .line 2592
    .line 2593
    move-result-object v8

    .line 2594
    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2595
    .line 2596
    instance-of v9, v8, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 2597
    .line 2598
    if-eqz v9, :cond_85

    .line 2599
    .line 2600
    goto :goto_5a

    .line 2601
    :cond_85
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 2602
    .line 2603
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2604
    .line 2605
    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2606
    .line 2607
    if-eqz v9, :cond_86

    .line 2608
    .line 2609
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 2610
    .line 2611
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2612
    .line 2613
    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2614
    .line 2615
    if-eqz v9, :cond_86

    .line 2616
    .line 2617
    goto :goto_5a

    .line 2618
    :cond_86
    const/4 v10, 0x0

    .line 2619
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v9

    .line 2623
    const/4 v12, 0x1

    .line 2624
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v10

    .line 2628
    if-ne v9, v1, :cond_87

    .line 2629
    .line 2630
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 2631
    .line 2632
    if-eq v9, v12, :cond_87

    .line 2633
    .line 2634
    if-ne v10, v1, :cond_87

    .line 2635
    .line 2636
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 2637
    .line 2638
    if-eq v9, v12, :cond_87

    .line 2639
    .line 2640
    goto :goto_5a

    .line 2641
    :cond_87
    const/4 v10, 0x0

    .line 2642
    invoke-virtual {v2, v6, v8, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->a(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 2643
    .line 2644
    .line 2645
    :goto_5a
    add-int/lit8 v7, v7, 0x1

    .line 2646
    .line 2647
    goto :goto_59

    .line 2648
    :cond_88
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 2649
    .line 2650
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2651
    .line 2652
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 2653
    .line 2654
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2655
    .line 2656
    .line 2657
    move-result v6

    .line 2658
    const/4 v7, 0x0

    .line 2659
    :goto_5b
    if-ge v7, v6, :cond_89

    .line 2660
    .line 2661
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2662
    .line 2663
    .line 2664
    add-int/lit8 v7, v7, 0x1

    .line 2665
    .line 2666
    goto :goto_5b

    .line 2667
    :cond_89
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2668
    .line 2669
    .line 2670
    move-result v1

    .line 2671
    if-lez v1, :cond_8a

    .line 2672
    .line 2673
    const/4 v6, 0x0

    .line 2674
    :goto_5c
    if-ge v6, v1, :cond_8a

    .line 2675
    .line 2676
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v7

    .line 2680
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 2681
    .line 2682
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2683
    .line 2684
    .line 2685
    add-int/lit8 v6, v6, 0x1

    .line 2686
    .line 2687
    goto :goto_5c

    .line 2688
    :cond_8a
    iget v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 2689
    .line 2690
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2691
    .line 2692
    .line 2693
    move-result v4

    .line 2694
    if-lez v17, :cond_8b

    .line 2695
    .line 2696
    invoke-virtual {v2, v5, v13, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;II)V

    .line 2697
    .line 2698
    .line 2699
    :cond_8b
    if-lez v4, :cond_9d

    .line 2700
    .line 2701
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2702
    .line 2703
    const/16 v27, 0x0

    .line 2704
    .line 2705
    aget-object v7, v6, v27

    .line 2706
    .line 2707
    move-object/from16 v8, v39

    .line 2708
    .line 2709
    if-ne v7, v8, :cond_8c

    .line 2710
    .line 2711
    const/4 v7, 0x1

    .line 2712
    :goto_5d
    const/16 v25, 0x1

    .line 2713
    .line 2714
    goto :goto_5e

    .line 2715
    :cond_8c
    move/from16 v7, v27

    .line 2716
    .line 2717
    goto :goto_5d

    .line 2718
    :goto_5e
    aget-object v6, v6, v25

    .line 2719
    .line 2720
    if-ne v6, v8, :cond_8d

    .line 2721
    .line 2722
    const/4 v6, 0x1

    .line 2723
    goto :goto_5f

    .line 2724
    :cond_8d
    move/from16 v6, v27

    .line 2725
    .line 2726
    :goto_5f
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 2727
    .line 2728
    .line 2729
    move-result v8

    .line 2730
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 2731
    .line 2732
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 2733
    .line 2734
    .line 2735
    move-result v8

    .line 2736
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 2737
    .line 2738
    .line 2739
    move-result v9

    .line 2740
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 2741
    .line 2742
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 2743
    .line 2744
    .line 2745
    move-result v0

    .line 2746
    move/from16 v9, v27

    .line 2747
    .line 2748
    :goto_60
    if-ge v9, v4, :cond_8e

    .line 2749
    .line 2750
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2751
    .line 2752
    .line 2753
    move-result-object v10

    .line 2754
    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2755
    .line 2756
    add-int/lit8 v9, v9, 0x1

    .line 2757
    .line 2758
    goto :goto_60

    .line 2759
    :cond_8e
    move v10, v8

    .line 2760
    move/from16 v8, v27

    .line 2761
    .line 2762
    move v9, v8

    .line 2763
    :goto_61
    const/4 v11, 0x2

    .line 2764
    if-ge v8, v11, :cond_9a

    .line 2765
    .line 2766
    move v12, v10

    .line 2767
    move v10, v9

    .line 2768
    move/from16 v9, v27

    .line 2769
    .line 2770
    :goto_62
    if-ge v9, v4, :cond_98

    .line 2771
    .line 2772
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v15

    .line 2776
    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2777
    .line 2778
    instance-of v11, v15, Landroidx/constraintlayout/solver/widgets/Helper;

    .line 2779
    .line 2780
    if-eqz v11, :cond_8f

    .line 2781
    .line 2782
    :goto_63
    move-object/from16 v16, v3

    .line 2783
    .line 2784
    goto :goto_64

    .line 2785
    :cond_8f
    instance-of v11, v15, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 2786
    .line 2787
    if-eqz v11, :cond_90

    .line 2788
    .line 2789
    goto :goto_63

    .line 2790
    :cond_90
    iget v11, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 2791
    .line 2792
    move-object/from16 v16, v3

    .line 2793
    .line 2794
    const/16 v3, 0x8

    .line 2795
    .line 2796
    if-ne v11, v3, :cond_91

    .line 2797
    .line 2798
    goto :goto_64

    .line 2799
    :cond_91
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 2800
    .line 2801
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2802
    .line 2803
    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2804
    .line 2805
    if-eqz v3, :cond_92

    .line 2806
    .line 2807
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 2808
    .line 2809
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2810
    .line 2811
    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2812
    .line 2813
    if-eqz v3, :cond_92

    .line 2814
    .line 2815
    :goto_64
    move/from16 v17, v4

    .line 2816
    .line 2817
    move/from16 v18, v6

    .line 2818
    .line 2819
    move-object/from16 v6, v19

    .line 2820
    .line 2821
    move-object/from16 v21, v20

    .line 2822
    .line 2823
    move-object/from16 v11, v38

    .line 2824
    .line 2825
    move/from16 v20, v7

    .line 2826
    .line 2827
    goto/16 :goto_69

    .line 2828
    .line 2829
    :cond_92
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 2830
    .line 2831
    .line 2832
    move-result v3

    .line 2833
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 2834
    .line 2835
    .line 2836
    move-result v11

    .line 2837
    move/from16 v17, v4

    .line 2838
    .line 2839
    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 2840
    .line 2841
    move-object/from16 v18, v20

    .line 2842
    .line 2843
    move/from16 v20, v7

    .line 2844
    .line 2845
    move-object/from16 v7, v18

    .line 2846
    .line 2847
    move/from16 v18, v6

    .line 2848
    .line 2849
    const/4 v6, 0x1

    .line 2850
    invoke-virtual {v2, v7, v15, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->a(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 2851
    .line 2852
    .line 2853
    move-result v21

    .line 2854
    or-int v10, v10, v21

    .line 2855
    .line 2856
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 2857
    .line 2858
    .line 2859
    move-result v6

    .line 2860
    move-object/from16 v21, v7

    .line 2861
    .line 2862
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 2863
    .line 2864
    .line 2865
    move-result v7

    .line 2866
    if-eq v6, v3, :cond_94

    .line 2867
    .line 2868
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 2869
    .line 2870
    .line 2871
    if-eqz v20, :cond_93

    .line 2872
    .line 2873
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 2874
    .line 2875
    .line 2876
    move-result v3

    .line 2877
    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 2878
    .line 2879
    add-int/2addr v3, v6

    .line 2880
    if-le v3, v12, :cond_93

    .line 2881
    .line 2882
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 2883
    .line 2884
    .line 2885
    move-result v3

    .line 2886
    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 2887
    .line 2888
    add-int/2addr v3, v6

    .line 2889
    move-object/from16 v6, v19

    .line 2890
    .line 2891
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2892
    .line 2893
    .line 2894
    move-result-object v10

    .line 2895
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 2896
    .line 2897
    .line 2898
    move-result v10

    .line 2899
    add-int/2addr v10, v3

    .line 2900
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    .line 2901
    .line 2902
    .line 2903
    move-result v12

    .line 2904
    goto :goto_65

    .line 2905
    :cond_93
    move-object/from16 v6, v19

    .line 2906
    .line 2907
    :goto_65
    const/4 v10, 0x1

    .line 2908
    goto :goto_66

    .line 2909
    :cond_94
    move-object/from16 v6, v19

    .line 2910
    .line 2911
    :goto_66
    if-eq v7, v11, :cond_96

    .line 2912
    .line 2913
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 2914
    .line 2915
    .line 2916
    if-eqz v18, :cond_95

    .line 2917
    .line 2918
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()I

    .line 2919
    .line 2920
    .line 2921
    move-result v3

    .line 2922
    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 2923
    .line 2924
    add-int/2addr v3, v7

    .line 2925
    if-le v3, v0, :cond_95

    .line 2926
    .line 2927
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()I

    .line 2928
    .line 2929
    .line 2930
    move-result v3

    .line 2931
    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 2932
    .line 2933
    add-int/2addr v3, v7

    .line 2934
    move-object/from16 v11, v38

    .line 2935
    .line 2936
    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2937
    .line 2938
    .line 2939
    move-result-object v7

    .line 2940
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 2941
    .line 2942
    .line 2943
    move-result v7

    .line 2944
    add-int/2addr v7, v3

    .line 2945
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 2946
    .line 2947
    .line 2948
    move-result v0

    .line 2949
    goto :goto_67

    .line 2950
    :cond_95
    move-object/from16 v11, v38

    .line 2951
    .line 2952
    :goto_67
    const/4 v10, 0x1

    .line 2953
    goto :goto_68

    .line 2954
    :cond_96
    move-object/from16 v11, v38

    .line 2955
    .line 2956
    :goto_68
    iget-boolean v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 2957
    .line 2958
    if-eqz v3, :cond_97

    .line 2959
    .line 2960
    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 2961
    .line 2962
    if-eq v4, v3, :cond_97

    .line 2963
    .line 2964
    const/4 v10, 0x1

    .line 2965
    :cond_97
    :goto_69
    add-int/lit8 v9, v9, 0x1

    .line 2966
    .line 2967
    move-object/from16 v19, v6

    .line 2968
    .line 2969
    move-object/from16 v38, v11

    .line 2970
    .line 2971
    move-object/from16 v3, v16

    .line 2972
    .line 2973
    move/from16 v4, v17

    .line 2974
    .line 2975
    move/from16 v6, v18

    .line 2976
    .line 2977
    move/from16 v7, v20

    .line 2978
    .line 2979
    move-object/from16 v20, v21

    .line 2980
    .line 2981
    const/4 v11, 0x2

    .line 2982
    goto/16 :goto_62

    .line 2983
    .line 2984
    :cond_98
    move-object/from16 v16, v3

    .line 2985
    .line 2986
    move/from16 v17, v4

    .line 2987
    .line 2988
    move/from16 v18, v6

    .line 2989
    .line 2990
    move-object/from16 v6, v19

    .line 2991
    .line 2992
    move-object/from16 v21, v20

    .line 2993
    .line 2994
    move-object/from16 v11, v38

    .line 2995
    .line 2996
    move/from16 v20, v7

    .line 2997
    .line 2998
    if-eqz v10, :cond_99

    .line 2999
    .line 3000
    invoke-virtual {v2, v5, v13, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;II)V

    .line 3001
    .line 3002
    .line 3003
    move/from16 v9, v27

    .line 3004
    .line 3005
    goto :goto_6a

    .line 3006
    :cond_99
    move v9, v10

    .line 3007
    :goto_6a
    add-int/lit8 v8, v8, 0x1

    .line 3008
    .line 3009
    move-object/from16 v19, v6

    .line 3010
    .line 3011
    move-object/from16 v38, v11

    .line 3012
    .line 3013
    move v10, v12

    .line 3014
    move-object/from16 v3, v16

    .line 3015
    .line 3016
    move/from16 v4, v17

    .line 3017
    .line 3018
    move/from16 v6, v18

    .line 3019
    .line 3020
    move/from16 v7, v20

    .line 3021
    .line 3022
    move-object/from16 v20, v21

    .line 3023
    .line 3024
    goto/16 :goto_61

    .line 3025
    .line 3026
    :cond_9a
    if-eqz v9, :cond_9e

    .line 3027
    .line 3028
    invoke-virtual {v2, v5, v13, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;II)V

    .line 3029
    .line 3030
    .line 3031
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 3032
    .line 3033
    .line 3034
    move-result v3

    .line 3035
    if-ge v3, v10, :cond_9b

    .line 3036
    .line 3037
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 3038
    .line 3039
    .line 3040
    const/4 v4, 0x1

    .line 3041
    goto :goto_6b

    .line 3042
    :cond_9b
    move/from16 v4, v27

    .line 3043
    .line 3044
    :goto_6b
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 3045
    .line 3046
    .line 3047
    move-result v3

    .line 3048
    if-ge v3, v0, :cond_9c

    .line 3049
    .line 3050
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 3051
    .line 3052
    .line 3053
    const/4 v8, 0x1

    .line 3054
    goto :goto_6c

    .line 3055
    :cond_9c
    move v8, v4

    .line 3056
    :goto_6c
    if-eqz v8, :cond_9e

    .line 3057
    .line 3058
    invoke-virtual {v2, v5, v13, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;II)V

    .line 3059
    .line 3060
    .line 3061
    goto :goto_6d

    .line 3062
    :cond_9d
    const/16 v27, 0x0

    .line 3063
    .line 3064
    :cond_9e
    :goto_6d
    iput v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 3065
    .line 3066
    const/16 v0, 0x100

    .line 3067
    .line 3068
    and-int/2addr v1, v0

    .line 3069
    if-ne v1, v0, :cond_9f

    .line 3070
    .line 3071
    const/4 v3, 0x1

    .line 3072
    goto :goto_6e

    .line 3073
    :cond_9f
    move/from16 v3, v27

    .line 3074
    .line 3075
    :goto_6e
    sput-boolean v3, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 3076
    .line 3077
    :cond_a0
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 3078
    .line 3079
    .line 3080
    move-result v3

    .line 3081
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 3082
    .line 3083
    .line 3084
    move-result v4

    .line 3085
    iget-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->q0:Z

    .line 3086
    .line 3087
    iget-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->r0:Z

    .line 3088
    .line 3089
    move/from16 v1, p1

    .line 3090
    .line 3091
    move/from16 v2, p2

    .line 3092
    .line 3093
    move v5, v0

    .line 3094
    move-object/from16 v0, p0

    .line 3095
    .line 3096
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(IIIIZZ)V

    .line 3097
    .line 3098
    .line 3099
    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    new-instance v1, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 31
    .line 32
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->y(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->d()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 52
    .line 53
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 76
    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 34
    .line 35
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 6
    .line 7
    const/16 p0, 0x100

    .line 8
    .line 9
    and-int/2addr p1, p0

    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    sput-boolean p0, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 16
    .line 17
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
