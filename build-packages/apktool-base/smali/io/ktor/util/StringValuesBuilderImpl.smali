.class public abstract Lio/ktor/util/StringValuesBuilderImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lio/ktor/util/CaseInsensitiveMap;->r:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lio/ktor/util/CaseInsensitiveMap;->j:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lio/ktor/util/CaseInsensitiveMap;->s:[Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v1, v0, Lio/ktor/util/CaseInsensitiveMap;->k:[Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v1, Lio/ktor/util/CaseInsensitiveMap;->t:[I

    .line 18
    .line 19
    iput-object v1, v0, Lio/ktor/util/CaseInsensitiveMap;->m:[I

    .line 20
    .line 21
    iput-object v0, p0, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
