.class public final Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

.field public final b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p3, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 13
    .line 14
    .line 15
    const-wide v0, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr p3, v0

    .line 21
    long-to-int p3, p3

    .line 22
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
