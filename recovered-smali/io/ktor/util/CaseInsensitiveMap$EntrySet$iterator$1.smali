.class public final Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;
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
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public j:I

.field public k:Ljava/lang/String;

.field public final synthetic l:Lio/ktor/util/CaseInsensitiveMap;


# direct methods
.method public constructor <init>(Lio/ktor/util/CaseInsensitiveMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->l:Lio/ktor/util/CaseInsensitiveMap;

    .line 5
    .line 6
    :goto_0
    iget p1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 7
    .line 8
    iget-object v0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->l:Lio/ktor/util/CaseInsensitiveMap;

    .line 9
    .line 10
    iget v1, v0, Lio/ktor/util/CaseInsensitiveMap;->n:I

    .line 11
    .line 12
    if-ge p1, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lio/ktor/util/CaseInsensitiveMap;->m:[I

    .line 15
    .line 16
    aget v1, v1, p1

    .line 17
    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lio/ktor/util/CaseInsensitiveMap;->j:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object v0, v0, v1

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    iput p1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->l:Lio/ktor/util/CaseInsensitiveMap;

    .line 4
    .line 5
    iget p0, p0, Lio/ktor/util/CaseInsensitiveMap;->n:I

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->l:Lio/ktor/util/CaseInsensitiveMap;

    .line 8
    .line 9
    iget-object v1, v0, Lio/ktor/util/CaseInsensitiveMap;->m:[I

    .line 10
    .line 11
    iget v2, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 12
    .line 13
    aget v1, v1, v2

    .line 14
    .line 15
    iget-object v2, v0, Lio/ktor/util/CaseInsensitiveMap;->j:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->k:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v3, Lio/ktor/util/CaseInsensitiveMap$MapEntry;

    .line 25
    .line 26
    iget-object v4, v0, Lio/ktor/util/CaseInsensitiveMap;->k:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v1, v4, v1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v0, v2, v1}, Lio/ktor/util/CaseInsensitiveMap$MapEntry;-><init>(Lio/ktor/util/CaseInsensitiveMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iput v1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 41
    .line 42
    :goto_0
    iget v1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 43
    .line 44
    iget v2, v0, Lio/ktor/util/CaseInsensitiveMap;->n:I

    .line 45
    .line 46
    if-ge v1, v2, :cond_1

    .line 47
    .line 48
    iget-object v2, v0, Lio/ktor/util/CaseInsensitiveMap;->m:[I

    .line 49
    .line 50
    aget v2, v2, v1

    .line 51
    .line 52
    if-ltz v2, :cond_0

    .line 53
    .line 54
    iget-object v4, v0, Lio/ktor/util/CaseInsensitiveMap;->j:[Ljava/lang/String;

    .line 55
    .line 56
    aget-object v2, v4, v2

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    iput v1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->j:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-object v3

    .line 66
    :cond_2
    invoke-static {}, Lk8;->o()V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->k:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->l:Lio/ktor/util/CaseInsensitiveMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lio/ktor/util/CaseInsensitiveMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/ktor/util/CaseInsensitiveMap$EntrySet$iterator$1;->k:Ljava/lang/String;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "next() must be called before remove()"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
