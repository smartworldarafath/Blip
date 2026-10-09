.class public final Landroidx/compose/ui/input/pointer/InternalPointerEvent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/collection/LongSparseArray;

.field public final b:Landroidx/compose/ui/input/pointer/PointerInputEvent;

.field public c:Z


# direct methods
.method public constructor <init>(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a:Landroidx/collection/LongSparseArray;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->b:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->b:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object v4, v3

    .line 18
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 19
    .line 20
    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;->a:J

    .line 21
    .line 22
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-boolean p0, v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;->h:Z

    .line 38
    .line 39
    return p0

    .line 40
    :cond_2
    return v1
.end method
