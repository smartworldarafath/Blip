.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;
.super Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b()Lcom/google/common/collect/ListMultimap;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/TreeMap;

    .line 2
    .line 3
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->j:Lcom/google/common/collect/NaturalOrdering;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 23
    .line 24
    .line 25
    iput-object p0, v1, Lcom/google/common/collect/AbstractMapBasedMultimap;->m:Ljava/util/TreeMap;

    .line 26
    .line 27
    iput-object v0, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->o:Lcom/google/common/base/Supplier;

    .line 28
    .line 29
    return-object v1
.end method
