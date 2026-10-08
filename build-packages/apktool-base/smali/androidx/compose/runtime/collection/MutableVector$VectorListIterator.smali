.class final Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/collection/MutableVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VectorListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/List;

.field public k:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 13
    .line 14
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ge v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, -0x1

    .line 4
    .line 5
    return p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->j:Ljava/util/List;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->k:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method
