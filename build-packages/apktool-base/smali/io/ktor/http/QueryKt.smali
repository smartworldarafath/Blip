.class public abstract Lio/ktor/http/QueryKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lio/ktor/http/ParametersBuilderImpl;Ljava/lang/String;III)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1, p2, p4}, Lio/ktor/http/QueryKt;->c(Ljava/lang/String;II)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p1, p2, p4}, Lio/ktor/http/QueryKt;->b(Ljava/lang/String;II)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-le p3, p2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Lio/ktor/util/StringValuesBuilderImpl;->a(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p1, p2, p3}, Lio/ktor/http/QueryKt;->c(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p1, p2, p3}, Lio/ktor/http/QueryKt;->b(Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-le v0, p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    add-int/lit8 p3, p3, 0x1

    .line 39
    .line 40
    invoke-static {p1, p3, p4}, Lio/ktor/http/QueryKt;->c(Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-static {p1, p3, p4}, Lio/ktor/http/QueryKt;->b(Ljava/lang/String;II)I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    check-cast p3, Ljava/util/List;

    .line 65
    .line 66
    if-nez p3, :cond_1

    .line 67
    .line 68
    new-instance p3, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public static final b(Ljava/lang/String;II)I
    .locals 1

    .line 1
    :goto_0
    if-le p2, p1, :cond_0

    .line 2
    .line 3
    add-int/lit8 v0, p2, -0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lkotlin/text/CharsKt;->c(C)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return p2
.end method

.method public static final c(Ljava/lang/String;II)I
    .locals 1

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lkotlin/text/CharsKt;->c(C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return p1
.end method
