.class public final Landroidx/work/impl/constraints/controllers/StorageNotLowController;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/controllers/BaseConstraintController<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x9

    .line 8
    .line 9
    iput p1, p0, Landroidx/work/impl/constraints/controllers/StorageNotLowController;->b:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 2
    .line 3
    iget-boolean p0, p0, Landroidx/work/Constraints;->f:Z

    .line 4
    .line 5
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/constraints/controllers/StorageNotLowController;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method
