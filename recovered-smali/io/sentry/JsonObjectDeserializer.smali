.class public final Lio/sentry/JsonObjectDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/JsonObjectDeserializer$Token;,
        Lio/sentry/JsonObjectDeserializer$TokenArray;,
        Lio/sentry/JsonObjectDeserializer$TokenMap;,
        Lio/sentry/JsonObjectDeserializer$TokenName;,
        Lio/sentry/JsonObjectDeserializer$NextValue;,
        Lio/sentry/JsonObjectDeserializer$TokenPrimitive;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/JsonObjectDeserializer$Token;
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lio/sentry/JsonObjectDeserializer$Token;

    .line 22
    .line 23
    return-object p0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->d()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->d()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenMap;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenMap;->a:Ljava/util/HashMap;

    .line 48
    .line 49
    iget-object v1, v1, Lio/sentry/JsonObjectDeserializer$TokenName;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenArray;->a:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 87
    return p0
.end method

.method public final c(Lio/sentry/JsonObjectDeserializer$NextValue;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/sentry/JsonObjectDeserializer$NextValue;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 38
    .line 39
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->d()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenMap;

    .line 47
    .line 48
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenMap;->a:Ljava/util/HashMap;

    .line 49
    .line 50
    iget-object v0, v0, Lio/sentry/JsonObjectDeserializer$TokenName;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    instance-of v0, v0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$Token;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 69
    .line 70
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenArray;->a:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 76
    return p0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method
