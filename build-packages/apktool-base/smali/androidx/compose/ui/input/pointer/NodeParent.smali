.class public Landroidx/compose/ui/input/pointer/NodeParent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/runtime/collection/MutableVector;

.field public final b:Landroidx/collection/MutableObjectList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [Landroidx/compose/ui/input/pointer/Node;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->b:Landroidx/collection/MutableObjectList;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v2, p0, :cond_2

    .line 11
    .line 12
    aget-object v4, v0, v2

    .line 13
    .line 14
    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    .line 15
    .line 16
    invoke-virtual {v4, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v3, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 28
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v3
.end method

.method public b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 4
    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    :goto_0
    const/4 v0, -0x1

    .line 8
    if-ge v0, p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v0, v0, p1

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 17
    .line 18
    iget v0, v0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method
