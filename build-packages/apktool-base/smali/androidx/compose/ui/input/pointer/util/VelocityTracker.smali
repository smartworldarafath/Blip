.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    cmpl-float v0, v0, v1

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->g(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "maximumVelocity should be a positive value. You specified="

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 38
    .line 39
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->c(F)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->c(F)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    return-wide p0
.end method
