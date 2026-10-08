.class public Landroidx/constraintlayout/solver/SolverVariableValues;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;


# instance fields
.field public a:I

.field public final b:[I

.field public c:[I

.field public d:[I

.field public e:[F

.field public f:[I

.field public g:[I

.field public h:I

.field public i:I

.field public final j:Landroidx/constraintlayout/solver/ArrayRow;

.field public final k:Landroidx/constraintlayout/solver/Cache;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 7
    .line 8
    new-array v1, v0, [I

    .line 9
    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 15
    .line 16
    new-array v1, v0, [I

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 19
    .line 20
    new-array v1, v0, [F

    .line 21
    .line 22
    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 23
    .line 24
    new-array v1, v0, [I

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    .line 39
    .line 40
    iput-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->k:Landroidx/constraintlayout/solver/Cache;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public final b(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, p1, :cond_1

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->k:Landroidx/constraintlayout/solver/Cache;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 21
    .line 22
    aget p0, p0, v1

    .line 23
    .line 24
    aget-object p0, p1, p0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 28
    .line 29
    aget v1, v4, v1

    .line 30
    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final c()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 9
    .line 10
    aget v4, v3, v1

    .line 11
    .line 12
    const/high16 v5, -0x40800000    # -1.0f

    .line 13
    .line 14
    mul-float/2addr v4, v5

    .line 15
    aput v4, v3, v1

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 18
    .line 19
    aget v1, v3, v1

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-void
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->b(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 28
    .line 29
    aput v3, v2, v0

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 32
    .line 33
    aput v3, v2, v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_2
    const/16 v2, 0x10

    .line 40
    .line 41
    if-ge v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    .line 44
    .line 45
    aput v3, v2, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 51
    .line 52
    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 53
    .line 54
    return-void
.end method

.method public final d(I)F
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    if-ne v2, p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 11
    .line 12
    aget p0, p0, v1

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 16
    .line 17
    aget v1, v3, v1

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final e(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 5

    .line 1
    const v0, -0x457ced91    # -0.001f

    .line 2
    .line 3
    .line 4
    cmpl-float v1, p2, v0

    .line 5
    .line 6
    const v2, 0x3a83126f    # 0.001f

    .line 7
    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    cmpg-float v1, p2, v2

    .line 12
    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->n(Landroidx/constraintlayout/solver/SolverVariable;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v3, -0x1

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 28
    .line 29
    aget v4, v3, v1

    .line 30
    .line 31
    add-float/2addr v4, p2

    .line 32
    aput v4, v3, v1

    .line 33
    .line 34
    cmpl-float p2, v4, v0

    .line 35
    .line 36
    if-lez p2, :cond_2

    .line 37
    .line 38
    cmpg-float p2, v4, v2

    .line 39
    .line 40
    if-gez p2, :cond_2

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    aput p2, v3, v1

    .line 44
    .line 45
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/solver/SolverVariableValues;->j(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->n(Landroidx/constraintlayout/solver/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 9
    .line 10
    aget p0, p0, p1

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final g(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->n(Landroidx/constraintlayout/solver/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final h(Landroidx/constraintlayout/solver/ArrayRow;Z)F
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/SolverVariableValues;->f(Landroidx/constraintlayout/solver/SolverVariable;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 8
    .line 9
    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->j(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 13
    .line 14
    check-cast p1, Landroidx/constraintlayout/solver/SolverVariableValues;

    .line 15
    .line 16
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 23
    .line 24
    aget v4, v4, v3

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    if-eq v4, v5, :cond_0

    .line 28
    .line 29
    iget-object v5, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 30
    .line 31
    aget v5, v5, v3

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->k:Landroidx/constraintlayout/solver/Cache;

    .line 34
    .line 35
    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 36
    .line 37
    aget-object v4, v6, v4

    .line 38
    .line 39
    mul-float/2addr v5, v0

    .line 40
    invoke-virtual {p0, v4, v5, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->e(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return v0
.end method

.method public final i(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 8

    .line 1
    const v0, -0x457ced91    # -0.001f

    .line 2
    .line 3
    .line 4
    cmpl-float v0, p2, v0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x3a83126f    # 0.001f

    .line 10
    .line 11
    .line 12
    cmpg-float v0, p2, v0

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->j(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v2, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->m(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->l(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 29
    .line 30
    .line 31
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->n(Landroidx/constraintlayout/solver/SolverVariable;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, -0x1

    .line 39
    if-eq v0, v3, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 42
    .line 43
    aput p2, p0, v0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 47
    .line 48
    add-int/2addr v0, v1

    .line 49
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 50
    .line 51
    if-lt v0, v1, :cond_4

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 88
    .line 89
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 94
    .line 95
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 96
    .line 97
    :goto_0
    if-ge v0, v1, :cond_3

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 100
    .line 101
    aput v3, v4, v0

    .line 102
    .line 103
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 104
    .line 105
    aput v3, v4, v0

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 111
    .line 112
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 113
    .line 114
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 115
    .line 116
    move v4, v2

    .line 117
    move v5, v3

    .line 118
    :goto_1
    if-ge v4, v0, :cond_8

    .line 119
    .line 120
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 121
    .line 122
    aget v6, v6, v1

    .line 123
    .line 124
    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 125
    .line 126
    if-ne v6, v7, :cond_5

    .line 127
    .line 128
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 129
    .line 130
    aput p2, p0, v1

    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    if-ge v6, v7, :cond_6

    .line 134
    .line 135
    move v5, v1

    .line 136
    :cond_6
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 137
    .line 138
    aget v1, v6, v1

    .line 139
    .line 140
    if-ne v1, v3, :cond_7

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_8
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 147
    .line 148
    if-ge v2, v0, :cond_a

    .line 149
    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 151
    .line 152
    aget v0, v0, v2

    .line 153
    .line 154
    if-ne v0, v3, :cond_9

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_a
    move v2, v3

    .line 161
    :goto_3
    invoke-virtual {p0, v2, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->m(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 165
    .line 166
    if-eq v5, v3, :cond_b

    .line 167
    .line 168
    aput v5, p2, v2

    .line 169
    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 171
    .line 172
    aget v1, v0, v5

    .line 173
    .line 174
    aput v1, v0, v2

    .line 175
    .line 176
    aput v2, v0, v5

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_b
    aput v3, p2, v2

    .line 180
    .line 181
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 182
    .line 183
    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 184
    .line 185
    if-lez v0, :cond_c

    .line 186
    .line 187
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 188
    .line 189
    aput v0, v1, v2

    .line 190
    .line 191
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_c
    aput v3, v1, v2

    .line 195
    .line 196
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 197
    .line 198
    aget v0, v0, v2

    .line 199
    .line 200
    if-eq v0, v3, :cond_d

    .line 201
    .line 202
    aput v2, p2, v0

    .line 203
    .line 204
    :cond_d
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->l(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final j(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->n(Landroidx/constraintlayout/solver/SolverVariable;)I

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
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 11
    .line 12
    rem-int/lit8 v3, v2, 0x10

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    .line 15
    .line 16
    aget v5, v4, v3

    .line 17
    .line 18
    if-ne v5, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 22
    .line 23
    aget v6, v6, v5

    .line 24
    .line 25
    if-ne v6, v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 28
    .line 29
    aget v6, v2, v5

    .line 30
    .line 31
    aput v6, v4, v3

    .line 32
    .line 33
    aput v1, v2, v5

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 37
    .line 38
    aget v4, v3, v5

    .line 39
    .line 40
    if-eq v4, v1, :cond_3

    .line 41
    .line 42
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 43
    .line 44
    aget v6, v6, v4

    .line 45
    .line 46
    if-eq v6, v2, :cond_3

    .line 47
    .line 48
    move v5, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-eq v4, v1, :cond_4

    .line 51
    .line 52
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 53
    .line 54
    aget v6, v6, v4

    .line 55
    .line 56
    if-ne v6, v2, :cond_4

    .line 57
    .line 58
    aget v2, v3, v4

    .line 59
    .line 60
    aput v2, v3, v5

    .line 61
    .line 62
    aput v1, v3, v4

    .line 63
    .line 64
    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 65
    .line 66
    aget v2, v2, v0

    .line 67
    .line 68
    iget v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 69
    .line 70
    if-ne v3, v0, :cond_5

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 73
    .line 74
    aget v3, v3, v0

    .line 75
    .line 76
    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 77
    .line 78
    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 79
    .line 80
    aput v1, v3, v0

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 83
    .line 84
    aget v4, v3, v0

    .line 85
    .line 86
    if-eq v4, v1, :cond_6

    .line 87
    .line 88
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 89
    .line 90
    aget v6, v5, v0

    .line 91
    .line 92
    aput v6, v5, v4

    .line 93
    .line 94
    :cond_6
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 95
    .line 96
    aget v4, v4, v0

    .line 97
    .line 98
    if-eq v4, v1, :cond_7

    .line 99
    .line 100
    aget v0, v3, v0

    .line 101
    .line 102
    aput v0, v3, v4

    .line 103
    .line 104
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 105
    .line 106
    add-int/lit8 v0, v0, -0x1

    .line 107
    .line 108
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 109
    .line 110
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 111
    .line 112
    add-int/lit8 v0, v0, -0x1

    .line 113
    .line 114
    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 115
    .line 116
    if-eqz p2, :cond_8

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->b(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    return v2
.end method

.method public final k(F)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 9
    .line 10
    aget v4, v3, v1

    .line 11
    .line 12
    div-float/2addr v4, p1

    .line 13
    aput v4, v3, v1

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 16
    .line 17
    aget v1, v3, v1

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-void
.end method

.method public final l(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3

    .line 1
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 2
    .line 3
    rem-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    .line 6
    .line 7
    aget v1, v0, p1

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    aput p2, v0, p1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 16
    .line 17
    aget v0, p1, v1

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    aput p2, p1, v1

    .line 24
    .line 25
    :goto_1
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 26
    .line 27
    aput v2, p0, p2

    .line 28
    .line 29
    return-void
.end method

.method public final m(ILandroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 2
    .line 3
    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 4
    .line 5
    aput v1, v0, p1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 8
    .line 9
    aput p3, v0, p1

    .line 10
    .line 11
    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    aput v0, p3, p1

    .line 15
    .line 16
    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 17
    .line 18
    aput v0, p3, p1

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 23
    .line 24
    .line 25
    iget p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->l:I

    .line 30
    .line 31
    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 36
    .line 37
    return-void
.end method

.method public final n(Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 8
    .line 9
    rem-int/lit8 v0, p1, 0x10

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    .line 12
    .line 13
    aget v0, v2, v0

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 19
    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    if-ne v2, p1, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 26
    .line 27
    aget v0, v2, v0

    .line 28
    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 32
    .line 33
    aget v2, v2, v0

    .line 34
    .line 35
    if-eq v2, p1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    if-ne v0, v1, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 42
    .line 43
    aget p0, p0, v0

    .line 44
    .line 45
    if-ne p0, p1, :cond_5

    .line 46
    .line 47
    return v0

    .line 48
    :cond_5
    :goto_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " { "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " = "

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->d(I)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " "

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/SolverVariableValues;->n(Landroidx/constraintlayout/solver/SolverVariable;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const-string v4, "[p: "

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 78
    .line 79
    aget v4, v4, v3

    .line 80
    .line 81
    const-string v5, "none"

    .line 82
    .line 83
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->k:Landroidx/constraintlayout/solver/Cache;

    .line 84
    .line 85
    const/4 v7, -0x1

    .line 86
    if-eq v4, v7, :cond_1

    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v0, v6, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 97
    .line 98
    iget-object v8, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 99
    .line 100
    iget-object v9, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 101
    .line 102
    aget v9, v9, v3

    .line 103
    .line 104
    aget v8, v8, v9

    .line 105
    .line 106
    aget-object v0, v0, v8

    .line 107
    .line 108
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_1
    const-string v4, ", n: "

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 127
    .line 128
    aget v4, v4, v3

    .line 129
    .line 130
    if-eq v4, v7, :cond_2

    .line 131
    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v0, v6, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 141
    .line 142
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 143
    .line 144
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 145
    .line 146
    aget v3, v6, v3

    .line 147
    .line 148
    aget v3, v5, v3

    .line 149
    .line 150
    aget-object v0, v0, v3

    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    goto :goto_2

    .line 160
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_2
    const-string v3, "]"

    .line 165
    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_3
    const-string p0, " }"

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0
.end method
