.class Lcom/google/common/collect/Multimaps$CustomListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient o:Lcom/google/common/base/Supplier;


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->m:Ljava/util/TreeMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/NavigableMap;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/SortedMap;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/SortedMap;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->m:Ljava/util/TreeMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/NavigableMap;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/SortedMap;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/SortedMap;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method
