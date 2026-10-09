.class public abstract Lcom/google/common/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient j:Lcom/google/common/collect/ImmutableSet;

.field public transient k:Lcom/google/common/collect/ImmutableSet;

.field public transient l:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method public static a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Ljava/util/SortedMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/google/common/collect/ImmutableMap;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of v0, p0, Ljava/util/Collection;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x4

    .line 29
    :goto_0
    new-instance v1, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    check-cast p0, Ljava/util/Set;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableMap$Builder;->c(Ljava/util/Set;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static d()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->p:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap;->j:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/common/collect/RegularImmutableMap;->n:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v3, v0, Lcom/google/common/collect/RegularImmutableMap;->o:I

    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap;->j:Lcom/google/common/collect/ImmutableSet;

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/common/collect/ImmutableSet;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap;->k:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, v0, Lcom/google/common/collect/RegularImmutableMap;->o:I

    .line 12
    .line 13
    iget-object v4, v0, Lcom/google/common/collect/RegularImmutableMap;->n:[Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/google/common/collect/ImmutableMap;->k:Lcom/google/common/collect/ImmutableSet;

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->e()Lcom/google/common/collect/ImmutableCollection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final e()Lcom/google/common/collect/ImmutableCollection;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap;->l:Lcom/google/common/collect/ImmutableCollection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iget v3, v0, Lcom/google/common/collect/RegularImmutableMap;->o:I

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap;->n:[Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap;->l:Lcom/google/common/collect/ImmutableCollection;

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->b()Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->b()Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/Sets;->c(Ljava/util/Set;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->c()Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "size"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->a(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    int-to-long v2, v0

    .line 13
    const-wide/16 v4, 0x8

    .line 14
    .line 15
    mul-long/2addr v2, v4

    .line 16
    const-wide/32 v4, 0x40000000

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    long-to-int v0, v2

    .line 24
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x7b

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x1

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const-string v0, ", "

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x3d

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/16 p0, 0x7d

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->e()Lcom/google/common/collect/ImmutableCollection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
