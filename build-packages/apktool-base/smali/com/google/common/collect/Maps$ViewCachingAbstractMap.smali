.class abstract Lcom/google/common/collect/Maps$ViewCachingAbstractMap;
.super Ljava/util/AbstractMap;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCachingAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient j:Ljava/util/Set;

.field public transient k:Ljava/util/Collection;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->j:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->j:Ljava/util/Set;

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->k:Ljava/util/Collection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/common/collect/Maps$Values;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/AbstractMap;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->k:Ljava/util/Collection;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method
