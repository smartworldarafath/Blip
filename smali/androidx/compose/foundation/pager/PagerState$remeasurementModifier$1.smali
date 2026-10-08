.class public final Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/RemeasurementModifier;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final m(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->w:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
