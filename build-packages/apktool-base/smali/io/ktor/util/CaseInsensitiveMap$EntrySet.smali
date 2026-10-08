.class final Lio/ktor/util/CaseInsensitiveMap$EntrySet;
.super Lkotlin/collections/AbstractMutableSet;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/CaseInsensitiveMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractMutableSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TValue;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lio/ktor/util/CaseInsensitiveMap;


# direct methods
.method public constructor <init>(Lio/ktor/util/CaseInsensitiveMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet;->j:Lio/ktor/util/CaseInsensitiveMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string p1, "CaseInsensitiveMap.entries does not support add"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet;->j:Lio/ktor/util/CaseInsensitiveMap;

    .line 2
    .line 3
    iget p0, p0, Lio/ktor/util/CaseInsensitiveMap;->l:I

    .line 4
    .line 5
    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Lkotlin/jvm/internal/markers/KMutableMap$Entry;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 14
    .line 15
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;

    .line 2
    .line 3
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet;->j:Lio/ktor/util/CaseInsensitiveMap;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;-><init>(Lio/ktor/util/CaseInsensitiveMap;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Lkotlin/jvm/internal/markers/KMutableMap$Entry;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 14
    .line 15
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method
