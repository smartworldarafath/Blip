.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;,
        Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static o:I = 0x3e8

.field public static p:Z = true


# instance fields
.field public a:I

.field public final b:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field public c:I

.field public d:I

.field public e:[Landroidx/constraintlayout/solver/ArrayRow;

.field public f:Z

.field public g:[Z

.field public h:I

.field public i:I

.field public j:I

.field public final k:Landroidx/constraintlayout/solver/Cache;

.field public l:[Landroidx/constraintlayout/solver/SolverVariable;

.field public m:I

.field public n:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 10
    .line 11
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:Z

    .line 17
    .line 18
    new-array v2, v1, [Z

    .line 19
    .line 20
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:[Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:I

    .line 28
    .line 29
    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->o:I

    .line 30
    .line 31
    new-array v2, v2, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 32
    .line 33
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 34
    .line 35
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:I

    .line 36
    .line 37
    new-array v2, v1, [Landroidx/constraintlayout/solver/ArrayRow;

    .line 38
    .line 39
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->q()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroidx/constraintlayout/solver/Cache;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v3, Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 50
    .line 51
    invoke-direct {v3}, Landroidx/constraintlayout/solver/Pools$SimplePool;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v3, v2, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 55
    .line 56
    new-instance v3, Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 57
    .line 58
    invoke-direct {v3}, Landroidx/constraintlayout/solver/Pools$SimplePool;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v3, v2, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 62
    .line 63
    new-instance v3, Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 64
    .line 65
    invoke-direct {v3}, Landroidx/constraintlayout/solver/Pools$SimplePool;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v3, v2, Landroidx/constraintlayout/solver/Cache;->c:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 69
    .line 70
    new-array v1, v1, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 71
    .line 72
    iput-object v1, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 73
    .line 74
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 75
    .line 76
    new-instance v1, Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 79
    .line 80
    .line 81
    const/16 v3, 0x80

    .line 82
    .line 83
    new-array v4, v3, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 84
    .line 85
    iput-object v4, v1, Landroidx/constraintlayout/solver/PriorityGoalRow;->f:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 86
    .line 87
    new-array v3, v3, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 88
    .line 89
    iput-object v3, v1, Landroidx/constraintlayout/solver/PriorityGoalRow;->g:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 90
    .line 91
    iput v0, v1, Landroidx/constraintlayout/solver/PriorityGoalRow;->h:I

    .line 92
    .line 93
    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, v1, Landroidx/constraintlayout/solver/PriorityGoalRow;->i:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 99
    .line 100
    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 101
    .line 102
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 103
    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->n:Landroidx/constraintlayout/solver/ArrayRow;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->n:Landroidx/constraintlayout/solver/ArrayRow;

    .line 120
    .line 121
    return-void
.end method

.method public static m(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 8
    .line 9
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    .line 11
    add-float/2addr p0, v0

    .line 12
    float-to-int p0, p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->c:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->c()V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 25
    .line 26
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:I

    .line 27
    .line 28
    sget v1, Landroidx/constraintlayout/solver/LinearSystem;->o:I

    .line 29
    .line 30
    if-lt p1, v1, :cond_1

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    sput v1, Landroidx/constraintlayout/solver/LinearSystem;->o:I

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 37
    .line 38
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 47
    .line 48
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:I

    .line 49
    .line 50
    add-int/lit8 v2, v1, 0x1

    .line 51
    .line 52
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:I

    .line 53
    .line 54
    aput-object v0, p1, v1

    .line 55
    .line 56
    return-object v0
.end method

.method public final b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-ne p2, p5, :cond_0

    .line 8
    .line 9
    iget-object p3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 10
    .line 11
    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 15
    .line 16
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 20
    .line 21
    const/high16 p3, -0x40000000    # -2.0f

    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 28
    .line 29
    cmpl-float v2, p4, v2

    .line 30
    .line 31
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 32
    .line 33
    const/high16 v4, -0x40800000    # -1.0f

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 41
    .line 42
    invoke-interface {p1, p2, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 46
    .line 47
    invoke-interface {p1, p5, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 51
    .line 52
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 53
    .line 54
    .line 55
    if-gtz p3, :cond_1

    .line 56
    .line 57
    if-lez p7, :cond_6

    .line 58
    .line 59
    :cond_1
    neg-int p1, p3

    .line 60
    add-int/2addr p1, p7

    .line 61
    int-to-float p1, p1

    .line 62
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    cmpg-float v2, p4, v2

    .line 67
    .line 68
    if-gtz v2, :cond_3

    .line 69
    .line 70
    invoke-interface {v3, p1, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 74
    .line 75
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 76
    .line 77
    .line 78
    int-to-float p1, p3

    .line 79
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    cmpl-float v2, p4, v1

    .line 83
    .line 84
    if-ltz v2, :cond_4

    .line 85
    .line 86
    invoke-interface {v3, p6, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 90
    .line 91
    invoke-interface {p1, p5, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 92
    .line 93
    .line 94
    neg-int p1, p7

    .line 95
    int-to-float p1, p1

    .line 96
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    sub-float v2, v1, p4

    .line 100
    .line 101
    mul-float v5, v2, v1

    .line 102
    .line 103
    invoke-interface {v3, p1, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 104
    .line 105
    .line 106
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 107
    .line 108
    mul-float v3, v2, v4

    .line 109
    .line 110
    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 114
    .line 115
    mul-float/2addr v4, p4

    .line 116
    invoke-interface {p1, p5, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 120
    .line 121
    mul-float/2addr v1, p4

    .line 122
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 123
    .line 124
    .line 125
    if-gtz p3, :cond_5

    .line 126
    .line 127
    if-lez p7, :cond_6

    .line 128
    .line 129
    :cond_5
    neg-int p1, p3

    .line 130
    int-to-float p1, p1

    .line 131
    mul-float/2addr p1, v2

    .line 132
    int-to-float p2, p7

    .line 133
    mul-float/2addr p2, p4

    .line 134
    add-float/2addr p2, p1

    .line 135
    iput p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 136
    .line 137
    :cond_6
    :goto_0
    const/16 p1, 0x8

    .line 138
    .line 139
    if-eq p8, p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/solver/ArrayRow;->b(Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final c(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/2addr v2, v3

    .line 9
    iget v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->j:I

    .line 10
    .line 11
    if-ge v2, v4, :cond_0

    .line 12
    .line 13
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 17
    .line 18
    if-lt v2, v4, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->n()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 24
    .line 25
    if-nez v2, :cond_1f

    .line 26
    .line 27
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 30
    .line 31
    array-length v5, v5

    .line 32
    const/4 v6, -0x1

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    const/4 v5, 0x0

    .line 37
    :goto_0
    if-nez v5, :cond_9

    .line 38
    .line 39
    iget-object v7, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 40
    .line 41
    invoke-interface {v7}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->a()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v8, 0x0

    .line 46
    :goto_1
    if-ge v8, v7, :cond_5

    .line 47
    .line 48
    iget-object v9, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 49
    .line 50
    invoke-interface {v9, v8}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    iget v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 55
    .line 56
    if-ne v10, v6, :cond_3

    .line 57
    .line 58
    iget-boolean v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->f:Z

    .line 59
    .line 60
    if-eqz v10, :cond_4

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-lez v7, :cond_8

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_7

    .line 83
    .line 84
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Landroidx/constraintlayout/solver/SolverVariable;

    .line 89
    .line 90
    iget-boolean v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->f:Z

    .line 91
    .line 92
    if-eqz v9, :cond_6

    .line 93
    .line 94
    invoke-virtual {v1, v8, v3}, Landroidx/constraintlayout/solver/ArrayRow;->g(Landroidx/constraintlayout/solver/SolverVariable;Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    iget-object v9, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 99
    .line 100
    iget v8, v8, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 101
    .line 102
    aget-object v8, v9, v8

    .line 103
    .line 104
    invoke-virtual {v1, v8, v3}, Landroidx/constraintlayout/solver/ArrayRow;->h(Landroidx/constraintlayout/solver/ArrayRow;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    move v5, v3

    .line 113
    goto :goto_0

    .line 114
    :cond_9
    :goto_3
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    if-nez v2, :cond_a

    .line 118
    .line 119
    iget v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 120
    .line 121
    cmpl-float v2, v2, v5

    .line 122
    .line 123
    if-nez v2, :cond_a

    .line 124
    .line 125
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 126
    .line 127
    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->a()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_a

    .line 132
    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :cond_a
    iget v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 136
    .line 137
    cmpg-float v7, v2, v5

    .line 138
    .line 139
    if-gez v7, :cond_b

    .line 140
    .line 141
    const/high16 v7, -0x40800000    # -1.0f

    .line 142
    .line 143
    mul-float/2addr v2, v7

    .line 144
    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 145
    .line 146
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 147
    .line 148
    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->c()V

    .line 149
    .line 150
    .line 151
    :cond_b
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 152
    .line 153
    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->a()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v7, 0x0

    .line 158
    move v11, v5

    .line 159
    move v13, v11

    .line 160
    move-object v9, v7

    .line 161
    move-object v10, v9

    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    const/4 v14, 0x0

    .line 165
    :goto_4
    sget-object v15, Landroidx/constraintlayout/solver/SolverVariable$Type;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 166
    .line 167
    if-ge v8, v2, :cond_14

    .line 168
    .line 169
    iget-object v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 170
    .line 171
    invoke-interface {v4, v8}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->d(I)F

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    move/from16 v16, v5

    .line 176
    .line 177
    iget-object v5, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 178
    .line 179
    invoke-interface {v5, v8}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 184
    .line 185
    if-ne v6, v15, :cond_f

    .line 186
    .line 187
    if-nez v9, :cond_d

    .line 188
    .line 189
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 190
    .line 191
    if-gt v6, v3, :cond_c

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_c
    const/4 v12, 0x0

    .line 195
    :goto_5
    move v11, v4

    .line 196
    move-object v9, v5

    .line 197
    goto :goto_9

    .line 198
    :cond_d
    cmpl-float v6, v11, v4

    .line 199
    .line 200
    if-lez v6, :cond_e

    .line 201
    .line 202
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 203
    .line 204
    if-gt v6, v3, :cond_c

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_e
    if-nez v12, :cond_13

    .line 208
    .line 209
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 210
    .line 211
    if-gt v6, v3, :cond_13

    .line 212
    .line 213
    :goto_6
    move v12, v3

    .line 214
    goto :goto_5

    .line 215
    :cond_f
    if-nez v9, :cond_13

    .line 216
    .line 217
    cmpg-float v6, v4, v16

    .line 218
    .line 219
    if-gez v6, :cond_13

    .line 220
    .line 221
    if-nez v10, :cond_11

    .line 222
    .line 223
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 224
    .line 225
    if-gt v6, v3, :cond_10

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_10
    const/4 v14, 0x0

    .line 229
    :goto_7
    move v13, v4

    .line 230
    move-object v10, v5

    .line 231
    goto :goto_9

    .line 232
    :cond_11
    cmpl-float v6, v13, v4

    .line 233
    .line 234
    if-lez v6, :cond_12

    .line 235
    .line 236
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 237
    .line 238
    if-gt v6, v3, :cond_10

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_12
    if-nez v14, :cond_13

    .line 242
    .line 243
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 244
    .line 245
    if-gt v6, v3, :cond_13

    .line 246
    .line 247
    :goto_8
    move v14, v3

    .line 248
    goto :goto_7

    .line 249
    :cond_13
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 250
    .line 251
    move/from16 v5, v16

    .line 252
    .line 253
    const/4 v6, -0x1

    .line 254
    goto :goto_4

    .line 255
    :cond_14
    move/from16 v16, v5

    .line 256
    .line 257
    if-eqz v9, :cond_15

    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_15
    move-object v9, v10

    .line 261
    :goto_a
    if-nez v9, :cond_16

    .line 262
    .line 263
    move v2, v3

    .line 264
    goto :goto_b

    .line 265
    :cond_16
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/ArrayRow;->f(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 266
    .line 267
    .line 268
    const/4 v2, 0x0

    .line 269
    :goto_b
    iget-object v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 270
    .line 271
    invoke-interface {v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->a()I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-nez v4, :cond_17

    .line 276
    .line 277
    iput-boolean v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 278
    .line 279
    :cond_17
    if-eqz v2, :cond_1c

    .line 280
    .line 281
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 282
    .line 283
    add-int/2addr v2, v3

    .line 284
    iget v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 285
    .line 286
    if-lt v2, v4, :cond_18

    .line 287
    .line 288
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->n()V

    .line 289
    .line 290
    .line 291
    :cond_18
    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->k:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iget v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 298
    .line 299
    add-int/2addr v4, v3

    .line 300
    iput v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 301
    .line 302
    iget v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 303
    .line 304
    add-int/2addr v5, v3

    .line 305
    iput v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 306
    .line 307
    iput v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 308
    .line 309
    iget-object v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 310
    .line 311
    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 312
    .line 313
    aput-object v2, v5, v4

    .line 314
    .line 315
    iput-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 316
    .line 317
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->h(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 318
    .line 319
    .line 320
    iget-object v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->n:Landroidx/constraintlayout/solver/ArrayRow;

    .line 321
    .line 322
    iput-object v7, v4, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 323
    .line 324
    iget-object v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 325
    .line 326
    invoke-interface {v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->clear()V

    .line 327
    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    :goto_c
    iget-object v6, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 331
    .line 332
    invoke-interface {v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->a()I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-ge v5, v6, :cond_19

    .line 337
    .line 338
    iget-object v6, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 339
    .line 340
    invoke-interface {v6, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    iget-object v8, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 345
    .line 346
    invoke-interface {v8, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->d(I)F

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    iget-object v9, v4, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 351
    .line 352
    invoke-interface {v9, v6, v8, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->e(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 353
    .line 354
    .line 355
    add-int/lit8 v5, v5, 0x1

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_19
    iget-object v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->n:Landroidx/constraintlayout/solver/ArrayRow;

    .line 359
    .line 360
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->p(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 361
    .line 362
    .line 363
    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 364
    .line 365
    const/4 v5, -0x1

    .line 366
    if-ne v4, v5, :cond_1d

    .line 367
    .line 368
    iget-object v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 369
    .line 370
    if-ne v4, v2, :cond_1a

    .line 371
    .line 372
    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/solver/ArrayRow;->e([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    if-eqz v2, :cond_1a

    .line 377
    .line 378
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->f(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 379
    .line 380
    .line 381
    :cond_1a
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 382
    .line 383
    if-nez v2, :cond_1b

    .line 384
    .line 385
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 386
    .line 387
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/SolverVariable;->d(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 388
    .line 389
    .line 390
    :cond_1b
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 391
    .line 392
    sub-int/2addr v2, v3

    .line 393
    iput v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_1c
    const/4 v3, 0x0

    .line 397
    :cond_1d
    :goto_d
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 398
    .line 399
    if-eqz v2, :cond_20

    .line 400
    .line 401
    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 402
    .line 403
    if-eq v2, v15, :cond_1e

    .line 404
    .line 405
    iget v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 406
    .line 407
    cmpg-float v2, v2, v16

    .line 408
    .line 409
    if-ltz v2, :cond_20

    .line 410
    .line 411
    :cond_1e
    move v4, v3

    .line 412
    goto :goto_e

    .line 413
    :cond_1f
    const/4 v4, 0x0

    .line 414
    :goto_e
    if-nez v4, :cond_20

    .line 415
    .line 416
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->h(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 417
    .line 418
    .line 419
    :cond_20
    :goto_f
    return-void
.end method

.method public final d(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 4

    .line 1
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    int-to-float p0, p2

    .line 8
    iput p0, p1, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 9
    .line 10
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->f:Z

    .line 11
    .line 12
    iget p0, p1, Landroidx/constraintlayout/solver/SolverVariable;->k:I

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    move v0, p2

    .line 16
    :goto_0
    if-ge v0, p0, :cond_0

    .line 17
    .line 18
    iget-object v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->j:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->g(Landroidx/constraintlayout/solver/SolverVariable;Z)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->k:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-eq v0, v2, :cond_5

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 34
    .line 35
    aget-object v0, v3, v0

    .line 36
    .line 37
    iget-boolean v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    int-to-float p0, p2

    .line 42
    iput p0, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 46
    .line 47
    invoke-interface {v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->a()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 54
    .line 55
    int-to-float p0, p2

    .line 56
    iput p0, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-gez p2, :cond_4

    .line 64
    .line 65
    mul-int/2addr p2, v2

    .line 66
    int-to-float p2, p2

    .line 67
    iput p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 68
    .line 69
    iget-object p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 70
    .line 71
    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    .line 73
    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    int-to-float p2, p2

    .line 78
    iput p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 79
    .line 80
    iget-object p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 81
    .line 82
    const/high16 v1, -0x40800000    # -1.0f

    .line 83
    .line 84
    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 96
    .line 97
    int-to-float p2, p2

    .line 98
    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 99
    .line 100
    iput p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 101
    .line 102
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    if-ne p4, v2, :cond_1

    .line 6
    .line 7
    iget-boolean v3, p2, Landroidx/constraintlayout/solver/SolverVariable;->f:Z

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 12
    .line 13
    const/4 v4, -0x1

    .line 14
    if-ne v3, v4, :cond_1

    .line 15
    .line 16
    iget p0, p2, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 17
    .line 18
    int-to-float p2, p3

    .line 19
    add-float/2addr p0, p2

    .line 20
    iput p0, p1, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 21
    .line 22
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->f:Z

    .line 23
    .line 24
    iget p0, p1, Landroidx/constraintlayout/solver/SolverVariable;->k:I

    .line 25
    .line 26
    move p2, v0

    .line 27
    :goto_0
    if-ge p2, p0, :cond_0

    .line 28
    .line 29
    iget-object p3, p1, Landroidx/constraintlayout/solver/SolverVariable;->j:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 30
    .line 31
    aget-object p3, p3, p2

    .line 32
    .line 33
    invoke-virtual {p3, p1, v0}, Landroidx/constraintlayout/solver/ArrayRow;->g(Landroidx/constraintlayout/solver/SolverVariable;Z)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->k:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    if-gez p3, :cond_2

    .line 49
    .line 50
    mul-int/lit8 p3, p3, -0x1

    .line 51
    .line 52
    move v0, v1

    .line 53
    :cond_2
    int-to-float p3, p3

    .line 54
    iput p3, v3, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 55
    .line 56
    :cond_3
    iget-object p3, v3, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 57
    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    .line 60
    const/high16 v4, -0x40800000    # -1.0f

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    invoke-interface {p3, p1, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v3, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 68
    .line 69
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v3, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 77
    .line 78
    invoke-interface {p1, p2, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 79
    .line 80
    .line 81
    :goto_1
    if-eq p4, v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v3, p0, p4}, Landroidx/constraintlayout/solver/ArrayRow;->b(Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->l()Landroidx/constraintlayout/solver/SolverVariable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->f(Landroidx/constraintlayout/solver/SolverVariable;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/LinearSystem;->i(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final g(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->l()Landroidx/constraintlayout/solver/SolverVariable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->d(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->f(Landroidx/constraintlayout/solver/SolverVariable;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/LinearSystem;->i(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final h(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 4
    .line 5
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-object v0, v1, v2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, v3, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->b(Landroidx/constraintlayout/solver/ArrayRow;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    aget-object v0, v1, v2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, v3, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->b(Landroidx/constraintlayout/solver/ArrayRow;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 31
    .line 32
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 33
    .line 34
    aput-object p1, v0, v1

    .line 35
    .line 36
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 37
    .line 38
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->d(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final i(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->l:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->h:[F

    .line 19
    .line 20
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 25
    .line 26
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    iput v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 31
    .line 32
    iput v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 33
    .line 34
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 39
    .line 40
    aput-object v0, p1, v2

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->i:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 45
    .line 46
    iput-object v0, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 50
    .line 51
    .line 52
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 53
    .line 54
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    .line 56
    aput v2, v1, p1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow;->i(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 9
    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->n()V

    .line 13
    .line 14
    .line 15
    :cond_1
    instance-of v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 29
    .line 30
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 34
    .line 35
    if-eq p1, v1, :cond_4

    .line 36
    .line 37
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 38
    .line 39
    if-gt p1, v3, :cond_4

    .line 40
    .line 41
    iget-object v3, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 42
    .line 43
    aget-object v3, v3, p1

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v0

    .line 49
    :cond_4
    :goto_0
    if-eq p1, v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->c()V

    .line 52
    .line 53
    .line 54
    :cond_5
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iput p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 59
    .line 60
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 65
    .line 66
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 67
    .line 68
    sget-object p0, Landroidx/constraintlayout/solver/SolverVariable$Type;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 69
    .line 70
    iput-object p0, v0, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 71
    .line 72
    iget-object p0, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 73
    .line 74
    aput-object v0, p0, p1

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public final k()Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 27
    .line 28
    iget-object p0, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 29
    .line 30
    invoke-interface {p0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->clear()V

    .line 31
    .line 32
    .line 33
    iput v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 34
    .line 35
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->a()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iput-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 55
    .line 56
    iget-object p0, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 57
    .line 58
    invoke-interface {p0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->clear()V

    .line 59
    .line 60
    .line 61
    iput v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 62
    .line 63
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 64
    .line 65
    :goto_0
    return-object v0
.end method

.method public final l()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->k:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 23
    .line 24
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 29
    .line 30
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 35
    .line 36
    aput-object v0, p0, v1

    .line 37
    .line 38
    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 20
    .line 21
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 28
    .line 29
    iput-object v1, v0, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 30
    .line 31
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 32
    .line 33
    new-array v1, v0, [Z

    .line 34
    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:[Z

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:I

    .line 40
    .line 41
    return-void
.end method

.method public final o(Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 5
    .line 6
    if-ge v2, v3, :cond_d

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    iget-object v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 13
    .line 14
    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 15
    .line 16
    sget-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_8

    .line 21
    .line 22
    :cond_0
    iget v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    cmpg-float v3, v3, v4

    .line 26
    .line 27
    if-gez v3, :cond_c

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_1
    if-nez v2, :cond_d

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    add-int/2addr v3, v6

    .line 35
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, -0x1

    .line 40
    const/4 v11, -0x1

    .line 41
    const/4 v12, 0x0

    .line 42
    :goto_2
    iget v13, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 43
    .line 44
    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 45
    .line 46
    if-ge v9, v13, :cond_9

    .line 47
    .line 48
    iget-object v13, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 49
    .line 50
    aget-object v13, v13, v9

    .line 51
    .line 52
    iget-object v15, v13, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 53
    .line 54
    iget-object v15, v15, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 55
    .line 56
    if-ne v15, v5, :cond_1

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_1
    iget-boolean v15, v13, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 60
    .line 61
    if-eqz v15, :cond_2

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_2
    iget v15, v13, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 65
    .line 66
    cmpg-float v15, v15, v4

    .line 67
    .line 68
    if-gez v15, :cond_8

    .line 69
    .line 70
    move v15, v6

    .line 71
    :goto_3
    iget v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 72
    .line 73
    if-ge v15, v1, :cond_8

    .line 74
    .line 75
    iget-object v1, v14, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 76
    .line 77
    aget-object v1, v1, v15

    .line 78
    .line 79
    move/from16 v16, v4

    .line 80
    .line 81
    iget-object v4, v13, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 82
    .line 83
    invoke-interface {v4, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->f(Landroidx/constraintlayout/solver/SolverVariable;)F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    cmpg-float v17, v4, v16

    .line 88
    .line 89
    if-gtz v17, :cond_3

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_3
    const/4 v6, 0x0

    .line 93
    :goto_4
    const/16 v7, 0x9

    .line 94
    .line 95
    if-ge v6, v7, :cond_7

    .line 96
    .line 97
    iget-object v7, v1, Landroidx/constraintlayout/solver/SolverVariable;->g:[F

    .line 98
    .line 99
    aget v7, v7, v6

    .line 100
    .line 101
    div-float/2addr v7, v4

    .line 102
    cmpg-float v18, v7, v8

    .line 103
    .line 104
    if-gez v18, :cond_4

    .line 105
    .line 106
    if-eq v6, v12, :cond_5

    .line 107
    .line 108
    :cond_4
    if-le v6, v12, :cond_6

    .line 109
    .line 110
    :cond_5
    move v12, v6

    .line 111
    move v8, v7

    .line 112
    move v10, v9

    .line 113
    move v11, v15

    .line 114
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 118
    .line 119
    move/from16 v4, v16

    .line 120
    .line 121
    const/4 v6, 0x1

    .line 122
    goto :goto_3

    .line 123
    :cond_8
    :goto_6
    move/from16 v16, v4

    .line 124
    .line 125
    add-int/lit8 v9, v9, 0x1

    .line 126
    .line 127
    move/from16 v4, v16

    .line 128
    .line 129
    const/4 v6, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_9
    move/from16 v16, v4

    .line 132
    .line 133
    const/4 v1, -0x1

    .line 134
    if-eq v10, v1, :cond_a

    .line 135
    .line 136
    iget-object v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 137
    .line 138
    aget-object v4, v4, v10

    .line 139
    .line 140
    iget-object v6, v4, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 141
    .line 142
    iput v1, v6, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 143
    .line 144
    iget-object v1, v14, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 145
    .line 146
    aget-object v1, v1, v11

    .line 147
    .line 148
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/ArrayRow;->f(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v4, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 152
    .line 153
    iput v10, v1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/SolverVariable;->d(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_a
    const/4 v2, 0x1

    .line 160
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 161
    .line 162
    div-int/lit8 v1, v1, 0x2

    .line 163
    .line 164
    if-le v3, v1, :cond_b

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    :cond_b
    move/from16 v4, v16

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->p(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 176
    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    :goto_9
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 180
    .line 181
    if-ge v1, v2, :cond_e

    .line 182
    .line 183
    iget-object v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 184
    .line 185
    aget-object v2, v2, v1

    .line 186
    .line 187
    iget-object v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 188
    .line 189
    iget v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 190
    .line 191
    iput v2, v3, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_e
    return-void
.end method

.method public final p(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:[Z

    .line 8
    .line 9
    aput-boolean v0, v2, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    move v2, v1

    .line 16
    :cond_1
    :goto_1
    if-nez v1, :cond_b

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 21
    .line 22
    mul-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    if-lt v2, v4, :cond_2

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    move-object v4, p1

    .line 29
    check-cast v4, Landroidx/constraintlayout/solver/ArrayRow;

    .line 30
    .line 31
    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 32
    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:[Z

    .line 36
    .line 37
    move-object v5, p1

    .line 38
    check-cast v5, Landroidx/constraintlayout/solver/ArrayRow;

    .line 39
    .line 40
    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 41
    .line 42
    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 43
    .line 44
    aput-boolean v3, v4, v5

    .line 45
    .line 46
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:[Z

    .line 47
    .line 48
    invoke-interface {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem$Row;->a([Z)Landroidx/constraintlayout/solver/SolverVariable;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_5

    .line 53
    .line 54
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:[Z

    .line 55
    .line 56
    iget v6, v4, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 57
    .line 58
    aget-boolean v7, v5, v6

    .line 59
    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    aput-boolean v3, v5, v6

    .line 64
    .line 65
    :cond_5
    if-eqz v4, :cond_a

    .line 66
    .line 67
    const/4 v3, -0x1

    .line 68
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 69
    .line 70
    .line 71
    move v6, v0

    .line 72
    move v7, v3

    .line 73
    :goto_2
    iget v8, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 74
    .line 75
    if-ge v6, v8, :cond_9

    .line 76
    .line 77
    iget-object v8, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 78
    .line 79
    aget-object v8, v8, v6

    .line 80
    .line 81
    iget-object v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 82
    .line 83
    iget-object v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 84
    .line 85
    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 86
    .line 87
    if-ne v9, v10, :cond_6

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    iget-boolean v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 91
    .line 92
    if-eqz v9, :cond_7

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    iget-object v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 96
    .line 97
    invoke-interface {v9, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->g(Landroidx/constraintlayout/solver/SolverVariable;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_8

    .line 102
    .line 103
    iget-object v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 104
    .line 105
    invoke-interface {v9, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->f(Landroidx/constraintlayout/solver/SolverVariable;)F

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/4 v10, 0x0

    .line 110
    cmpg-float v10, v9, v10

    .line 111
    .line 112
    if-gez v10, :cond_8

    .line 113
    .line 114
    iget v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 115
    .line 116
    neg-float v8, v8

    .line 117
    div-float/2addr v8, v9

    .line 118
    cmpg-float v9, v8, v5

    .line 119
    .line 120
    if-gez v9, :cond_8

    .line 121
    .line 122
    move v7, v6

    .line 123
    move v5, v8

    .line 124
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    if-le v7, v3, :cond_1

    .line 128
    .line 129
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 130
    .line 131
    aget-object v5, v5, v7

    .line 132
    .line 133
    iget-object v6, v5, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 134
    .line 135
    iput v3, v6, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 136
    .line 137
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/solver/ArrayRow;->f(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v5, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 141
    .line 142
    iput v7, v3, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 143
    .line 144
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/solver/SolverVariable;->d(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_a
    move v1, v3

    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_b
    :goto_4
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 10
    .line 11
    array-length v4, v0

    .line 12
    if-ge v3, v4, :cond_3

    .line 13
    .line 14
    aget-object v0, v0, v3

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v4, v2, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 19
    .line 20
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->b(Landroidx/constraintlayout/solver/ArrayRow;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 24
    .line 25
    aput-object v1, v0, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 31
    .line 32
    array-length v4, v0

    .line 33
    if-ge v3, v4, :cond_3

    .line 34
    .line 35
    aget-object v0, v0, v3

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v4, v2, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/solver/Pools$SimplePool;->b(Landroidx/constraintlayout/solver/ArrayRow;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 45
    .line 46
    aput-object v1, v0, v3

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    return-void
.end method

.method public final r()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 4
    .line 5
    iget-object v3, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ge v1, v4, :cond_1

    .line 9
    .line 10
    aget-object v2, v3, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/solver/Cache;->c:Landroidx/constraintlayout/solver/Pools$SimplePool;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 23
    .line 24
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    array-length v5, v3

    .line 30
    if-le v4, v5, :cond_2

    .line 31
    .line 32
    array-length v4, v3

    .line 33
    :cond_2
    move v5, v0

    .line 34
    :goto_1
    if-ge v5, v4, :cond_4

    .line 35
    .line 36
    aget-object v6, v3, v5

    .line 37
    .line 38
    iget v7, v1, Landroidx/constraintlayout/solver/Pools$SimplePool;->b:I

    .line 39
    .line 40
    iget-object v8, v1, Landroidx/constraintlayout/solver/Pools$SimplePool;->a:[Ljava/lang/Object;

    .line 41
    .line 42
    array-length v9, v8

    .line 43
    if-ge v7, v9, :cond_3

    .line 44
    .line 45
    aput-object v6, v8, v7

    .line 46
    .line 47
    add-int/lit8 v7, v7, 0x1

    .line 48
    .line 49
    iput v7, v1, Landroidx/constraintlayout/solver/Pools$SimplePool;->b:I

    .line 50
    .line 51
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:I

    .line 55
    .line 56
    iget-object v1, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 65
    .line 66
    iput v0, v1, Landroidx/constraintlayout/solver/PriorityGoalRow;->h:I

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    iput v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 73
    .line 74
    move v1, v0

    .line 75
    :goto_2
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 76
    .line 77
    if-ge v1, v3, :cond_5

    .line 78
    .line 79
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 80
    .line 81
    aget-object v3, v3, v1

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->q()V

    .line 90
    .line 91
    .line 92
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 93
    .line 94
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->p:Z

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->n:Landroidx/constraintlayout/solver/ArrayRow;

    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->n:Landroidx/constraintlayout/solver/ArrayRow;

    .line 112
    .line 113
    return-void
.end method
