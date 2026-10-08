.class Landroidx/constraintlayout/solver/PriorityGoalRow$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/solver/SolverVariable;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/constraintlayout/solver/SolverVariable;

    .line 2
    .line 3
    check-cast p2, Landroidx/constraintlayout/solver/SolverVariable;

    .line 4
    .line 5
    iget p0, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 6
    .line 7
    iget p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 8
    .line 9
    sub-int/2addr p0, p1

    .line 10
    return p0
.end method
