.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/NestedScrollScope;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IJ)J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->j:I

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->b:Landroidx/compose/foundation/OverscrollEffect;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->j:I

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->m:Lma;

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 20
    .line 21
    invoke-virtual {v0, p2, p3, p1, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->c(JILma;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->k:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p2, p3, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->d(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    return-wide p0
.end method
