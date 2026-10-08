.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field public final c:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->b:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .locals 6

    .line 1
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v3, v0, v2

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->b:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 9
    .line 10
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget-object v0, v0, v3

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 28
    .line 29
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->i:Z

    .line 30
    .line 31
    iput-boolean p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->j:Z

    .line 32
    .line 33
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    if-ne p3, v0, :cond_0

    .line 38
    .line 39
    move p3, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p3, v2

    .line 42
    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    .line 44
    if-ne v4, v0, :cond_1

    .line 45
    .line 46
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v0, v2

    .line 49
    :goto_1
    const/4 v4, 0x0

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    iget p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 53
    .line 54
    cmpl-float p3, p3, v4

    .line 55
    .line 56
    if-lez p3, :cond_2

    .line 57
    .line 58
    move p3, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move p3, v2

    .line 61
    :goto_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 64
    .line 65
    cmpl-float v0, v0, v4

    .line 66
    .line 67
    if-lez v0, :cond_3

    .line 68
    .line 69
    move v0, v3

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move v0, v2

    .line 72
    :goto_3
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    .line 74
    const/4 v5, 0x4

    .line 75
    if-eqz p3, :cond_4

    .line 76
    .line 77
    aget p3, v1, v2

    .line 78
    .line 79
    if-ne p3, v5, :cond_4

    .line 80
    .line 81
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    .line 83
    :cond_4
    if-eqz v0, :cond_5

    .line 84
    .line 85
    aget p3, v1, v3

    .line 86
    .line 87
    if-ne p3, v5, :cond_5

    .line 88
    .line 89
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 90
    .line 91
    :cond_5
    invoke-interface {p1, p2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 92
    .line 93
    .line 94
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 97
    .line 98
    .line 99
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 102
    .line 103
    .line 104
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->h:Z

    .line 105
    .line 106
    iput-boolean p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 107
    .line 108
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 109
    .line 110
    iput p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 111
    .line 112
    if-lez p1, :cond_6

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_6
    move v3, v2

    .line 116
    :goto_4
    iput-boolean v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 117
    .line 118
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->j:Z

    .line 119
    .line 120
    iget-boolean p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->i:Z

    .line 121
    .line 122
    return p0
.end method

.method public final b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;II)V
    .locals 3

    .line 1
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 7
    .line 8
    iput v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 14
    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iput v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 22
    .line 23
    :goto_0
    if-gez v1, :cond_1

    .line 24
    .line 25
    iput v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 29
    .line 30
    :goto_1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->y()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
