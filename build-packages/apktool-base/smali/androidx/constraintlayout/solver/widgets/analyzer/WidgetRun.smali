.class public abstract Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public c:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

.field public d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public final e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

.field public f:I

.field public g:Z

.field public final h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

.field public final i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

.field public j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 15
    .line 16
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 22
    .line 23
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 29
    .line 30
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 35
    .line 36
    return-void
.end method

.method public static b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p0, v2, :cond_5

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq p0, v2, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-eq p0, v2, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    if-eq p0, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    if-eq p0, v1, :cond_1

    .line 32
    .line 33
    :goto_0
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    iget-object p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_5
    iget-object p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 48
    .line 49
    return-object p0
.end method

.method public static i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 14
    .line 15
    :goto_0
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p0, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq p0, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    if-eq p0, v0, :cond_2

    .line 32
    .line 33
    :goto_1
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_2
    iget-object p0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    iget-object p0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iput p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->h:I

    .line 14
    .line 15
    iput-object p4, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 16
    .line 17
    iget-object p0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 6
    .line 7
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-lez p2, :cond_0

    .line 14
    .line 15
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :cond_0
    if-eq p0, p1, :cond_3

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 23
    .line 24
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 25
    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-lez p2, :cond_2

    .line 31
    .line 32
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :cond_2
    if-eq p0, p1, :cond_3

    .line 37
    .line 38
    return p0

    .line 39
    :cond_3
    return p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 8
    .line 9
    int-to-long v0, p0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 12

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 10
    .line 11
    if-eqz v2, :cond_f

    .line 12
    .line 13
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/2addr p1, v2

    .line 26
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    sub-int/2addr v2, p2

    .line 33
    sub-int p2, v2, p1

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 36
    .line 37
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 38
    .line 39
    const/high16 v5, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-nez v4, :cond_a

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    .line 47
    if-ne v4, v6, :cond_a

    .line 48
    .line 49
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 50
    .line 51
    if-eqz v4, :cond_9

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    if-eq v4, v7, :cond_8

    .line 55
    .line 56
    const/4 v8, 0x2

    .line 57
    if-eq v4, v8, :cond_5

    .line 58
    .line 59
    const/4 v8, 0x3

    .line 60
    if-eq v4, v8, :cond_1

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 65
    .line 66
    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    .line 68
    iget-object v10, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    .line 70
    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    .line 72
    if-ne v11, v6, :cond_2

    .line 73
    .line 74
    iget v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 75
    .line 76
    if-ne v11, v8, :cond_2

    .line 77
    .line 78
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    if-ne v11, v6, :cond_2

    .line 81
    .line 82
    iget v6, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 83
    .line 84
    if-ne v6, v8, :cond_2

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    if-nez p3, :cond_3

    .line 88
    .line 89
    move-object v9, v10

    .line 90
    :cond_3
    iget-object v6, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 91
    .line 92
    iget-boolean v8, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 93
    .line 94
    if-eqz v8, :cond_a

    .line 95
    .line 96
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 97
    .line 98
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 99
    .line 100
    if-ne p3, v7, :cond_4

    .line 101
    .line 102
    int-to-float v6, v6

    .line 103
    div-float/2addr v6, v4

    .line 104
    add-float/2addr v6, v5

    .line 105
    float-to-int v4, v6

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    int-to-float v6, v6

    .line 108
    mul-float/2addr v4, v6

    .line 109
    add-float/2addr v4, v5

    .line 110
    float-to-int v4, v4

    .line 111
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 116
    .line 117
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 118
    .line 119
    if-eqz v6, :cond_a

    .line 120
    .line 121
    if-nez p3, :cond_6

    .line 122
    .line 123
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 127
    .line 128
    :goto_1
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 129
    .line 130
    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 131
    .line 132
    if-eqz v7, :cond_a

    .line 133
    .line 134
    if-nez p3, :cond_7

    .line 135
    .line 136
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    .line 140
    .line 141
    :goto_2
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 142
    .line 143
    int-to-float v6, v6

    .line 144
    mul-float/2addr v6, v4

    .line 145
    add-float/2addr v6, v5

    .line 146
    float-to-int v4, v6

    .line 147
    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_8
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 156
    .line 157
    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_9
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 174
    .line 175
    .line 176
    :cond_a
    :goto_3
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 177
    .line 178
    if-nez v4, :cond_b

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_b
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 182
    .line 183
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 184
    .line 185
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 186
    .line 187
    if-ne v4, p2, :cond_c

    .line 188
    .line 189
    invoke-virtual {v7, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_c
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 197
    .line 198
    if-nez p3, :cond_d

    .line 199
    .line 200
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_d
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 204
    .line 205
    :goto_4
    if-ne v0, v1, :cond_e

    .line 206
    .line 207
    iget p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 208
    .line 209
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 210
    .line 211
    move p0, v5

    .line 212
    :cond_e
    sub-int/2addr v2, p1

    .line 213
    sub-int/2addr v2, v4

    .line 214
    int-to-float p1, p1

    .line 215
    add-float/2addr p1, v5

    .line 216
    int-to-float p2, v2

    .line 217
    mul-float/2addr p2, p0

    .line 218
    add-float/2addr p2, p1

    .line 219
    float-to-int p0, p2

    .line 220
    invoke-virtual {v7, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 221
    .line 222
    .line 223
    iget p0, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 224
    .line 225
    iget p1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 226
    .line 227
    add-int/2addr p0, p1

    .line 228
    invoke-virtual {v6, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 229
    .line 230
    .line 231
    :cond_f
    :goto_5
    return-void
.end method
