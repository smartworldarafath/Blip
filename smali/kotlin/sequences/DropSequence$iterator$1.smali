.class public final Lkotlin/sequences/DropSequence$iterator$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/Iterator;

.field public k:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/DropSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lkotlin/sequences/DropSequence;->a:Lkotlin/sequences/Sequence;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->j:Ljava/util/Iterator;

    .line 11
    .line 12
    iget p1, p1, Lkotlin/sequences/DropSequence;->b:I

    .line 13
    .line 14
    iput p1, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/sequences/DropSequence$iterator$1;->j:Ljava/util/Iterator;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/sequences/DropSequence$iterator$1;->j:Ljava/util/Iterator;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Lkotlin/sequences/DropSequence$iterator$1;->k:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Operation is not supported for read-only collection"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
